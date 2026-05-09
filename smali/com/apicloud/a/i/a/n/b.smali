.class public Lcom/apicloud/a/i/a/n/b;
.super Landroid/widget/ImageView;

# interfaces
.implements Lcom/apicloud/a/i/a/g/a;
.implements Lcom/apicloud/a/i/d/b;


# static fields
.field public static a:I = 0x1

.field public static b:I = 0x2

.field public static c:I = 0x3

.field public static d:I = 0x1


# instance fields
.field private e:Z

.field private f:Z

.field private g:I

.field private h:I

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcom/apicloud/a/d;

.field private n:Lcom/apicloud/a/i/a/n/c;

.field private o:Z

.field private p:Lcom/apicloud/a/i/a/n/a;

.field private q:Lcom/deepe/c/c/ab;

.field private r:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-interface {p1}, Lcom/apicloud/a/d;->n()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->f:Z

    sget v0, Lcom/apicloud/a/i/a/n/b;->d:I

    iput v0, p0, Lcom/apicloud/a/i/a/n/b;->g:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/n/b;->h:I

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->o:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    iput v0, p0, Lcom/apicloud/a/i/a/n/b;->r:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b;->m:Lcom/apicloud/a/d;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/n/b;->j()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/n/b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/b;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/n/b;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/n/b;->a(ZII)V

    return-void
.end method

.method private a(ZII)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->n:Lcom/apicloud/a/i/a/n/c;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0, p2, p3}, Lcom/apicloud/a/i/a/n/c;->a(II)V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/apicloud/a/i/a/n/c;->a()V

    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/n/b;->h:I

    return-void
.end method

.method private b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/n/b;->e:Z

    return-void
.end method

.method public static d(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "default"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/apicloud/a/i/a/n/b;->d:I

    return p0

    :sswitch_1
    const-string v0, "no_cache"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    sget p0, Lcom/apicloud/a/i/a/n/b;->b:I

    return p0

    :sswitch_2
    const-string v0, "cache_only"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    sget p0, Lcom/apicloud/a/i/a/n/b;->c:I

    return p0

    :sswitch_3
    const-string v0, "cache_else_network"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    sget p0, Lcom/apicloud/a/i/a/n/b;->a:I

    return p0

    :cond_4
    :goto_0
    sget p0, Lcom/apicloud/a/i/a/n/b;->d:I

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x73c2c5 -> :sswitch_3
        0x1b98a49 -> :sswitch_2
        0x3a520b84 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch
.end method

.method private e(Ljava/lang/String;)V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->f()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->m:Lcom/apicloud/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/b;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/n/b;->m:Lcom/apicloud/a/d;

    invoke-interface {v1}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v1

    new-instance v2, Lcom/apicloud/a/i/a/n/b$2;

    invoke-direct {v2, p0, p0, v0}, Lcom/apicloud/a/i/a/n/b$2;-><init>(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;)V

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private j()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/b;->setAdjustViewBounds(Z)V

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/n/b;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/b;->setCropToPadding(Z)V

    return-void
.end method

.method private k()V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget v1, p0, Lcom/apicloud/a/i/a/n/b;->r:I

    invoke-static {v0, v1}, Lcom/deepe/c/c/c;->a(Landroid/graphics/drawable/Drawable;I)V

    :cond_0
    return-void
.end method

.method private l()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->m:Lcom/apicloud/a/d;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/apicloud/a/i/a/n/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->i:Ljava/lang/String;

    iput-object v0, p0, Lcom/apicloud/a/i/a/n/b;->j:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/b;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->g()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Lcom/deepe/c/c/s;->b:I

    iput v2, v1, Lcom/deepe/c/c/s;->c:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->d()Z

    move-result v2

    iput-boolean v2, v1, Lcom/deepe/c/c/s;->g:Z

    iget v2, p0, Lcom/apicloud/a/i/a/n/b;->g:I

    iput v2, v1, Lcom/deepe/c/c/s;->h:I

    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/n/b;->b(I)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/n/b;->m:Lcom/apicloud/a/d;

    invoke-interface {v2}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v2

    new-instance v3, Lcom/apicloud/a/i/a/n/b$1;

    invoke-direct {v3, p0, p0, v0}, Lcom/apicloud/a/i/a/n/b$1;-><init>(Lcom/apicloud/a/i/a/n/b;Lcom/apicloud/a/i/a/n/b;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v3}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lcom/apicloud/a/i/a/n/c;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->n:Lcom/apicloud/a/i/a/n/c;

    return-object v0
.end method

.method public final a(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->q:Lcom/deepe/c/c/ab;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/c/ab;

    invoke-direct {v0}, Lcom/deepe/c/c/ab;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/n/b;->q:Lcom/deepe/c/c/ab;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->q:Lcom/deepe/c/c/ab;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/deepe/c/c/ab;->a(FFFF)V

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/n/b;->r:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/n/b;->k()V

    return-void
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/n/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/b;->b(Z)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/n/b;->k()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/b;->b(Z)V

    :goto_0
    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/n/a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/n/a;->a()Landroid/widget/ImageView$ScaleType;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/n/c;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b;->n:Lcom/apicloud/a/i/a/n/c;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b;->i:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/n/b;->b(I)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/n/b;->o:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/n/b;->l()V

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/n/b;->f:Z

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->i:Ljava/lang/String;

    return-object v0
.end method

.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/n/b;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/n/b;->k:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->g()V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/a/n/b;->d(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/a/n/b;->g:I

    return-void
.end method

.method public final c()Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/n/b;->r:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->f:Z

    return v0
.end method

.method public final e()Landroid/graphics/Bitmap;
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/c;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->e:Z

    return v0
.end method

.method g()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->k:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/n/b;->e(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method h()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->l:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/n/b;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->j(F)V

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->l(I)V

    invoke-static {}, Lcom/deepe/c/k/j;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/n/b;->b(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method

.method i()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/n/b;->h:I

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/ImageView;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p1}, Lcom/deepe/c/c/c;->b(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->requestLayout()V

    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->o:Z

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    sget-object v0, Lcom/apicloud/a/i/a/n/a;->d:Lcom/apicloud/a/i/a/n/a;

    iget-object v1, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/n/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/high16 v1, -0x3fc00000    # -3.0f

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->k(F)V

    :cond_0
    sget-object v0, Lcom/apicloud/a/i/a/n/a;->e:Lcom/apicloud/a/i/a/n/a;

    iget-object v2, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {v0, v2}, Lcom/apicloud/a/i/a/n/a;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->j(F)V

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/apicloud/c/b/b;->l(I)V

    :cond_1
    invoke-direct {p0}, Lcom/apicloud/a/i/a/n/b;->l()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/n/b;->o:Z

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getPaddingLeft()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScrollX()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getRight()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScrollY()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getBottom()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    new-instance v4, Landroid/graphics/RectF;

    int-to-float v0, v0

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-direct {v4, v0, v1, v2, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, v4}, Lcom/deepe/c/c/ab;->b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->q:Lcom/deepe/c/c/ab;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, v4}, Lcom/deepe/c/c/ab;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public requestLayout()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/i/a/i/b;

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/i/b;->c(Landroid/view/View;)V

    :cond_0
    invoke-super {p0}, Landroid/widget/ImageView;->requestLayout()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/c/c;->a(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    if-eq v0, v1, :cond_1

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    :goto_0
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/n/b;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/n/a;->a(Landroid/widget/ImageView$ScaleType;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/n/b;->p:Lcom/apicloud/a/i/a/n/a;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/n/a;->a()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    goto :goto_0

    :cond_1
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[image]"

    return-object v0
.end method
