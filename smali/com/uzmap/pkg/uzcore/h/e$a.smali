.class Lcom/uzmap/pkg/uzcore/h/e$a;
.super Landroid/widget/RelativeLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final a:I

.field final synthetic b:Lcom/uzmap/pkg/uzcore/h/e;

.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/widget/ProgressBar;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/view/animation/RotateAnimation;

.field private h:Landroid/view/animation/RotateAnimation;

.field private i:Z

.field private j:I

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/e;Landroid/content/Context;)V
    .locals 13

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->b:Lcom/uzmap/pkg/uzcore/h/e;

    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x111

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->a:I

    const v0, -0x927f67

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->j:I

    const v0, -0x441367

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->k:I

    sget-object v0, Lcom/deepe/b;->T:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->l:Ljava/lang/String;

    sget-object v0, Lcom/deepe/b;->U:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->m:Ljava/lang/String;

    sget-object v0, Lcom/deepe/b;->V:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->n:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->setFocusable(Z)V

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->k:I

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/e$a;->setBackgroundColor(I)V

    new-instance v1, Landroid/widget/RelativeLayout;

    invoke-direct {v1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    const/4 v2, 0x5

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v2

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v2, v3}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v4

    const/16 v5, 0xc

    invoke-virtual {v4, v5, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/e$a;->addView(Landroid/view/View;)V

    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-virtual {v4, p1}, Landroid/widget/LinearLayout;->setId(I)V

    const/16 v6, 0x11

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    invoke-static {v3, v3}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v6

    const/16 v7, 0xd

    invoke-virtual {v6, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    invoke-static {v3, v3}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    iget-object v8, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    iget v8, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->j:I

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    iget-object v8, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->l:Ljava/lang/String;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    const/high16 v8, 0x41700000    # 15.0f

    invoke-static {v6, v8, v0}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v6, Landroid/widget/TextView;

    invoke-direct {v6, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-static {v3, v3}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v3

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    iget v6, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->j:I

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    const/high16 v6, 0x41400000    # 12.0f

    invoke-static {v3, v6, v0}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    const/16 v6, 0x8

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v3, Landroid/widget/RelativeLayout;

    invoke-direct {v3, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/16 v4, 0x23

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v4

    invoke-static {v4, v4}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object v4

    const/16 v8, 0xa

    invoke-static {v8}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result v8

    iput v8, v4, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    const/16 v8, 0xf

    invoke-virtual {v4, v8, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v4, v0, p1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ProgressBar;

    invoke-direct {p1, p2}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v5}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/16 p1, 0x19

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->dipToPix(I)I

    move-result p1

    invoke-static {p1, p1}, Lcom/deepe/c/b/e;->d(II)Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {p1, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/widget/ImageView;

    invoke-direct {p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-static {}, Lcom/deepe/c/b/e;->d()Lcom/uzmap/pkg/uzcore/h/y$a;

    move-result-object p1

    invoke-virtual {p1, v7, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v7, 0x0

    const/high16 v8, -0x3ccc0000    # -180.0f

    const/4 v9, 0x1

    const/high16 v10, 0x3f000000    # 0.5f

    const/4 v11, 0x1

    const/high16 v12, 0x3f000000    # 0.5f

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->h:Landroid/view/animation/RotateAnimation;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->h:Landroid/view/animation/RotateAnimation;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->h:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/high16 v7, -0x3ccc0000    # -180.0f

    const/4 v8, 0x0

    move-object v6, p1

    invoke-direct/range {v6 .. v12}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->g:Landroid/view/animation/RotateAnimation;

    new-instance p2, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {p2}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v0, v1}, Landroid/view/animation/RotateAnimation;->setDuration(J)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->g:Landroid/view/animation/RotateAnimation;

    invoke-virtual {p1, v5}, Landroid/view/animation/RotateAnimation;->setFillAfter(Z)V

    return-void
.end method

.method private a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/g;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/uzmap/pkg/b/c/e;->a(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/deepe/c/c/ae;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/c/ae;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private a(Z)V
    .locals 2

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->i:Z

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->i:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->o:Ljava/lang/String;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    sget-object v0, Lcom/deepe/b;->W:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    const/16 v0, 0x8

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->l:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e()V

    return-void
.end method

.method private c(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->clearAnimation()V

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->m:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->f()V

    return-void
.end method

.method private d()V
    .locals 3

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->i:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->o:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/deepe/b;->W:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private d(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->h:Landroid/view/animation/RotateAnimation;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->f:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->g:Landroid/view/animation/RotateAnimation;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_1
    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->n:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->g()V

    return-void
.end method

.method private e()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->l:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private e(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->e:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method private e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->o:Ljava/lang/String;

    return-void
.end method

.method private f()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->m:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private f(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/e$a;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->c(I)V

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->d()V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e()V

    return-void
.end method

.method public a(I)V
    .locals 3

    const/16 v0, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/h/e$a;->c(I)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e(I)V

    if-ne p1, v1, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->f()V

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/h/e$a;->d(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e()V

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzcore/h/e$a;->d(I)V

    :goto_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/p;)V
    .locals 1

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->c:I

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->g(I)V

    iget v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->d:I

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->setBackgroundColor(I)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->f:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->c(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->g:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->d(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->h:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e(Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->i:Z

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Z)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->e:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->b(Ljava/lang/String;)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/p;->b:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 1

    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->c(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->e(I)V

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->f(I)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/e$a;->g()V

    return-void
.end method

.method public b(I)V
    .locals 0

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Z)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/h/e$a;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
