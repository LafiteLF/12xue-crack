.class Lcom/uzmap/pkg/uzcore/i/b/a$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/i/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/app/DownloadManager$Request;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-FetchUrlMimeType-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->d:Ljava/lang/String;

    iput-object p5, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->c:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    check-cast v2, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v3, "HEAD"

    invoke-virtual {v2, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->e:Ljava/lang/String;

    if-eqz v3, :cond_0

    const-string v3, "User-Agent"

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->e:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->d:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->d:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "Cookie"

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->d:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v3, :cond_2

    const/16 v4, 0x3b

    :try_start_2
    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {v3, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_2
    const-string v4, "Content-Disposition"

    invoke-virtual {v2, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object v6, v3

    move-object v3, v1

    move-object v1, v6

    goto :goto_0

    :catch_0
    move-exception v4

    move-object v6, v4

    move-object v4, v3

    move-object v3, v6

    goto :goto_1

    :cond_3
    move-object v3, v1

    :goto_0
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    :catch_1
    move-exception v3

    move-object v4, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_5

    :catch_2
    move-exception v3

    move-object v2, v1

    move-object v4, v2

    :goto_1
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_4
    move-object v3, v1

    move-object v1, v4

    :cond_5
    :goto_2
    if-eqz v1, :cond_8

    const-string v2, "text/plain"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string v2, "application/octet-stream"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    :cond_6
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v2

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->c:Ljava/lang/String;

    invoke-static {v4}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    invoke-virtual {v1, v2}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    move-object v1, v2

    :cond_7
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->c:Ljava/lang/String;

    invoke-static {v2, v3, v1}, Lcom/deepe/c/i/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z

    goto :goto_3

    :cond_8
    const-string v1, ""

    :goto_3
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/deepe/c/a/j;->n(Landroid/content/Context;)Landroid/app/DownloadManager;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    invoke-static {v3, v2, v4}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z

    move-result v3

    if-nez v3, :cond_9

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    invoke-static {v3, v4, v1, v0}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager$Request;Ljava/lang/String;Z)Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/i/b/a$b;->b:Landroid/app/DownloadManager$Request;

    invoke-static {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/i/b/a;->a(Landroid/content/Context;Landroid/app/DownloadManager;Landroid/app/DownloadManager$Request;)Z

    move-result v3

    :cond_9
    if-eqz v3, :cond_a

    const-string v0, "\u5f00\u59cb\u4e0b\u8f7d..."

    goto :goto_4

    :cond_a
    const-string v0, "\u4e0b\u8f7d\u5931\u8d25..."

    :goto_4
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v0

    move-object v1, v2

    :goto_5
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    throw v0
.end method
