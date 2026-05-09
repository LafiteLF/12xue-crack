.class Lcom/apicloud/c/a/a/j$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/c/a/a/j$e$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$f;->a:Lcom/apicloud/c/a/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/c/a/a/j$w;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$w;->a(Z)V

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->j:Lcom/apicloud/c/a/a/j$w;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/apicloud/c/a/a/j$w;->k:Lcom/apicloud/c/a/a/j$w;

    if-nez v0, :cond_0

    iput-object v1, p1, Lcom/apicloud/c/a/a/j$w;->j:Lcom/apicloud/c/a/a/j$w;

    :cond_0
    iput-object v1, p1, Lcom/apicloud/c/a/a/j$w;->k:Lcom/apicloud/c/a/a/j$w;

    invoke-static {p1}, Lcom/apicloud/c/a/a/j$w;->c(Lcom/apicloud/c/a/a/j$w;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$f;->a:Lcom/apicloud/c/a/a/j;

    iget-object v1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$f;->a:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/c/a/a/j;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
