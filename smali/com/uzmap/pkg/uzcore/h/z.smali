.class public Lcom/uzmap/pkg/uzcore/h/z;
.super Lcom/uzmap/pkg/uzcore/h/c;


# instance fields
.field private c:Landroid/widget/TextView;

.field private d:Landroid/widget/FrameLayout;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/LinearLayout;

.field private g:Landroid/widget/LinearLayout;

.field private h:Lcom/uzmap/pkg/uzcore/h/l;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/h/k;IILcom/uzmap/pkg/uzcore/h/l;)Landroid/view/View;
    .locals 2

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/q;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/h/q;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/h/k;)V

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->setId(I)V

    const/4 p2, 0x3

    if-ne p3, p2, :cond_0

    const-string p2, "left"

    goto :goto_0

    :cond_0
    const-string p2, "right"

    :goto_0
    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->setTag(Ljava/lang/Object;)V

    iget p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    int-to-float p2, p2

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->a(F)V

    iget p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->b(I)V

    iget-object p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object p2, p4, Lcom/uzmap/pkg/uzcore/h/l;->g:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->a(Ljava/lang/String;)V

    iget p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->a(I)V

    iget-object p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->c(Ljava/lang/String;)V

    const/16 p2, 0x11

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->setGravity(I)V

    const/16 p2, 0x1e

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result p2

    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/h/q;->c(I)V

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/q;->b(Ljava/lang/String;)V

    return-object v0
.end method

.method private a(Lcom/uzmap/pkg/uzcore/h/k;Landroid/widget/TextView;)V
    .locals 3

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/f;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/h/k;->a(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iget p1, p1, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    int-to-float p1, p1

    invoke-static {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/h/r;->a(FII)Lcom/deepe/c/c/ad;

    move-result-object p1

    iget v1, p1, Lcom/deepe/c/c/ad;->a:F

    float-to-int v1, v1

    iget p1, p1, Lcom/deepe/c/c/ad;->b:F

    float-to-int p1, p1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 p1, 0x0

    invoke-virtual {p2, v0, p1, p1, p1}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzcore/h/z$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/z$2;-><init>(Lcom/uzmap/pkg/uzcore/h/z;Lcom/uzmap/pkg/uzcore/h/k;Landroid/widget/TextView;)V

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/h/r$a;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/z;)V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/z;->e()V

    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzcore/h/l;)V
    .locals 8

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/l;->n:Ljava/util/List;

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->d(Lcom/uzmap/pkg/uzcore/h/l;)V

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    iput-boolean v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->d(Lcom/uzmap/pkg/uzcore/h/l;)V

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p1, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->d(Lcom/uzmap/pkg/uzcore/h/l;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    const/4 v4, -0x1

    const/4 v5, -0x2

    if-nez v3, :cond_2

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v5, v4}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v3

    const v6, 0x800003

    iput v6, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzcore/h/k;

    const/4 v6, 0x3

    invoke-direct {p0, v3, v2, v6, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/k;IILcom/uzmap/pkg/uzcore/h/l;)Landroid/view/View;

    move-result-object v3

    invoke-static {v5, v4}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    iput v1, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    invoke-virtual {v3, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/z;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private c(Lcom/uzmap/pkg/uzcore/h/l;)V
    .locals 8

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/l;->o:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    return-void

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    const/4 v2, -0x2

    const/4 v3, -0x1

    if-nez v1, :cond_2

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v1, v4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setOrientation(I)V

    invoke-static {v2, v3}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    const v4, 0x800005

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x1

    sub-int/2addr v1, v4

    :goto_1
    if-gez v1, :cond_3

    return-void

    :cond_3
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzcore/h/k;

    const/4 v6, 0x5

    invoke-direct {p0, v5, v1, v6, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/k;IILcom/uzmap/pkg/uzcore/h/l;)Landroid/view/View;

    move-result-object v5

    invoke-static {v2, v3}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v6

    iput v4, v6, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/16 v7, 0x8

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/uzmap/pkg/uzcore/h/z;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v5, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

.method private d(Lcom/uzmap/pkg/uzcore/h/l;)V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p1, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    sget v3, Lcom/uzmap/pkg/uzcore/h/z;->a:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setId(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    iget v3, p1, Lcom/uzmap/pkg/uzcore/h/l;->e:I

    int-to-float v3, v3

    invoke-static {v0, v3, v2}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->f:I

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->g:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->j:Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->j:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x5

    if-gt v2, v3, :cond_3

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->j:Ljava/lang/String;

    goto :goto_1

    :cond_3
    sget-object v2, Lcom/deepe/b;->y:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/l;->m:Lcom/uzmap/pkg/uzcore/h/j;

    if-eqz v0, :cond_4

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/h/l;->m:Lcom/uzmap/pkg/uzcore/h/j;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/h/z;->a(Lcom/uzmap/pkg/uzcore/h/k;Landroid/widget/TextView;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/b/m;->a(Landroid/content/Context;)Z

    move-result v0

    iget p1, p1, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/h/h;->a(ILandroid/content/res/Resources;)Lcom/uzmap/pkg/uzcore/h/h;

    move-result-object p1

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzcore/h/a;->a(ILandroid/content/res/Resources;)Lcom/uzmap/pkg/uzcore/h/a;

    move-result-object p1

    :goto_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setGravity(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    const/16 v0, 0x46

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMinWidth(I)V

    const/4 p1, -0x2

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/deepe/c/b/e;->c(II)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    const v0, 0x800003

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private e()V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getWidth()I

    move-result v2

    mul-int/lit8 v3, v0, 0x2

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    const/16 v3, 0x46

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/z;->e:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    if-lt v3, v4, :cond_1

    goto :goto_1

    :cond_1
    if-lt v1, v2, :cond_2

    const/16 v1, 0xf

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v1

    goto :goto_0

    :cond_2
    move v1, v5

    :goto_0
    add-int v3, v4, v1

    :goto_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v5, v0, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/l;)V
    .locals 4

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/z;->setOrientation(I)V

    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->c()I

    move-result v1

    const/4 v2, -0x1

    invoke-static {v2, v1}, Lcom/deepe/c/b/e;->b(II)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/z;->addView(Landroid/view/View;)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/l;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    sget v2, Lcom/uzmap/pkg/uzcore/h/z;->b:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setId(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->e:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->f:I

    invoke-static {v2}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->g:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/l;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    const/16 v1, 0x46

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v2

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v1

    invoke-virtual {v0, v2, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    sget-object v2, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Lcom/deepe/c/b/e;->b()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->b(Lcom/uzmap/pkg/uzcore/h/l;)V

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->c(Lcom/uzmap/pkg/uzcore/h/l;)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "color"

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/high16 v4, -0x1000000

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzcore/h/z;->c(I)V

    :cond_0
    const-string v3, "fontSize"

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzcore/h/z;->d(I)V

    :cond_1
    const-string v4, "fontFamily"

    invoke-interface {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-interface {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/uzmap/pkg/uzcore/h/z;->b(Ljava/lang/String;)V

    :cond_2
    const-string v5, "fontWeight"

    invoke-interface {v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-interface {v1, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/uzmap/pkg/uzcore/h/z;->e(I)V

    :cond_3
    const-string v6, "background"

    invoke-interface {v1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v8, "shadow"

    const/4 v9, 0x0

    if-eqz v7, :cond_4

    invoke-interface {v1, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    :cond_4
    invoke-interface {v1, v6, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v1, v8, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/uzmap/pkg/uzcore/h/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    const-string v6, "hideBackButton"

    invoke-interface {v1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v7

    const-string v10, "scale"

    const-string v11, "iconPath"

    const-string v13, "text"

    const-string v15, "leftButtons"

    if-eqz v7, :cond_6

    invoke-interface {v1, v15}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_a

    :cond_6
    invoke-interface {v1, v15}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v7

    if-eqz v7, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_7
    move-object v15, v9

    :goto_0
    if-eqz v7, :cond_9

    invoke-interface {v7}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v16

    if-lez v16, :cond_9

    const/4 v14, 0x0

    :goto_1
    invoke-interface {v7}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v8

    if-lt v14, v8, :cond_8

    goto :goto_2

    :cond_8
    invoke-interface {v7, v14}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v8

    new-instance v9, Lcom/uzmap/pkg/uzcore/h/k;

    iget-object v12, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-virtual {v12}, Lcom/uzmap/pkg/uzcore/h/l;->a()Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v12

    invoke-direct {v9, v12}, Lcom/uzmap/pkg/uzcore/h/k;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v8, v13}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    invoke-interface {v8, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v17, v7

    iget-object v7, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v7, v7, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-static {v12, v7}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v7

    iput v7, v9, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    const/16 v7, 0x11

    invoke-interface {v8, v3, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v9, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    const/4 v7, 0x0

    invoke-interface {v8, v4, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    iput-object v12, v9, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    invoke-interface {v8, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v7

    iput v7, v9, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    iget-object v7, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-interface {v8, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Lcom/uzmap/pkg/uzcore/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v9, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    const/4 v7, 0x4

    invoke-interface {v8, v10, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v8

    iput v8, v9, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    move-object/from16 v7, v17

    const/4 v9, 0x0

    goto :goto_1

    :cond_9
    :goto_2
    iget-object v7, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object v15, v7, Lcom/uzmap/pkg/uzcore/h/l;->n:Ljava/util/List;

    iget-object v7, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget-boolean v8, v7, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    invoke-interface {v1, v6, v8}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, v7, Lcom/uzmap/pkg/uzcore/h/l;->l:Z

    iget-object v6, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-direct {v0, v6}, Lcom/uzmap/pkg/uzcore/h/z;->b(Lcom/uzmap/pkg/uzcore/h/l;)V

    :cond_a
    const-string v6, "rightButtons"

    invoke-interface {v1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_d

    invoke-interface {v1, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v1

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_c

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v7

    if-lez v7, :cond_c

    const/4 v14, 0x0

    :goto_3
    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v7

    if-lt v14, v7, :cond_b

    goto :goto_4

    :cond_b
    invoke-interface {v1, v14}, Lcom/uzmap/pkg/uzcore/a/c;->c(I)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v7

    new-instance v8, Lcom/uzmap/pkg/uzcore/h/k;

    iget-object v9, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-virtual {v9}, Lcom/uzmap/pkg/uzcore/h/l;->a()Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/uzmap/pkg/uzcore/h/k;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-interface {v7, v13}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    invoke-interface {v7, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iget-object v12, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v12, v12, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    invoke-static {v9, v12}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v9

    iput v9, v8, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    const/16 v9, 0x11

    invoke-interface {v7, v3, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v12

    iput v12, v8, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    const/4 v12, 0x0

    invoke-interface {v7, v4, v12}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    iput-object v15, v8, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    invoke-interface {v7, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-static {v15}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;)I

    move-result v15

    iput v15, v8, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    iget-object v15, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-interface {v7, v11}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/uzmap/pkg/uzcore/h/l;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v8, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    const/4 v9, 0x4

    invoke-interface {v7, v10, v9}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v7

    iput v7, v8, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_c
    :goto_4
    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object v6, v1, Lcom/uzmap/pkg/uzcore/h/l;->o:Ljava/util/List;

    iget-object v1, v0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/h/z;->c(Lcom/uzmap/pkg/uzcore/h/l;)V

    :cond_d
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/h/l;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    const v0, -0x222223

    invoke-static {p2, v0}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/uzmap/pkg/uzcore/h/l;->b:I

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/l;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/4 p2, 0x0

    :goto_0
    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->a()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/c;->a(ZZ)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/b;->c(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;

    :cond_1
    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/b;->d(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/z;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/z;->c()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/z;->d:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr v0, v1

    return v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-static {v0, p1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/h/l;->g:Ljava/lang/String;

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/l;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/l;->h:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/z;->a(I)I

    move-result v0

    return v0
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/l;->c:I

    return-void
.end method

.method public d()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/l;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/l;->h:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x2d

    :goto_0
    return v0
.end method

.method public d(I)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    int-to-float v1, p1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/l;->e:I

    return-void
.end method

.method public e(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->c:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/z;->h:Lcom/uzmap/pkg/uzcore/h/l;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/l;->f:I

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/uzmap/pkg/uzcore/h/c;->onAttachedToWindow()V

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/z$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/z$1;-><init>(Lcom/uzmap/pkg/uzcore/h/z;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/z;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
