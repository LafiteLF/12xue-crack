.class Lcom/uzmap/pkg/uzcore/f/c$2;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/f/c;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f/c;

.field private final synthetic b:Lcom/uzmap/pkg/uzkit/request/Request;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/f/c;Lcom/uzmap/pkg/uzkit/request/Request;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->a:Lcom/uzmap/pkg/uzcore/f/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->c:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    check-cast p1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->a:Lcom/uzmap/pkg/uzcore/f/c;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/f/c;->a(Lcom/uzmap/pkg/uzcore/f/c;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/deepe/c/a;->a(Z)V

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/c$2;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/c/a;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/File;)V

    :cond_0
    return-void
.end method

.method public onProgress(JD)V
    .locals 0

    return-void
.end method
