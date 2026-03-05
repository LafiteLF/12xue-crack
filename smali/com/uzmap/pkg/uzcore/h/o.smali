.class public Lcom/uzmap/pkg/uzcore/h/o;
.super Landroid/widget/FrameLayout;


# instance fields
.field a:I

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/uzmap/pkg/uzcore/h/b;

.field private e:Lcom/uzmap/pkg/uzcore/h/k;

.field private f:Z

.field private g:Z

.field private h:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->h:I

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/h/k;)Lcom/uzmap/pkg/uzcore/h/o;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/o;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/h/o;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Lcom/uzmap/pkg/uzcore/h/k;)V

    return-object v0
.end method

.method private a(Landroid/graphics/drawable/Drawable;Lcom/uzmap/pkg/uzcore/h/k;)V
    .locals 4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget v2, p2, Lcom/uzmap/pkg/uzcore/h/k;->m:I

    int-to-float v2, v2

    invoke-static {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(FII)Lcom/deepe/c/c/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v0, Lcom/deepe/c/c/ad;->a:F

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    iget v1, v0, Lcom/deepe/c/c/ad;->b:F

    float-to-int v1, v1

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    iget v0, v0, Lcom/deepe/c/c/ad;->b:F

    float-to-int v0, v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/aa;->b(I)I

    move-result v0

    iget v1, p2, Lcom/uzmap/pkg/uzcore/h/k;->h:I

    if-lt v0, v1, :cond_1

    const/16 v1, 0x51

    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v2, p2, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result v2

    add-int/2addr v2, v1

    iput v2, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/aa;->b(I)I

    move-result v1

    iget v2, p2, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    add-int v3, v1, v2

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->g:Z

    add-int/2addr v0, v3

    iget p2, p2, Lcom/uzmap/pkg/uzcore/h/k;->h:I

    sub-int/2addr v0, p2

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->h:I

    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/o;Landroid/graphics/drawable/Drawable;Lcom/uzmap/pkg/uzcore/h/k;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->a(Landroid/graphics/drawable/Drawable;Lcom/uzmap/pkg/uzcore/h/k;)V

    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzcore/h/k;)V
    .locals 2

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

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/k;->c()Landroid/graphics/drawable/StateListDrawable;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Landroid/graphics/drawable/Drawable;Lcom/uzmap/pkg/uzcore/h/k;)V

    return-void

    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzcore/h/o$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzcore/h/o$1;-><init>(Lcom/uzmap/pkg/uzcore/h/o;Lcom/uzmap/pkg/uzcore/h/k;)V

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/r;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/h/r$a;)V

    return-void
.end method

.method private b(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    const/4 v1, 0x1

    const/4 v2, -0x2

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/o;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/uzmap/pkg/uzcore/h/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/b;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/b;->a()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    div-int/lit8 v0, p1, 0x2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/b;->b()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/b;->c()I

    move-result v0

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setMinWidth(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/b;->setVisibility(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/b;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/b;->a()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/h/b;->getMinWidth()I

    move-result p2

    div-int/lit8 v0, p1, 0x2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/b;->b()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzcore/h/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    iget v3, v3, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzcore/h/b;->c()I

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v5}, Lcom/uzmap/pkg/uzcore/h/b;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout$LayoutParams;

    iget v5, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    if-ne p1, p2, :cond_1

    if-ne v0, v3, :cond_1

    if-eq v4, v5, :cond_2

    :cond_1
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p2, v2, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setMinWidth(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/b;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    const/16 v3, 0x11

    const/4 v4, 0x0

    const/16 v5, 0x8

    if-eqz v2, :cond_0

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/h/f;->a(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    :cond_0
    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/h/f;->a(Ljava/lang/String;)Z

    move-result p2

    const/16 v2, 0x51

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/f;->a(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iget p1, p1, Lcom/uzmap/pkg/uzcore/h/k;->l:I

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v4, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_1

    :cond_2
    const/4 p1, 0x5

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    const/4 p1, 0x1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/k;->l:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result p1

    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public a(II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/k;->c:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->d:I

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/h/k;->b()Landroid/content/res/ColorStateList;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method a(Lcom/uzmap/pkg/uzcore/h/k;)V
    .locals 3

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/o;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    const/16 v0, 0x1b

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result v0

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/o;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/o;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/k;->b()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    iget v2, p1, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    int-to-float v2, v2

    invoke-static {v0, v2, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    iget v1, p1, Lcom/uzmap/pkg/uzcore/h/k;->f:I

    invoke-static {v1}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/h/k;->g:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget v1, p1, Lcom/uzmap/pkg/uzcore/h/k;->l:I

    if-gez v1, :cond_0

    const/4 v1, 0x2

    :cond_0
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/o;->addView(Landroid/view/View;)V

    iget-object v0, p1, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/h/o;->b(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->b(Lcom/uzmap/pkg/uzcore/h/k;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V

    const-string p2, "text"

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzcore/h/o;->a(Z)V

    if-eqz p2, :cond_1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/h/k;->j:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput-object p2, p1, Lcom/uzmap/pkg/uzcore/h/k;->k:Ljava/lang/String;

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->b(Lcom/uzmap/pkg/uzcore/h/k;)V

    return-void
.end method

.method public final a(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/h/b;->getVisibility()I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->d:Lcom/uzmap/pkg/uzcore/h/b;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->g:Z

    return v0
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->h:I

    return v0
.end method

.method public b(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/k;->e:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    int-to-float p1, p1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->e:Lcom/uzmap/pkg/uzcore/h/k;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/h/k;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final isSelected()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->f:Z

    return v0
.end method

.method public final setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/o;->isSelected()Z

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setSelected(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/o;->b:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/o;->f:Z

    return-void
.end method
