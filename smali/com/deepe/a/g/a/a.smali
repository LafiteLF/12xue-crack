.class public abstract Lcom/deepe/a/g/a/a;
.super Landroid/app/Dialog;

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/g/a/a$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Lcom/deepe/a/g/a/a$a;

.field private d:Lcom/deepe/a/g/a/g;

.field private e:Lcom/deepe/a/g/a/d;

.field private f:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    const v0, 0x1030132

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/a/a;->b:Z

    new-instance v1, Lcom/deepe/a/g/a/g;

    invoke-direct {v1}, Lcom/deepe/a/g/a/g;-><init>()V

    iput-object v1, p0, Lcom/deepe/a/g/a/a;->d:Lcom/deepe/a/g/a/g;

    new-instance v1, Lcom/deepe/a/g/a/d;

    invoke-direct {v1}, Lcom/deepe/a/g/a/d;-><init>()V

    iput-object v1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iput-object p1, p0, Lcom/deepe/a/g/a/a;->f:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a/a;->requestWindowFeature(I)Z

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    const/16 v1, 0x57

    invoke-virtual {v0, v1}, Landroid/view/Window;->setGravity(I)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xe

    if-lt v1, v2, :cond_0

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/view/Window;->setDimAmount(F)V

    :cond_0
    invoke-virtual {p0, p0}, Lcom/deepe/a/g/a/a;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/deepe/a/g/a/a;->setCanceledOnTouchOutside(Z)V

    new-instance v0, Lcom/deepe/a/g/a/a$a;

    invoke-direct {v0, p0, p1}, Lcom/deepe/a/g/a/a$a;-><init>(Lcom/deepe/a/g/a/a;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    new-instance p1, Lcom/deepe/a/g/a/a$1;

    invoke-direct {p1, p0}, Lcom/deepe/a/g/a/a$1;-><init>(Lcom/deepe/a/g/a/a;)V

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/g;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a;->d:Lcom/deepe/a/g/a/g;

    return-object p0
.end method

.method private a(I)V
    .locals 10

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/a/a;->a:Z

    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x2

    const/high16 v9, 0x3f800000    # 1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    new-instance v1, Lcom/deepe/a/g/a/a$3;

    invoke-direct {v1, p0, p1}, Lcom/deepe/a/g/a/a$3;-><init>(Lcom/deepe/a/g/a/a;I)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    invoke-virtual {p1, v0}, Lcom/deepe/a/g/a/a$a;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private a(Landroid/widget/LinearLayout;)V
    .locals 13

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v0, v0, Lcom/deepe/a/g/a/d;->d:Ljava/util/List;

    iget-object v1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    invoke-virtual {v1}, Lcom/deepe/a/g/a/d;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v3, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v3, v3, Lcom/deepe/a/g/a/d;->b:Ljava/lang/String;

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object v3, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    invoke-virtual {v3}, Lcom/deepe/a/g/a/d;->b()Z

    move-result v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_0

    :cond_2
    move v4, v2

    :goto_0
    add-int/lit8 v5, v4, -0x1

    move v6, v2

    :goto_1
    if-lt v6, v4, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v7, ""

    :cond_4
    const/4 v8, 0x1

    if-nez v6, :cond_5

    if-nez v3, :cond_5

    move v9, v2

    goto :goto_2

    :cond_5
    if-ne v6, v5, :cond_6

    const/4 v9, 0x2

    goto :goto_2

    :cond_6
    move v9, v8

    :goto_2
    if-nez v6, :cond_8

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v10, v2

    goto :goto_4

    :cond_8
    :goto_3
    sget v10, Lcom/deepe/a/g/a/g;->a:I

    :goto_4
    if-nez v6, :cond_9

    if-eqz v1, :cond_9

    new-instance v11, Lcom/deepe/a/g/a/e;

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12, v9, v8}, Lcom/deepe/a/g/a/e;-><init>(Landroid/content/Context;IZ)V

    goto :goto_5

    :cond_9
    new-instance v11, Lcom/deepe/a/g/a/e;

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v11, v8, v9, v2}, Lcom/deepe/a/g/a/e;-><init>(Landroid/content/Context;IZ)V

    :goto_5
    invoke-virtual {v11, v6}, Lcom/deepe/a/g/a/e;->a(I)V

    invoke-virtual {v11, v7}, Lcom/deepe/a/g/a/e;->a(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/deepe/a/g/a/a;->d:Lcom/deepe/a/g/a/g;

    invoke-static {v11, v7}, Lcom/deepe/a/g/a/a;->b(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V

    const/4 v7, -0x1

    const/4 v8, -0x2

    invoke-static {v7, v8}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v7

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v11, v7}, Lcom/deepe/a/g/a/e;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p1, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v7, Lcom/deepe/a/g/a/a$4;

    invoke-direct {v7, p0, v11}, Lcom/deepe/a/g/a/a$4;-><init>(Lcom/deepe/a/g/a/a;Lcom/deepe/a/g/a/e;)V

    invoke-virtual {v11, v7}, Lcom/deepe/a/g/a/e;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/a;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a;Landroid/widget/LinearLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/a;->a(Landroid/widget/LinearLayout;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/a;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/g/a/a;->a:Z

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/a/g/a/a;->b(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    return-object p0
.end method

.method private b(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/g/a/a;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/a/a;->a:Z

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/a;->a(I)V

    return-void
.end method

.method private static b(Lcom/deepe/a/g/a/h;Lcom/deepe/a/g/a/g;)V
    .locals 2

    iget v0, p1, Lcom/deepe/a/g/a/g;->g:I

    iget v1, p1, Lcom/deepe/a/g/a/g;->h:I

    invoke-virtual {p0, v0, v1}, Lcom/deepe/a/g/a/h;->b(II)V

    iget v0, p1, Lcom/deepe/a/g/a/g;->e:I

    iget p1, p1, Lcom/deepe/a/g/a/g;->f:I

    invoke-virtual {p0, v0, p1}, Lcom/deepe/a/g/a/h;->a(II)V

    return-void
.end method

.method static synthetic c(Lcom/deepe/a/g/a/a;)Lcom/deepe/a/g/a/a$a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    return-object p0
.end method

.method static synthetic d(Lcom/deepe/a/g/a/a;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method static synthetic e(Lcom/deepe/a/g/a/a;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/deepe/a/g/a/a;->f:Landroid/content/Context;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v0, v0, Lcom/deepe/a/g/a/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    iget-object v1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v1, v1, Lcom/deepe/a/g/a/d;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public abstract a(Landroid/content/DialogInterface;I)V
.end method

.method public a(Lcom/deepe/a/g/a/d;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->d()V

    iput-object p1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->a()V

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->b()V

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->c()V

    return-void
.end method

.method public a(Lcom/deepe/a/g/a/g;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/g/a/a;->d:Lcom/deepe/a/g/a/g;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/a/g/a/a;->b:Z

    return-void
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v0, v0, Lcom/deepe/a/g/a/d;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    iget-object v1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v1, v1, Lcom/deepe/a/g/a/d;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a/a$a;->b(Ljava/lang/String;)V

    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    iget-object v0, v0, Lcom/deepe/a/g/a/d;->d:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    invoke-virtual {v0}, Lcom/deepe/a/g/a/a$a;->a()V

    return-void
.end method

.method public d()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/g/a/a;->d:Lcom/deepe/a/g/a/g;

    iget v0, v0, Lcom/deepe/a/g/a/g;->d:I

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setDimAmount(F)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    const/4 v0, -0x1

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/deepe/c/b/e;->a(II)Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/deepe/a/g/a/a;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

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

    if-ne p1, v0, :cond_2

    iget-boolean v0, p0, Lcom/deepe/a/g/a/a;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepe/a/g/a/a;->b:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    invoke-virtual {v0}, Lcom/deepe/a/g/a/d;->a()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/deepe/a/g/a/a;->b(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/a/g/a/a;->f:Landroid/content/Context;

    invoke-static {p1}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p1

    new-instance v0, Lcom/deepe/a/g/a/a$2;

    invoke-direct {v0, p0}, Lcom/deepe/a/g/a/a$2;-><init>(Lcom/deepe/a/g/a/a;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean p1, p0, Lcom/deepe/a/g/a/a;->a:Z

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/deepe/a/g/a/a;->b:Z

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/a/g/a/a;->e:Lcom/deepe/a/g/a/d;

    invoke-virtual {p1}, Lcom/deepe/a/g/a/d;->a()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/a;->b(I)V

    :cond_1
    :goto_0
    return v0
.end method

.method public show()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/g/a/a;->a:Z

    invoke-super {p0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/deepe/a/g/a/a;->c:Lcom/deepe/a/g/a/a$a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/16 v1, 0x50

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/View;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/deepe/a/g/a/a;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
