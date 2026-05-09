.class public final Lcom/uzmap/pkg/uzkit/request/HttpFetch;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newHttpDownload(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/HttpDownload;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setAllowResume(Z)V

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpFetch;->setDefault(Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/Request;

    return-object v0
.end method

.method public static final newHttpGet(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/HttpGet;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpGet;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzkit/request/HttpGet;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpFetch;->setDefault(Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/Request;

    return-object v0
.end method

.method public static final setDefault(Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)Lcom/uzmap/pkg/uzkit/request/Request;
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/request/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-static {p1}, Lcom/deepe/c/k/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "User-Agent"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p0
.end method
