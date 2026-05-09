.class Lcom/deepe/b/d/a$2;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/a;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/a$2;->a:Lcom/deepe/b/d/a;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start report ok! result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/d/a$2;->a:Lcom/deepe/b/d/a;

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/deepe/b/d/a;->a(Lcom/deepe/b/d/a;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "start report faild! result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/f;->c(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
