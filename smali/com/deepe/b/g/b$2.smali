.class Lcom/deepe/b/g/b$2;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/g/b;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/g/b;


# direct methods
.method constructor <init>(Lcom/deepe/b/g/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {v0}, Lcom/deepe/b/g/b;->b(Lcom/deepe/b/g/b;)Lcom/deepe/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MamClient checkSmartUpdate result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {p1}, Lcom/deepe/b/e/a;->a(Lcom/uzmap/pkg/uzkit/request/HttpResult;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {v0}, Lcom/deepe/b/g/b;->c(Lcom/deepe/b/g/b;)Lcom/deepe/b/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->e()V

    iget-object v0, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {v0}, Lcom/deepe/b/g/b;->c(Lcom/deepe/b/g/b;)Lcom/deepe/b/b/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/d;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {p1}, Lcom/deepe/b/g/b;->d(Lcom/deepe/b/g/b;)Lcom/deepe/b/d/b;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {v0}, Lcom/deepe/b/g/b;->c(Lcom/deepe/b/g/b;)Lcom/deepe/b/b/d;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/b/d;)V

    iget-object p1, p0, Lcom/deepe/b/g/b$2;->a:Lcom/deepe/b/g/b;

    invoke-static {p1}, Lcom/deepe/b/g/b;->d(Lcom/deepe/b/g/b;)Lcom/deepe/b/d/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/b/d/b;->a()V

    :cond_2
    return-void
.end method
