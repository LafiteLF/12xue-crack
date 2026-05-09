.class Lcom/uzmap/pkg/uzcore/i/e;
.super Lcom/uzmap/pkg/uzcore/i/d;


# direct methods
.method constructor <init>(Landroid/content/Context;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/i/d;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 0

    const-string p1, "contents:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {p3}, Lcom/deepe/c/i/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p3, p3}, Lcom/uzmap/pkg/uzcore/i/k;->b(Ljava/lang/String;ZZ)[B

    move-result-object p3

    if-eqz p3, :cond_0

    new-instance p4, Lcom/uzmap/pkg/uzcore/i/a/a;

    invoke-direct {p4, p3, p2}, Lcom/uzmap/pkg/uzcore/i/a/a;-><init>([BLjava/lang/String;)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/i/a/c;

    invoke-direct {p2, p1, p4}, Lcom/uzmap/pkg/uzcore/i/a/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 1

    const-string p1, "contents:"

    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 p4, 0x0

    if-eqz p1, :cond_2

    invoke-static {p2, p4}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Lcom/deepe/c/i/m;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-static {p1, v0, p3}, Lcom/uzmap/pkg/uzcore/i/k;->b(Ljava/lang/String;ZZ)[B

    move-result-object p3

    if-eqz p3, :cond_0

    array-length v0, p3

    :cond_0
    if-gtz v0, :cond_1

    return-object p4

    :cond_1
    new-instance p4, Lcom/uzmap/pkg/uzcore/i/a/a;

    invoke-direct {p4, p3, p1}, Lcom/uzmap/pkg/uzcore/i/a/a;-><init>([BLjava/lang/String;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/i/a/c;

    invoke-direct {p1, p2, p4}, Lcom/uzmap/pkg/uzcore/i/a/c;-><init>(Ljava/lang/String;Ljava/io/InputStream;)V

    return-object p1

    :cond_2
    return-object p4
.end method


# virtual methods
.method protected final b(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/webkit/WebResourceResponse;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/i/e;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/e;->e:Lcom/deepe/d/e;

    invoke-virtual {v0, p2, p5}, Lcom/deepe/d/e;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/al;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/al;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0, p6}, Lcom/uzmap/pkg/uzcore/i/k;->a(Lcom/uzmap/pkg/uzcore/al;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static/range {p1 .. p6}, Lcom/deepe/sdk/WebShare;->makeRESRequest(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Lcom/deepe/sdk/RESRequest;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/deepe/sdk/WebShare;->shouldInterceptRequest(Landroid/webkit/WebView;Lcom/deepe/sdk/RESRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p3

    if-eqz p3, :cond_2

    return-object p3

    :cond_2
    iget-boolean p3, p0, Lcom/uzmap/pkg/uzcore/i/e;->b:Z

    if-nez p3, :cond_3

    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p1}, Lcom/deepe/sdk/WebShare;->makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/e/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4}, Lcom/uzmap/pkg/uzcore/e/b;->c(Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_4

    invoke-direct {p0, p3, p2, p4, p1}, Lcom/uzmap/pkg/uzcore/i/e;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_4
    invoke-direct {p0, p3, p2, p4, p1}, Lcom/uzmap/pkg/uzcore/i/e;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public final shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .locals 7

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "GET"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/uzmap/pkg/uzcore/i/e;->b(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/d;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :goto_0
    return-object v0
.end method
