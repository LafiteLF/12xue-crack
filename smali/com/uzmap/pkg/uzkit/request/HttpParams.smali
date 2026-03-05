.class public Lcom/uzmap/pkg/uzkit/request/HttpParams;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzkit/request/Params;


# instance fields
.field public body:Ljava/lang/Object;

.field public fileStream:Ljava/lang/String;

.field public files:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/j/e/h;",
            ">;"
        }
    .end annotation
.end field

.field public values:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/j/e/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static copyParam(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/HttpParams;)V
    .locals 3

    if-nez p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->body:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->setBody(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->stream:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->setStream(Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->values:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->addValue(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->files:Ljava/util/List;

    if-eqz p0, :cond_4

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzkit/fineHttp/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzkit/fineHttp/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->addFile(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_4
    :goto_3
    return-void
.end method

.method private createFormEntity()Lcom/deepe/c/j/e/a/a;
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    :try_start_0
    new-instance v1, Lcom/deepe/c/j/e/a/k;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Lcom/deepe/c/j/e/a/k;-><init>(Ljava/util/List;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private createInputStemEntity()Lcom/deepe/c/j/e/a/a;
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->fileStream:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    :cond_0
    const-string v2, "file://"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v3, Lcom/deepe/c/j/e/a/b;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-direct {v3, v1, v4, v5}, Lcom/deepe/c/j/e/a/b;-><init>(Ljava/io/InputStream;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "application/octet-stream"

    invoke-virtual {v3, v0}, Lcom/deepe/c/j/e/a/a;->a(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-object v3
.end method

.method private createMultiEntity()Lcom/deepe/c/j/e/a/a;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/deepe/c/j/e/a/c;

    invoke-direct {v1}, Lcom/deepe/c/j/e/a/c;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/e/h;

    new-instance v4, Lcom/deepe/c/j/e/a/i;

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v5, v3}, Lcom/deepe/c/j/e/a/i;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/deepe/c/j/e/a/c;->a(Lcom/deepe/c/j/e/a/d;)V

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-eqz v2, :cond_5

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_3

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/j/e/h;

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/deepe/c/j/e/h;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_2

    :cond_3
    const-string v5, "file://"

    const-string v6, ""

    invoke-virtual {v3, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->mimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/deepe/c/j/e/a/f;

    invoke-direct {v6, v4, v5, v3, v0}, Lcom/deepe/c/j/e/a/f;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/deepe/c/j/e/a/c;->a(Lcom/deepe/c/j/e/a/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :cond_5
    :goto_3
    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method private createStringEntity()Lcom/deepe/c/j/e/a/a;
    .locals 3

    :try_start_0
    new-instance v0, Lcom/deepe/c/j/e/a/j;

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UTF-8"

    invoke-direct {v0, v1, v2}, Lcom/deepe/c/j/e/a/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private mimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v0

    invoke-static {p1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public static toRequest(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)Lcom/uzmap/pkg/uzkit/request/Request;
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->url:Ljava/lang/String;

    iget v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->method:I

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isDownloadRequest()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-ne v1, v4, :cond_0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/HttpParams;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;-><init>()V

    invoke-static {p0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->copyParam(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/HttpParams;)V

    new-instance v2, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v2, v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    move-object v5, v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->assembleUrl()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;-><init>(Ljava/lang/String;)V

    move-object v5, v1

    :goto_0
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->allowResume:Z

    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setAllowResume(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->savePath:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setSavePath(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->defaultSavePath:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->getCacheRootDir()Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setDefaultSavePath(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->isSSERequest()Z

    move-result p1

    if-eqz p1, :cond_4

    if-ne v1, v4, :cond_3

    new-instance p1, Lcom/uzmap/pkg/uzkit/request/HttpParams;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;-><init>()V

    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->copyParam(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/HttpParams;)V

    new-instance v1, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;

    invoke-direct {v1, v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    move-object v5, v1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->assembleUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpEventSource;-><init>(Ljava/lang/String;)V

    move-object v5, v0

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_c

    const/16 p1, 0x9

    const/4 v2, 0x3

    if-eq v1, v4, :cond_9

    const/4 v6, 0x2

    if-eq v1, v6, :cond_8

    if-eq v1, v2, :cond_9

    const/4 v6, 0x4

    if-eq v1, v6, :cond_7

    const/4 v6, 0x7

    if-eq v1, v6, :cond_6

    const/16 v6, 0x8

    if-eq v1, v6, :cond_5

    if-eq v1, p1, :cond_9

    :goto_1
    move v4, v3

    goto :goto_3

    :cond_5
    new-instance v5, Lcom/uzmap/pkg/uzkit/request/HttpTrace;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpTrace;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    new-instance v5, Lcom/uzmap/pkg/uzkit/request/HttpOptions;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpOptions;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    new-instance v5, Lcom/uzmap/pkg/uzkit/request/HttpDelete;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzkit/request/HttpDelete;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->assembleUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/uzmap/pkg/uzkit/request/HttpHead;

    invoke-direct {v5, p1}, Lcom/uzmap/pkg/uzkit/request/HttpHead;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    new-instance v6, Lcom/uzmap/pkg/uzkit/request/HttpParams;

    invoke-direct {v6}, Lcom/uzmap/pkg/uzkit/request/HttpParams;-><init>()V

    invoke-static {p0, v6}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->copyParam(Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;Lcom/uzmap/pkg/uzkit/request/HttpParams;)V

    if-ne v1, v4, :cond_a

    new-instance p1, Lcom/uzmap/pkg/uzkit/request/HttpPost;

    invoke-direct {p1, v0, v6}, Lcom/uzmap/pkg/uzkit/request/HttpPost;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    :goto_2
    move-object v5, p1

    goto :goto_3

    :cond_a
    if-ne v1, v2, :cond_b

    new-instance p1, Lcom/uzmap/pkg/uzkit/request/HttpPut;

    invoke-direct {p1, v0, v6}, Lcom/uzmap/pkg/uzkit/request/HttpPut;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    goto :goto_2

    :cond_b
    if-ne v1, p1, :cond_d

    new-instance p1, Lcom/uzmap/pkg/uzkit/request/HttpPatch;

    invoke-direct {p1, v0, v6}, Lcom/uzmap/pkg/uzkit/request/HttpPatch;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/request/Params;)V

    goto :goto_2

    :cond_c
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->assembleUrl()Ljava/lang/String;

    move-result-object p1

    new-instance v5, Lcom/uzmap/pkg/uzkit/request/HttpGet;

    invoke-direct {v5, p1}, Lcom/uzmap/pkg/uzkit/request/HttpGet;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_d
    :goto_3
    if-eqz v5, :cond_f

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/k/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;

    const-string p1, "User-Agent"

    invoke-virtual {v5, p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->heads:Lcom/deepe/c/i/t;

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->addHeader(Ljava/util/Map;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capath:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->capsw:Ljava/lang/String;

    invoke-virtual {v5, p1, v0}, Lcom/uzmap/pkg/uzkit/request/Request;->setCertificate(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->charset:Ljava/lang/String;

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setCharset(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->report:Z

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setNeedReport(Z)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needEscape:Z

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setNeedEscape(Z)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->needErrorInfo:Z

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setNeedErrorInfo(Z)V

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->encode:Z

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setNeedEncode(Z)Lcom/uzmap/pkg/uzkit/request/Request;

    iget p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->safeMode:I

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setSafeMode(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->proxyHost:Ljava/lang/String;

    iget v0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->proxyPort:I

    iget v1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->protocolVersion:I

    invoke-virtual {v5, p1, v0, v1}, Lcom/uzmap/pkg/uzkit/request/Request;->setProxy(Ljava/lang/String;II)V

    if-eqz v4, :cond_e

    invoke-virtual {v5, v3}, Lcom/uzmap/pkg/uzkit/request/Request;->setShouldCache(Z)Lcom/uzmap/pkg/uzkit/request/Request;

    goto :goto_4

    :cond_e
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->cache:Z

    invoke-virtual {v5, p1}, Lcom/uzmap/pkg/uzkit/request/Request;->setShouldCache(Z)Lcom/uzmap/pkg/uzkit/request/Request;

    :goto_4
    iget p0, p0, Lcom/uzmap/pkg/uzkit/fineHttp/RequestParam;->timeout:I

    div-int/lit16 p0, p0, 0x3e8

    invoke-virtual {v5, p0}, Lcom/uzmap/pkg/uzkit/request/Request;->setTimeout(I)V

    :cond_f
    return-object v5
.end method


# virtual methods
.method public addFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/deepe/c/j/e/h;

    invoke-direct {v0, p1, p2}, Lcom/deepe/c/j/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public addValue(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    :cond_1
    new-instance v0, Lcom/deepe/c/j/e/h;

    invoke-direct {v0, p1, p2}, Lcom/deepe/c/j/e/h;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public contentSafe()Z
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/j/e/h;

    invoke-virtual {v2}, Lcom/deepe/c/j/e/h;->b()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/deepe/c/j/b/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/j/b/a;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public getAdditionalHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHttpEntity()Lcom/deepe/c/j/e/a/a;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->createFormEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->createStringEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->values:Ljava/util/List;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->files:Ljava/util/List;

    if-eqz v0, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->createMultiEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->fileStream:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/HttpParams;->createInputStemEntity()Lcom/deepe/c/j/e/a/a;

    move-result-object v0

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public serialize()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/uzmap/pkg/uzkit/request/FineHttpUtils;->serialize(Lcom/uzmap/pkg/uzkit/request/HttpParams;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public setBody(Ljava/lang/Object;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->body:Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public setStream(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/HttpParams;->fileStream:Ljava/lang/String;

    const/4 p1, 0x1

    return p1
.end method
