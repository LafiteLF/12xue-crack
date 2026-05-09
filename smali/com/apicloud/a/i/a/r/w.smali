.class public Lcom/apicloud/a/i/a/r/w;
.super Lcom/apicloud/c/a/a/j$w;


# instance fields
.field public a:Z

.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/j$w;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/r/w;->a:Z

    iput-object p2, p0, Lcom/apicloud/a/i/a/r/w;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    instance-of v0, v0, Lcom/apicloud/a/i/a/r/d;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/apicloud/c/a/a/n$b;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/apicloud/c/a/a/n$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/n$b;->a(Z)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/r/w;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/apicloud/c/a/a/j$w;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
