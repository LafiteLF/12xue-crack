.class Lcom/deepe/b/d/b$4;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/b;

.field private final synthetic b:Lcom/deepe/b/b/c;

.field private final synthetic c:Lcom/uzmap/pkg/uzkit/request/Request;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;Lcom/uzmap/pkg/uzkit/request/Request;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    iput-object p2, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    iput-object p3, p0, Lcom/deepe/b/d/b$4;->c:Lcom/uzmap/pkg/uzkit/request/Request;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d/b$4;)Lcom/deepe/b/d/b;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    return-object p0
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Download patch error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    iget-object v0, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    invoke-static {p1, v0}, Lcom/deepe/b/d/b;->b(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/deepe/b/d/b$4;->c:Lcom/uzmap/pkg/uzkit/request/Request;

    check-cast p1, Lcom/uzmap/pkg/uzkit/request/HttpDownload;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpDownload;->getSavePath()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/deepe/b/d/b$4$1;

    iget-object v1, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    invoke-direct {v0, p0, v1}, Lcom/deepe/b/d/b$4$1;-><init>(Lcom/deepe/b/d/b$4;Lcom/deepe/b/b/c;)V

    iget-object v1, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    iget v1, v1, Lcom/deepe/b/b/c;->a:I

    invoke-static {v1, p1, v0}, Lcom/deepe/b/f/a;->a(ILjava/lang/String;Lcom/deepe/b/f/c;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    iget-object v0, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    invoke-static {p1, v0}, Lcom/deepe/b/d/b;->c(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    const-string v0, "Save patch error."

    invoke-virtual {p1, v0}, Lcom/deepe/b/b/c;->a(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    iget-object v0, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    invoke-static {p1, v0}, Lcom/deepe/b/d/b;->b(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    :goto_0
    return-void
.end method

.method public onProgress(JD)V
    .locals 0

    iget-object p1, p0, Lcom/deepe/b/d/b$4;->a:Lcom/deepe/b/d/b;

    iget-object p2, p0, Lcom/deepe/b/d/b$4;->b:Lcom/deepe/b/b/c;

    iget p2, p2, Lcom/deepe/b/b/c;->e:I

    invoke-static {p1, p2, p3, p4}, Lcom/deepe/b/d/b;->b(Lcom/deepe/b/d/b;ID)V

    return-void
.end method
