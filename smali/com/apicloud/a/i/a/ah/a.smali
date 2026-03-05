.class public Lcom/apicloud/a/i/a/ah/a;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/i;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ah/a;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    :try_start_0
    invoke-static {p1}, Lcom/apicloud/a/i/a/ah/a;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    instance-of v1, p1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lcom/apicloud/c/b/b;->t()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "100%"

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->n(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/i/b;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Body view only one child allowed."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[body]"

    return-object v0
.end method
