.class public Lcom/apicloud/a/i/a/u/a/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/u/a/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/u/a/j;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/a;->requestWindowFeature(I)Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a/a;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/u/a/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/a;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const v0, 0x3ecccccd    # 0.4f

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/u/a/a;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method private b()Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v0, Lcom/apicloud/a/i/a/u/a/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/a/a$1;-><init>(Lcom/apicloud/a/i/a/u/a/a;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0x15e

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v9
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/u/a/a;)Lcom/apicloud/a/i/a/u/a/j;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    return-object p0
.end method

.method private c()Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/high16 v8, 0x3f800000    # 1.0f

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v0, Lcom/apicloud/a/i/a/u/a/a$2;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/a/a$2;-><init>(Lcom/apicloud/a/i/a/u/a/a;)V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v9, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-object v9
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/u/a/a;)Landroid/view/animation/Animation;
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/a;->b()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/u/a/a;)Landroid/view/animation/Animation;
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/u/a/a;->c()Landroid/view/animation/Animation;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {v2}, Lcom/apicloud/a/i/a/u/a/j;->a()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x50

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public dismiss()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    new-instance v1, Lcom/apicloud/a/i/a/u/a/a$4;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/u/a/a$4;-><init>(Lcom/apicloud/a/i/a/u/a/a;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/u/a/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

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

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/j;->b()V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    new-instance v0, Lcom/apicloud/a/i/a/u/a/a$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/u/a/a$3;-><init>(Lcom/apicloud/a/i/a/u/a/a;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/j;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    check-cast p1, Lcom/apicloud/a/i/a/u/a/j;

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/a;->a:Lcom/apicloud/a/i/a/u/a/j;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a/a;->a()V

    return-void
.end method
