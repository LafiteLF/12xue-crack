.class public Lcom/apicloud/a/i/a/i/b;
.super Lcom/apicloud/a/i/a/q/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/i/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/i/a;

.field private b:Lcom/apicloud/a/i/a/i/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/q/a;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/b;->a()V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/q/a;-><init>(Lcom/apicloud/a/d;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/b;->a()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/i/b;)Lcom/apicloud/a/i/a/i/a;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/i/b;->a:Lcom/apicloud/a/i/a/i/a;

    return-object p0
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setClipChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setFocusableInTouchMode(Z)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setChildrenDrawingOrderEnabled(Z)V

    new-instance v0, Lcom/apicloud/a/i/a/i/a;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/i/a;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/i/b;->a:Lcom/apicloud/a/i/a/i/a;

    new-instance v0, Lcom/apicloud/a/i/a/i/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/a/i/a/i/b$a;-><init>(Lcom/apicloud/a/i/a/i/b;Lcom/apicloud/a/i/a/i/b$a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/i/b;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setId(I)V

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/q/a;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/i/b;->isEnabled()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method protected getChildDrawingOrder(II)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/b;->a:Lcom/apicloud/a/i/a/i/a;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/i/a;->a(II)I

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/apicloud/a/i/a/q/a;->onLayout(ZIIII)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/i/b;->a:Lcom/apicloud/a/i/a/i/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/i/a;->a()V

    return-void
.end method

.method public requestLayout()V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/g/d/l;->a(Landroid/view/View;)V

    invoke-super {p0}, Lcom/apicloud/a/i/a/q/a;->requestLayout()V

    return-void
.end method

.method public setTouchDelegate(Landroid/view/TouchDelegate;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/b;->b:Lcom/apicloud/a/i/a/i/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/i/f;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/i/f;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/i/b;->b:Lcom/apicloud/a/i/a/i/f;

    invoke-super {p0, v0}, Lcom/apicloud/a/i/a/q/a;->setTouchDelegate(Landroid/view/TouchDelegate;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/i/b;->b:Lcom/apicloud/a/i/a/i/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/i/f;->a(Landroid/view/TouchDelegate;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[container]"

    return-object v0
.end method
