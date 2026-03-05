.class Lcom/deepe/b/c/a$1;
.super Lcom/uzmap/pkg/uzkit/request/RequestCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/c/a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/c/a;


# direct methods
.method constructor <init>(Lcom/deepe/b/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/c/a$1;->a:Lcom/deepe/b/c/a;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzkit/request/RequestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/c/a$1;->a:Lcom/deepe/b/c/a;

    invoke-static {v0}, Lcom/deepe/b/c/a;->a(Lcom/deepe/b/c/a;)Lcom/deepe/b/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/b/a;->D()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzkit/request/HttpResult;->success()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p1, p1, Lcom/uzmap/pkg/uzkit/request/HttpResult;->data:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/b/b/a;->a(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/deepe/b/c/a$1;->a:Lcom/deepe/b/c/a;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/b/c/a;->a(Lcom/deepe/b/c/a;Lorg/json/JSONObject;)Lcom/deepe/b/b/b;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/b/c/a$1;->a:Lcom/deepe/b/c/a;

    invoke-static {v0, p1}, Lcom/deepe/b/c/a;->a(Lcom/deepe/b/c/a;Lcom/deepe/b/b/b;)V

    :cond_3
    return-void
.end method
