.class public Lcom/apicloud/a/i/a/ai/a/c;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/ai/a/c$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/a/q/b;

.field private b:Landroid/view/View;

.field private c:I

.field private d:Landroid/view/ViewGroup;

.field private e:Landroid/view/ViewGroup$LayoutParams;

.field private f:Landroid/app/Activity;

.field private g:I

.field private h:Lcom/apicloud/a/i/a/ai/a/c$a;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    const v0, 0x1030130

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->c:I

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->g:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/c;->f:Landroid/app/Activity;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/c;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/ai/a/c;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/apicloud/a/i/a/q/b;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/q/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->a:Lcom/apicloud/a/i/a/q/b;

    const/high16 p1, -0x1000000

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/q/b;->setBackgroundColor(I)V

    return-void
.end method

.method private a(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getRequestedOrientation()I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->f:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/WindowManager$LayoutParams;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    return-void
.end method

.method private b()V
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/c;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x1506

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x77

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    const/high16 v4, 0x3f800000    # 1.0f

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->alpha:F

    const/4 v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ai/a/c;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const/16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    :cond_1
    return-void
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->f:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/apicloud/a/i/a/ai/a/c;->g:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/c;->c()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->e:Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->d:Landroid/view/ViewGroup;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/c;->c:I

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    const/4 v1, -0x1

    iput v1, p0, Lcom/apicloud/a/i/a/ai/a/c;->c:I

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->d:Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->e:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public final a(Landroid/view/View;I)V
    .locals 1

    invoke-direct {p0, p2}, Lcom/apicloud/a/i/a/ai/a/c;->a(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/c;->c:I

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iput-object p2, p0, Lcom/apicloud/a/i/a/ai/a/c;->d:Landroid/view/ViewGroup;

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput-object p2, p0, Lcom/apicloud/a/i/a/ai/a/c;->e:Landroid/view/ViewGroup$LayoutParams;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/c;->b:Landroid/view/View;

    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a/c;->a:Lcom/apicloud/a/i/a/q/b;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/q/b;->addView(Landroid/view/View;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ai/a/c$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/c;->h:Lcom/apicloud/a/i/a/ai/a/c$a;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/c;->a:Lcom/apicloud/a/i/a/q/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/c;->setContentView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/c;->b()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/c;->h:Lcom/apicloud/a/i/a/ai/a/c$a;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ai/a/c$a;->a()V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
