.class Lcom/uzmap/pkg/uzcore/h$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcom/uzmap/pkg/uzcore/g;

.field b:Lcom/uzmap/pkg/uzcore/g;

.field c:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

.field final synthetic d:Lcom/uzmap/pkg/uzcore/h;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/h;Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h$a;->a:Lcom/uzmap/pkg/uzcore/g;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/h$a;->b:Lcom/uzmap/pkg/uzcore/g;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h$a;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;Lcom/uzmap/pkg/uzcore/g;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;)Lcom/uzmap/pkg/uzcore/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->clearAnimation()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h;->b(Lcom/uzmap/pkg/uzcore/h;)Lcom/uzmap/pkg/uzcore/i;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h$a;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/i;->c(Lcom/uzmap/pkg/uzcore/g;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;)Lcom/uzmap/pkg/uzcore/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->f()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h$a;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;Landroid/view/View;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->n()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->w:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    if-eqz v0, :cond_1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h$a;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->b()Lorg/json/JSONObject;

    move-result-object v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->success(Lorg/json/JSONObject;Z)V

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->t()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;)Lcom/uzmap/pkg/uzcore/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/g;->r()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$a;->d:Lcom/uzmap/pkg/uzcore/h;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h;->c(Lcom/uzmap/pkg/uzcore/h;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/e;->t()V

    :cond_2
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/u;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h$a;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/u;

    return-void
.end method
