.class public Lcom/uzmap/pkg/uzcore/g/e;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Deepe-FetchMedia-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/i/q;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g/e;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g/e;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/g/e;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/c/a/k;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p3}, Lcom/deepe/c/a/k;->c(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/a/k;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    const-string p3, ""

    invoke-static {p1, p3, p3}, Lcom/deepe/c/i/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/deepe/c/a/k;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/g/e;ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/g/e;->a(ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setAllowResume(Z)V

    invoke-static {p1}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setTag(Ljava/lang/Object;)Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/uzmap/pkg/uzcore/g/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setSavePath(Ljava/lang/String;)V

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->setDefaultSavePath(Ljava/lang/String;)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/g/e$1;

    invoke-direct {p2, p0, p1, p3}, Lcom/uzmap/pkg/uzcore/g/e$1;-><init>(Lcom/uzmap/pkg/uzcore/g/e;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->addCallback(Lcom/uzmap/pkg/uzkit/request/RequestCallback;)V

    invoke-static {}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->instance()Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->download(Lcom/uzmap/pkg/uzkit/request/HttpDownload;)V

    return-void
.end method

.method private a(ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {}, Lcom/deepe/c/a/k;->a()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/uzmap/pkg/uzcore/g/e;->a(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    new-instance p3, Lcom/deepe/c/i/i;

    invoke-direct {p3}, Lcom/deepe/c/i/i;-><init>()V

    const-string v0, "status"

    invoke-virtual {p3, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    const-string p1, "msg"

    invoke-virtual {p3, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p4, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 4

    invoke-static {}, Lcom/deepe/c/a/k;->a()Z

    move-result v0

    const-string v1, "success"

    if-eqz v0, :cond_1

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/deepe/c/i/m;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1, v0}, Lcom/deepe/c/a/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string v1, "push to system album abort."

    :cond_0
    invoke-direct {p0, p1, v1, p2, p3}, Lcom/uzmap/pkg/uzcore/g/e;->a(ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void

    :cond_1
    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/g/e;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/deepe/c/i/h;->c(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    const/4 v2, 0x0

    if-nez p1, :cond_2

    const-string v1, "file not found"

    goto :goto_2

    :cond_2
    :try_start_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    new-instance p2, Ljava/io/FileOutputStream;

    invoke-direct {p2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {p1, p2}, Lcom/deepe/c/i/h;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    invoke-static {p2}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x1

    move-object v0, v3

    goto :goto_2

    :catch_1
    move-exception p1

    move-object v0, v3

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, v2, v1, v0, p3}, Lcom/uzmap/pkg/uzcore/g/e;->a(ZLjava/lang/String;Ljava/io/File;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/e;->a:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g/e;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/g/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g/e;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g/e;->c:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/g/e;->b(Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    :goto_0
    return-void
.end method
