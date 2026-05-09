.class public Lcom/uzmap/pkg/uzcore/h/aa;
.super Lcom/uzmap/pkg/uzcore/h/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/h/aa$a;
    }
.end annotation


# static fields
.field static c:I = -0x1


# instance fields
.field private d:Lcom/uzmap/pkg/uzcore/h/aa$a;

.field private e:I

.field private f:Lcom/uzmap/pkg/uzcore/h/m;

.field private g:Lcom/uzmap/pkg/uzcore/h/s;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/c;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->e:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->setClipChildren(Z)V

    return-void
.end method

.method private a(Lcom/uzmap/pkg/uzcore/h/k;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/o;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/h/k;)Lcom/uzmap/pkg/uzcore/h/o;

    move-result-object p1

    iput p2, p1, Lcom/uzmap/pkg/uzcore/h/o;->a:I

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->setId(I)V

    invoke-virtual {p1, p0}, Lcom/uzmap/pkg/uzcore/h/o;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-direct {p2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x50

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p2, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzcore/h/o;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzcore/h/s;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a(ILcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-virtual {v0, p1, p2, v1}, Lcom/uzmap/pkg/uzcore/h/s;->a(ILcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/s;->a(ILjava/lang/String;)V

    return-void
.end method

.method public final a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/s;->a(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/h/aa$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->d:Lcom/uzmap/pkg/uzcore/h/aa$a;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 3

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    new-instance v0, Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/h/s;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v1

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x50

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzcore/h/s;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->addView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->setOrientation(I)V

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/m;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_1

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/h/m;->p:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcom/uzmap/pkg/uzcore/h/m;->p:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p1, Lcom/uzmap/pkg/uzcore/h/m;->p:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/h/k;

    invoke-direct {p0, v2, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Lcom/uzmap/pkg/uzcore/h/k;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p1, p1, Lcom/uzmap/pkg/uzcore/h/m;->m:I

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->c(I)V

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b/s;)V
    .locals 4

    const-string v0, "index"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(ILjava/lang/String;)V

    :cond_0
    const-string v1, "iconPath"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "selectedIconPath"

    if-eqz v2, :cond_1

    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/h/aa;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "badge"

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/s;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(ILcom/uzmap/pkg/uzcore/uzmodule/b;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 3

    const-string v0, "index"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->c(I)V

    :cond_0
    const-string v0, "url"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Ljava/lang/String;)V

    :cond_1
    const-string v0, "color"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "selectedColor"

    if-eqz v1, :cond_2

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/h/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v0, "fontSize"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->d(I)V

    :cond_4
    const-string v0, "textOffset"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/aa;->e(I)V

    :cond_5
    const-string v0, "background"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "shadow"

    if-eqz v1, :cond_6

    invoke-interface {p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/m;->b(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->c(I)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iput-object p1, v0, Lcom/uzmap/pkg/uzcore/h/m;->a:Ljava/lang/String;

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    const v0, -0x222223

    invoke-static {p2, v0}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/uzmap/pkg/uzcore/h/m;->b:I

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/h/m;->b()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final a(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->a()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/c;->a(ZZ)V

    if-eqz p1, :cond_2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/b;->a(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;

    :cond_1
    const/16 p1, 0x8

    goto :goto_0

    :cond_2
    if-eqz p2, :cond_3

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/b;->b(Landroid/view/View;)Landroid/view/animation/TranslateAnimation;

    :cond_3
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->setVisibility(I)V

    return-void
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->c()I

    move-result v0

    return v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x1000000

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-static {p1, v1}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result p1

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/m;->c:I

    :cond_0
    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    invoke-static {p2, v1}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/uzmap/pkg/uzcore/h/m;->d:I

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iget p2, p2, Lcom/uzmap/pkg/uzcore/h/m;->c:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->d:I

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/h/s;->a(II)V

    return-void
.end method

.method public c()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iget v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->h:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x36

    :goto_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result v0

    return v0
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->a(I)V

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->e:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->d:Lcom/uzmap/pkg/uzcore/h/aa$a;

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa$a;->b(I)V

    :cond_1
    return-void
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/aa;->b()I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/h/s;->b()I

    move-result v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final d(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/m;->e:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->b(I)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iput p1, v0, Lcom/uzmap/pkg/uzcore/h/m;->n:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->g:Lcom/uzmap/pkg/uzcore/h/s;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/h/s;->c(I)V

    return-void
.end method

.method public final f(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->f:Lcom/uzmap/pkg/uzcore/h/m;

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/h/m;->o:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    iget-object p1, p1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;->X:Ljava/lang/String;

    return-object p1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/aa;->d:Lcom/uzmap/pkg/uzcore/h/aa$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/h/aa$a;->a(I)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/aa;->c(I)V

    return-void
.end method
