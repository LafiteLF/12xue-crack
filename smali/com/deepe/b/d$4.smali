.class Lcom/deepe/b/d$4;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Lcom/uzmap/pkg/uzkit/request/Request;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/deepe/b/d;Lcom/uzmap/pkg/uzkit/request/Request;Z)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    iput-object p2, p0, Lcom/deepe/b/d$4;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    iput-boolean p3, p0, Lcom/deepe/b/d$4;->c:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;ID)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    const/4 v0, 0x1

    const-wide/high16 v1, 0x4059000000000000L    # 100.0

    invoke-static {p1, v0, v1, v2}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;ID)V

    iget-object p1, p0, Lcom/deepe/b/d$4;->b:Lcom/uzmap/pkg/uzkit/request/Request;

    check-cast p1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    invoke-static {v0}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/a/e;->a(Landroid/content/Context;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/deepe/b/d$4;->c:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    invoke-static {v0, p1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;Ljava/lang/String;)V

    return-void
.end method

.method public onProgress(JD)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/b/d$4;->a:Lcom/deepe/b/d;

    double-to-int p2, p3

    int-to-double p2, p2

    const/4 p4, 0x0

    invoke-static {p1, p4, p2, p3}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;ID)V

    return-void
.end method
