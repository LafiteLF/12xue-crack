/**
 * KaTeX + Markdown 渲染工具（稳定版）
 */

const mathCache = new Map();
const markdownCache = new Map();

/* =========================
   预处理 LaTeX（核心修复点）
   ========================= */

const preprocessLatex = (text) => {
   
    if (!text) return text;

    let processed = text;

    return processed;
};

/* =========================
   KaTeX 安全渲染
   ========================= */

const safeKatexRender = (text, displayMode) => {
    try {
        const html = katex.renderToString(text, {
            displayMode,
            throwOnError: false,
            strict: "ignore",
            trust: true,
            maxSize: Infinity,
            maxExpand: 1000
        });

        return html.replace(/border:[^;]+;/g, '');
    } catch (err) {
        console.warn("KaTeX渲染失败:", text);
        return `<span class="katex-error">${text}</span>`;
    }
};

/* =========================
   数学渲染（带缓存）
   ========================= */

const renderMath = (text, displayMode) => {
    text = preprocessLatex(text);

    const cacheKey = text + "_" + displayMode;

    if (mathCache.has(cacheKey)) {
        return mathCache.get(cacheKey);
    }

    const result = safeKatexRender(text, displayMode);
    mathCache.set(cacheKey, result);

    return result;
};

/* =========================
   创建 marked 数学扩展（增强版）
   ========================= */

const createMathExtension = (name, level, patterns, displayMode) => {
    return {
        name,
        level,

        start(src) {
            let min = -1;

            for (const p of patterns) {
                const idx = src.indexOf(p.start);
                if (idx !== -1 && (min === -1 || idx < min)) {
                    min = idx;
                }
            }

            return min;
        },

        tokenizer(src) {
            for (const pattern of patterns) {
                if (src.startsWith(pattern.escape)) continue;

                const match = pattern.regex.exec(src);
                if (match) {
                    return {
                        type: name,
                        raw: match[0],
                        text: match[1].trim()
                    };
                }
            }
        },

        renderer(token) {
            return renderMath(token.text, displayMode);
        }
    };
};

/* =========================
   公式匹配规则（修复版）
   ========================= */

// block（支持换行）
const blockPatterns = [
    {
        start: "$$",
        escape: "\\$$",
        regex: /^\$\$([\s\S]+?)\$\$/
    },
    // {
    //     start: "\\[",
    //     escape: "\\\\\\[",
    //     regex: /^\\\[([\s\S]+?)\\\]/
    // }
];

// inline（避免贪婪 + 支持转义）
const inlinePatterns = [
    {
        start: "$",
        escape: "\\$",
        regex: /^\$((?:\\\$|[^\$])+?)\$/
    },
    {
        start: "\\(",
        escape: "\\\\\\(",
        regex: /^\\\(((?:\\\)|[^\)])+?)\\\)/
    }
];

/* =========================
   注册 marked 插件
   ========================= */

if (typeof marked !== 'undefined') {
    marked.use({
        extensions: [
            createMathExtension("mathBlock", "block", blockPatterns, true),
            createMathExtension("mathInline", "inline", inlinePatterns, false)
        ]
    });
}

/* =========================
   Markdown + Latex 渲染
   ========================= */

/** 公式内容规范化：\\ → \，\_ → _ */
const normalizeFormulaContent = (content) => {
    if (!content || typeof content !== "string") return content;
    return content
};

/** 占位符前缀，避免与正文重复；marked 解析时不会当作 HTML 转义 */
const KATEX_PLACEHOLDER_PREFIX = '\u200B\u200B__KATEX_';
const KATEX_PLACEHOLDER_SUFFIX = '__\u200B\u200B';

/** 仅行内公式的渲染器（知识点标签、短文本专用，不会输出块级元素） */
const renderInline = (text) => {
    if (!text || typeof text !== "string") return text;

    const cacheKey = '__inline__' + text;
    if (markdownCache.has(cacheKey)) {
        return markdownCache.get(cacheKey);
    }

    let out = text;
    const htmlParts = [];

    // 只匹配行内公式 $...$，不走块级 $$，避免产生 <div class="katex-html">
    out = out.replace(/\$((?:[^$\\]|\\.)*?)\$/g, (_, content) => {
        const idx = htmlParts.length;
        htmlParts.push(renderMath(normalizeFormulaContent(content), false));
        return KATEX_PLACEHOLDER_PREFIX + idx + KATEX_PLACEHOLDER_SUFFIX;
    });

    // 仍然支持简单的 Markdown（加粗、斜体）；parseInline 不包 <p>，适合标签类短文本
    out = marked.parseInline(out);

    // 还原占位符
    htmlParts.forEach((html, idx) => {
        const placeholder = KATEX_PLACEHOLDER_PREFIX + idx + KATEX_PLACEHOLDER_SUFFIX;
        out = out.split(placeholder).join(html);
    });

    markdownCache.set(cacheKey, out);
    return out;
};

/**
 * 先预渲染数学公式为 HTML，用占位符替换后再交给 marked，最后还原 HTML，
 * 避免 marked 将 KaTeX 输出的 <span> 等标签转义成 &lt; 导致页面上显示成原文
 */
const renderWithLatex = (text) => {
    if (!text || typeof text !== "string") return text;

    if (markdownCache.has(text)) {
        return markdownCache.get(text);
    }

    let out = text;
    const htmlParts = [];

    // 1. 去掉「换行+空格+$$」，避免被 Markdown 当成缩进代码块
    out = out.replace(/\n[ \t]+\$\$/g, '\n$$');

    // 2. 块级公式 $$...$$：渲染成 HTML 后换成占位符，避免 marked 转义
    out = out.replace(/\$\$([\s\S]+?)\$\$/g, (_, content) => {
        const idx = htmlParts.length;
        htmlParts.push(renderMath(normalizeFormulaContent(content.trim()), true));
        return KATEX_PLACEHOLDER_PREFIX + idx + KATEX_PLACEHOLDER_SUFFIX;
    });

    // 3. 行内公式 $...$：同上
    out = out.replace(/\$((?:[^$\\]|\\.)*?)\$/g, (_, content) => {
        const idx = htmlParts.length;
        htmlParts.push(renderMath(normalizeFormulaContent(content), false));
        return KATEX_PLACEHOLDER_PREFIX + idx + KATEX_PLACEHOLDER_SUFFIX;
    });

    // 4. 用 marked 解析剩余 Markdown（加粗、列表等），此时字符串中无 < >，不会被转义
    out = marked.parse(out);

    // 5. 把占位符还原为 KaTeX 的 HTML
    htmlParts.forEach((html, idx) => {
        const placeholder = KATEX_PLACEHOLDER_PREFIX + idx + KATEX_PLACEHOLDER_SUFFIX;
        out = out.split(placeholder).join(html);
    });

    markdownCache.set(text, out);

    return out;
};

/* =========================
   清理缓存
   ========================= */

const clearRenderCache = () => {
    mathCache.clear();
    markdownCache.clear();
};

/* =========================
   导出
   ========================= */

if (typeof window !== 'undefined') {
    window.katexRenderer = {
        renderWithLatex,
        renderInline,
        clearRenderCache,
        renderMath,
        preprocessLatex
    };
}