.class public Lcom/uzmap/pkg/uzcore/f/b;
.super Landroid/widget/FrameLayout;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/f/b$a;,
        Lcom/uzmap/pkg/uzcore/f/b$b;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Lcom/uzmap/pkg/uzcore/f/b$b;

.field private c:J

.field private d:Z

.field private e:Ljava/lang/Object;

.field private f:Lcom/uzmap/pkg/uzcore/f/a;

.field private g:Lcom/uzmap/pkg/uzcore/f/b$a;

.field private h:Z

.field private i:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->c:J

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/b$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/b$1;-><init>(Lcom/uzmap/pkg/uzcore/f/b;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->i:Ljava/lang/Runnable;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->a(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f/b;)Lcom/uzmap/pkg/uzcore/f/a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    return-object p0
.end method

.method private a(I)V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/a;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/f/a;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/f/a;->setTextColor(I)V

    const/16 p1, 0xe

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    invoke-virtual {v1, p1, v0, p1, v0}, Lcom/uzmap/pkg/uzcore/f/a;->setPadding(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v0, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;F)V

    const/4 v0, -0x2

    invoke-static {v0, v0}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/4 v1, 0x5

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x1e

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/b/a/c;->a(Landroid/content/Context;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f/a;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/b$3;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/b$3;-><init>(Lcom/uzmap/pkg/uzcore/f/b;)V

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/f/a;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/f/a;->a()V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->i:Ljava/lang/Runnable;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/f/b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private a(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->setClickable(Z)V

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a;->b()Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->h:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/c/a;->a()Lcom/deepe/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/deepe/c/a;->c()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/b/b/b;->c(Ljava/lang/String;)Lcom/deepe/b/b/b;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/deepe/b/b/b;->e:Ljava/lang/String;

    :try_start_0
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v2, v0, Lcom/deepe/b/b/b;->a:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    iput-wide v4, p0, Lcom/uzmap/pkg/uzcore/f/b;->c:J

    iget-object v2, v0, Lcom/deepe/b/b/b;->b:Ljava/lang/Object;

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/f/b;->e:Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v3, v1

    :catch_1
    move-object v0, v1

    :goto_0
    move-object v1, v3

    goto :goto_1

    :cond_0
    move-object v0, v1

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/g;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    const/4 v2, -0x1

    if-eqz v1, :cond_5

    new-instance v3, Landroid/widget/ImageView;

    invoke-direct {v3, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/deepe/a/b/d;->c(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->isTablet(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    goto :goto_3

    :cond_4
    :goto_2
    sget-object v4, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {v2, v2}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/f/b;->addView(Landroid/view/View;)V

    :cond_5
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/d;->o()Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/uzmap/pkg/uzcore/f/b$b;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/f/b$b;-><init>(Lcom/uzmap/pkg/uzcore/f/b;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    invoke-static {v2, v2}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/f/b$b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->addView(Landroid/view/View;)V

    :cond_6
    if-eqz v0, :cond_7

    iget p1, v0, Lcom/deepe/b/b/b;->a:I

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->a(I)V

    :cond_7
    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f/b;Lcom/uzmap/pkg/uzcore/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->b(Lcom/uzmap/pkg/uzcore/c;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/f/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->c(Z)V

    return-void
.end method

.method static synthetic b(Lcom/uzmap/pkg/uzcore/f/b;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/b;->i:Ljava/lang/Runnable;

    return-object p0
.end method

.method private b(Lcom/uzmap/pkg/uzcore/c;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/b$5;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/f/b$5;-><init>(Lcom/uzmap/pkg/uzcore/f/b;Lcom/uzmap/pkg/uzcore/c;)V

    const-wide/16 v1, 0x3e8

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/f/b;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic c(Lcom/uzmap/pkg/uzcore/f/b;)Lcom/uzmap/pkg/uzcore/f/b$a;
    .locals 0

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/f/b;->g:Lcom/uzmap/pkg/uzcore/f/b$a;

    return-object p0
.end method

.method private c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->g:Lcom/uzmap/pkg/uzcore/f/b$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/f/b$a;->a(Z)V

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->i:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method static synthetic d(Lcom/uzmap/pkg/uzcore/f/b;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/f/b;->f()V

    return-void
.end method

.method private f()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/e/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/uzmap/pkg/uzcore/e/e;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/e/e;-><init>()V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lcom/deepe/c/c;->a(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/uzcore/c;)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->b:Lcom/uzmap/pkg/uzcore/f/b$b;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/uzmap/pkg/uzcore/z;->g:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance p1, Landroid/view/animation/AlphaAnimation;

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/c;->b:Landroid/view/animation/Animation;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/c;->a:Landroid/view/animation/Animation;

    move-object p1, v0

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->b(Z)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->f:Lcom/uzmap/pkg/uzcore/f/a;

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->n()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->getContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "\u5f3a\u5236\u5173\u95ed"

    const-string v1, "\u60a8\u7684Loader\u5df2\u957f\u8fbe\u4e00\u4e2a\u6708\u672a\u66f4\u65b0\n\u91cd\u65b0\u4e3a\u672c\u5e94\u7528\u7f16\u8bd1\u81ea\u5b9a\u4e49Loader\u5427"

    const-string v2, "\u9000\u51fa"

    invoke-virtual {p1, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/e;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/f/b$a;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/f/b;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->setClickable(Z)V

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->g:Lcom/uzmap/pkg/uzcore/f/b$a;

    new-instance p1, Lcom/uzmap/pkg/uzcore/f/b$2;

    invoke-direct {p1, p0}, Lcom/uzmap/pkg/uzcore/f/b$2;-><init>(Lcom/uzmap/pkg/uzcore/f/b;)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/f/b;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->d:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->d:Z

    return v0
.end method

.method public b(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->a:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/f/b;->a:Z

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->h:Z

    return v0
.end method

.method public c()J
    .locals 2

    iget-wide v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->c:J

    return-wide v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/f/b;->a:Z

    return v0
.end method

.method protected onAnimationEnd()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationEnd()V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->setVisibility(I)V

    new-instance v0, Lcom/uzmap/pkg/uzcore/f/b$4;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/f/b$4;-><init>(Lcom/uzmap/pkg/uzcore/f/b;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/f/b;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onAnimationStart()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAnimationStart()V

    return-void
.end method
