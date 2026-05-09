.class Lcom/deepe/c/f/j;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/f/j$a;,
        Lcom/deepe/c/f/j$b;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/f/j$b;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 2

    const v0, 0x1030130

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepe/c/f/j;->requestWindowFeature(I)Z

    invoke-virtual {p0, v0}, Lcom/deepe/c/f/j;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/deepe/c/f/j$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/deepe/c/f/j$b;-><init>(Lcom/deepe/c/f/j;Landroid/content/Context;Lcom/deepe/c/f/j$b;)V

    iput-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    new-instance p1, Lcom/deepe/c/f/j$1;

    invoke-direct {p1, p0}, Lcom/deepe/c/f/j$1;-><init>(Lcom/deepe/c/f/j;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/f/j;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    iget-object p1, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    new-instance v0, Lcom/deepe/c/f/j$2;

    invoke-direct {v0, p0}, Lcom/deepe/c/f/j$2;-><init>(Lcom/deepe/c/f/j;)V

    invoke-virtual {p1, v0}, Lcom/deepe/c/f/j$b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static a(F)I
    .locals 1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
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
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    const/16 v2, 0x3400

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/4 v2, -0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x77

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, -0x78000000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    invoke-direct {p0, v1}, Lcom/deepe/c/f/j;->a(Landroid/view/WindowManager$LayoutParams;)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private c()Landroid/view/animation/Animation;
    .locals 10

    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v7, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    const v6, -0x41b33333    # -0.2f

    const/4 v8, 0x0

    move-object v0, v9

    move v1, v7

    move v3, v7

    move v5, v7

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 v0, 0x64

    invoke-virtual {v9, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    return-object v9
.end method


# virtual methods
.method public a(Lcom/deepe/c/f/l;)V
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/f/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    invoke-static {v0, p1}, Lcom/deepe/c/f/j$b;->a(Lcom/deepe/c/f/j$b;Lcom/deepe/c/f/l;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    invoke-static {v0, p1}, Lcom/deepe/c/f/j$b;->a(Lcom/deepe/c/f/j$b;Ljava/lang/String;)V

    return-void
.end method

.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    invoke-static {v0}, Lcom/deepe/c/f/j$b;->a(Lcom/deepe/c/f/j$b;)Z

    move-result v0

    return v0
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    invoke-virtual {v0}, Lcom/deepe/c/f/j$b;->clearAnimation()V

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    new-instance p1, Landroid/widget/ScrollView;

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/a/b/d;->a(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/f/j;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/a/b/d;->b(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v2, v1}, Landroid/widget/ScrollView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0, v1}, Landroid/widget/ScrollView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/f/j;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/deepe/c/f/j;->b()V

    invoke-direct {p0}, Lcom/deepe/c/f/j;->c()Landroid/view/animation/Animation;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/f/j;->a:Lcom/deepe/c/f/j$b;

    invoke-virtual {v0, p1}, Lcom/deepe/c/f/j$b;->startAnimation(Landroid/view/animation/Animation;)V

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

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
