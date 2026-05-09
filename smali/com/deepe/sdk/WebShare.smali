.class public final Lcom/deepe/sdk/WebShare;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/sdk/WebShare$PathHandler;
    }
.end annotation


# static fields
.field public static final TAG_EXTENDS_BEGIN:Ljava/lang/String; = "view["

.field public static final TAG_EXTENDS_END:Ljava/lang/String; = "]"

.field private static final sPathHandlers:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/deepe/sdk/WebShare$PathHandler;",
            ">;"
        }
    .end annotation
.end field

.field private static final sResLoadeds:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepe/c/i/v;

    invoke-direct {v0}, Lcom/deepe/c/i/v;-><init>()V

    sput-object v0, Lcom/deepe/sdk/WebShare;->sPathHandlers:Lcom/deepe/c/i/v;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/deepe/sdk/WebShare;->sResLoadeds:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addPathHandler(Lcom/deepe/sdk/WebShare$PathHandler;)V
    .locals 1

    sget-object v0, Lcom/deepe/sdk/WebShare;->sPathHandlers:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static appendThirdJS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ThirdManager;->appendJS(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static appendUserAgent(Ljava/lang/String;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/k/k;->b(Ljava/lang/String;)V

    return-void
.end method

.method public static final cleanResLoadeds(Landroid/webkit/WebView;)V
    .locals 1

    invoke-static {p0}, Lcom/deepe/sdk/WebShare;->makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepe/sdk/WebShare;->sResLoadeds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public static final deliverLog(ILjava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/d/a;->b(ILjava/lang/String;)V

    return-void
.end method

.method public static final getBaseContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/deepe/a;->f()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public static final getFileName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_1
    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_2
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_4

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static getGlobalData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/g/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final getResLoadeds(Landroid/webkit/WebView;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/webkit/WebView;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/deepe/sdk/WebShare;->makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lcom/deepe/sdk/WebShare;->sResLoadeds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/deepe/sdk/WebShare;->sResLoadeds:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static final isResLoadeds(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/deepe/sdk/WebShare;->sResLoadeds:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final makeRESRequest(Landroid/webkit/WebView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)Lcom/deepe/sdk/RESRequest;
    .locals 6
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
            "Lcom/deepe/sdk/RESRequest;"
        }
    .end annotation

    new-instance p0, Lcom/deepe/sdk/RESRequest;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/deepe/sdk/RESRequest;-><init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public static makeWebviewTag(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/i/q;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "view["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static final putResLoadeds(Landroid/webkit/WebView;Lcom/deepe/sdk/RESResponse;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/sdk/WebShare;->getResLoadeds(Landroid/webkit/WebView;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/deepe/sdk/RESResponse;->getResTag()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static final removePathHandler(Lcom/deepe/sdk/WebShare$PathHandler;)V
    .locals 1

    sget-object v0, Lcom/deepe/sdk/WebShare;->sPathHandlers:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/v;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public static revertTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "view["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static revertWebviewTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "view["

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static final setBaseContext(Landroid/content/Context;)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/a;->a(Landroid/content/Context;)Lcom/deepe/a;

    :cond_0
    return-void
.end method

.method public static setGlobalData(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/g/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static setPrivacyUpdateEnabled(Z)V
    .locals 2

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const-string v1, "privacyUpdateEnabled"

    invoke-virtual {v0, v1, p0}, Lcom/deepe/c/a;->a(Ljava/lang/String;Z)V

    return-void
.end method

.method public static setPublishHost(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const-string v1, "publish_host"

    invoke-virtual {v0, v1, p0}, Lcom/deepe/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final shouldInterceptRequest(Landroid/webkit/WebView;Lcom/deepe/sdk/RESRequest;)Landroid/webkit/WebResourceResponse;
    .locals 4

    sget-object v0, Lcom/deepe/sdk/WebShare;->sPathHandlers:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p0}, Lcom/deepe/sdk/WebShare;->getResLoadeds(Landroid/webkit/WebView;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/sdk/RESRequest;->setLoadedResTag(Ljava/util/List;)V

    sget-object v0, Lcom/deepe/sdk/WebShare;->sPathHandlers:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/sdk/WebShare$PathHandler;

    invoke-interface {v2, p1}, Lcom/deepe/sdk/WebShare$PathHandler;->handle(Lcom/deepe/sdk/RESRequest;)Lcom/deepe/sdk/RESResponse;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/deepe/sdk/RESResponse;->data:Ljava/io/InputStream;

    if-eqz v3, :cond_1

    iget-object v0, v2, Lcom/deepe/sdk/RESResponse;->mimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/deepe/sdk/RESRequest;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string v0, "text/javascript"

    :cond_3
    iget-object p1, v2, Lcom/deepe/sdk/RESResponse;->encoding:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    const-string p1, "UTF-8"

    goto :goto_0

    :cond_4
    iget-object p1, v2, Lcom/deepe/sdk/RESResponse;->encoding:Ljava/lang/String;

    :goto_0
    new-instance v1, Landroid/webkit/WebResourceResponse;

    iget-object v3, v2, Lcom/deepe/sdk/RESResponse;->data:Ljava/io/InputStream;

    invoke-direct {v1, v0, p1, v3}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x15

    if-lt p1, v0, :cond_5

    const/16 p1, 0xc8

    const-string v0, "OK"

    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebResourceResponse;->setStatusCodeAndReasonPhrase(ILjava/lang/String;)V

    :cond_5
    invoke-static {p0, v2}, Lcom/deepe/sdk/WebShare;->putResLoadeds(Landroid/webkit/WebView;Lcom/deepe/sdk/RESResponse;)V

    return-object v1
.end method
