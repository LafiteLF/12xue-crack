/**
 * 函数防抖
 * @param {Function} fn - 需要防抖的函数
 * @param {number} delay - 延迟时间（毫秒）
 * @param {boolean} [immediate=false] - 是否立即执行
 * @returns {Function & { cancel: Function }} 防抖后的函数，带有 cancel 方法
 */
function debounce(fn, delay, immediate) {
    let timer = null;
    
    /**
     * 防抖函数
     * @param {...any} args - 函数参数
     */
    const debounced = function(...args) {
        if (timer) clearTimeout(timer);
        
        if (immediate) {
            const callNow = !timer;
            timer = setTimeout(() => {
                timer = null;
            }, delay);
            if (callNow) fn.apply(this, args);
        } else {
            timer = setTimeout(() => {
                fn.apply(this, args);
            }, delay);
        }
    };
    
    /**
     * 取消防抖
     */
    debounced.cancel = function() {
        clearTimeout(timer);
        timer = null;
    };
    
    return debounced;
}