.class public Lcom/uzmap/pkg/b/b/j;
.super Landroid/app/Dialog;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/j$a;
    }
.end annotation


# static fields
.field private static e:Z = false


# instance fields
.field private a:Lcom/uzmap/pkg/b/b/j$a;

.field private b:Z

.field private c:I

.field private d:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const p1, -0xe0e0f

    iput p1, p0, Lcom/uzmap/pkg/b/b/j;->c:I

    const p1, -0x19191a

    iput p1, p0, Lcom/uzmap/pkg/b/b/j;->d:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/j;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/j;->getWindow()Landroid/view/Window;

    move-result-object p1

    const v0, 0x106000d

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v0, 0x37

    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/b/b/j;->setCanceledOnTouchOutside(Z)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/j;)I
    .locals 0

    iget p0, p0, Lcom/uzmap/pkg/b/b/j;->c:I

    return p0
.end method

.method static synthetic a(Lcom/uzmap/pkg/b/b/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/b/b/j;->b:Z

    return-void
.end method

.method static synthetic a(Z)V
    .locals 0

    sput-boolean p0, Lcom/uzmap/pkg/b/b/j;->e:Z

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/b/b/j;->e:Z

    return v0
.end method

.method static synthetic b(Lcom/uzmap/pkg/b/b/j;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/b/b/j;)Lcom/uzmap/pkg/b/b/j$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    return-object p0
.end method

.method static synthetic d()Z
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/b/b/j;->e:Z

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/j$a;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/b/b/j$a;-><init>(Lcom/uzmap/pkg/b/b/j;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/b/b/j$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/b/b/j$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/j;->b:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/b/b/j$2;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/b/b/j$2;-><init>(Lcom/uzmap/pkg/b/b/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/b/b/j$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected c()Landroid/graphics/drawable/StateListDrawable;
    .locals 7

    const/4 v0, 0x4

    new-array v1, v0, [I

    iget v2, p0, Lcom/uzmap/pkg/b/b/j;->c:I

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v4, 0x1

    aput v2, v1, v4

    const/4 v5, 0x2

    aput v2, v1, v5

    const/4 v6, 0x3

    aput v2, v1, v6

    new-array v0, v0, [I

    iget v2, p0, Lcom/uzmap/pkg/b/b/j;->d:I

    aput v2, v0, v3

    aput v2, v0, v4

    aput v2, v0, v5

    aput v2, v0, v6

    new-instance v2, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v2, v5, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v5, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    invoke-direct {v1, v5, v0}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-array v4, v4, [I

    const v5, 0x10100a7

    aput v5, v4, v3

    invoke-virtual {v0, v4, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    new-array v1, v3, [I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/external/i;->a(Landroid/view/View;I)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/b/b/j;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    iget-boolean v0, p0, Lcom/uzmap/pkg/b/b/j;->b:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/j;->b()V

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public show()V
    .locals 10

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/uzmap/pkg/b/b/j;->b:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x2

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/uzmap/pkg/b/b/j$1;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/b/b/j$1;-><init>(Lcom/uzmap/pkg/b/b/j;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0x15e

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/j;->a:Lcom/uzmap/pkg/b/b/j$a;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/b/b/j$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
