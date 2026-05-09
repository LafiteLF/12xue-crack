.class Lcom/deepe/b/d/a$4;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/a;->a(Lcom/deepe/b/b/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/a;

.field private final synthetic b:Lcom/uzmap/pkg/uzkit/request/Request;

.field private final synthetic c:Lcom/deepe/b/b/b;

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/a;Lcom/uzmap/pkg/uzkit/request/Request;Lcom/deepe/b/b/b;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/a$4;->a:Lcom/deepe/b/d/a;

    iput-object p2, p0, Lcom/deepe/b/d/a$4;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    iput-object p3, p0, Lcom/deepe/b/d/a$4;->c:Lcom/deepe/b/b/b;

    iput-object p4, p0, Lcom/deepe/b/d/a$4;->d:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepe/b/d/a$4;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    check-cast p1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/d/a$4;->c:Lcom/deepe/b/b/b;

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/b;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/d/a$4;->c:Lcom/deepe/b/b/b;

    iget-boolean v0, v0, Lcom/deepe/b/b/b;->d:Z

    iget-object v1, p0, Lcom/deepe/b/d/a$4;->c:Lcom/deepe/b/b/b;

    invoke-virtual {v1}, Lcom/deepe/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/deepe/c/a;->a(ZLjava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/b/d/a$4;->d:Ljava/lang/String;

    if-eqz p1, :cond_1

    :try_start_0
    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/deepe/b/d/a$4;->d:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
