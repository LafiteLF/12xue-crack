.class public Lcom/apicloud/a/i/b/j/b;
.super Lcom/apicloud/a/i/a/o/a;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/o/a;->a(Lcom/apicloud/a/d;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/b;->setSingleLine(Z)V

    const/16 v0, 0x33

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/b/j/b;->setGravity(I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/b;->b(I)V

    const v0, 0x20001

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/b/j/b;->setInputType(I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/b;->setHorizontallyScrolling(Z)V

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/b/j/b;->a:Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/b/j/b;->a:Z

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/o/a;->onMeasure(II)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/j/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/j/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Lcom/apicloud/a/i/a/o/a;->requestLayout()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[textarea]"

    return-object v0
.end method
