.class Lcom/deepe/b/d/b$5;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/b;->b(Lcom/deepe/b/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/b;

.field private final synthetic b:Lcom/deepe/b/b/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b$5;->a:Lcom/deepe/b/d/b;

    iput-object p2, p0, Lcom/deepe/b/d/b$5;->b:Lcom/deepe/b/b/c;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 3

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportIncrement faild! result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/f;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/deepe/b/d/b$5;->b:Lcom/deepe/b/b/c;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Installed report error.["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "reportIncrement ok! result: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/f;->b(Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/deepe/b/d/b$5;->a:Lcom/deepe/b/d/b;

    iget-object v0, p0, Lcom/deepe/b/d/b$5;->b:Lcom/deepe/b/b/c;

    invoke-static {p1, v0}, Lcom/deepe/b/d/b;->d(Lcom/deepe/b/d/b;Lcom/deepe/b/b/c;)V

    return-void
.end method
