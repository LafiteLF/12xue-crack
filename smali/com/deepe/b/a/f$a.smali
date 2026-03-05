.class Lcom/deepe/b/a/f$a;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/b/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/a/f;

.field private b:I


# direct methods
.method public constructor <init>(Lcom/deepe/b/a/f;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/a/f$a;->a:Lcom/deepe/b/a/f;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    sget p1, Lcom/deepe/b/a/f;->b:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/deepe/b/a/f;->b:I

    sget p1, Lcom/deepe/b/a/f;->b:I

    iput p1, p0, Lcom/deepe/b/a/f$a;->b:I

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 4

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    const-string v1, " , "

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/b/a/f$a;->a:Lcom/deepe/b/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "analysis ok! result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/deepe/b/a/f$a;->b:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/deepe/b/a/f;->a(Lcom/deepe/b/a/f;Ljava/lang/String;)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/b/b/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_2

    iget-object p1, p0, Lcom/deepe/b/a/f$a;->a:Lcom/deepe/b/a/f;

    invoke-static {p1}, Lcom/deepe/b/a/f;->a(Lcom/deepe/b/a/f;)Lcom/deepe/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/b/a/c;->g()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/b/a/f$a;->a:Lcom/deepe/b/a/f;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "analysis faild! result: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/deepe/b/a/f$a;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/b/a/f;->b(Lcom/deepe/b/a/f;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
