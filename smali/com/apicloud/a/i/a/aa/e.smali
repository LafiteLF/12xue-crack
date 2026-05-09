.class Lcom/apicloud/a/i/a/aa/e;
.super Lcom/apicloud/a/i/a/i/b;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/e;->getChildCount()I

    move-result v0

    if-lt p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/aa/e;->getChildCount()I

    move-result p2

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-static {p1}, Lcom/apicloud/a/i/a/aa/e;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/apicloud/c/b/b;->e(F)V

    return-void
.end method
