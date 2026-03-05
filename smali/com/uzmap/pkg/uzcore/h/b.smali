.class public Lcom/uzmap/pkg/uzcore/h/b;
.super Landroid/widget/TextView;


# instance fields
.field private a:I

.field private b:Ljava/lang/CharSequence;

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:F

.field private h:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->c:I

    const/high16 p1, 0x41400000    # 12.0f

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->g:F

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->a(F)V

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setGravity(I)V

    const/high16 p1, -0x1000000

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setTextColor(I)V

    const/high16 p1, -0x10000

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setBackgroundColor(I)V

    const/4 p1, 0x2

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/aa;->a(I)I

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/uzmap/pkg/uzcore/h/b;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->d:I

    return v0
.end method

.method public a(F)V
    .locals 1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->g:F

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/deepe/c/k/e;->a(Landroid/widget/TextView;FZ)V

    return-void
.end method

.method public a(I)V
    .locals 2

    mul-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/b;->g:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/b;->a(F)V

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->d:I

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/h/m;)V
    .locals 8

    const-string v0, "x"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x5

    if-nez v1, :cond_0

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/b;->e:I

    if-eq v1, v0, :cond_1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->e:I

    :cond_1
    const-string v0, "y"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v2

    :cond_2
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result v0

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/b;->f:I

    if-eq v1, v0, :cond_3

    iput v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->f:I

    :cond_3
    const-string v0, "fontSize"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const/16 v1, 0xc

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/b;->a(F)V

    :cond_4
    const-string v0, "radius"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_1

    :cond_5
    const/16 v0, 0xa

    :goto_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/b;->a()I

    move-result v1

    if-eq v1, v0, :cond_6

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/b;->a(I)V

    :cond_6
    const-string v0, "color"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/h/b;->setTextColor(I)V

    :cond_7
    const-string v0, "background"

    invoke-interface {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/i/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    const/high16 p1, -0x10000

    invoke-static {v3, p1}, Lcom/uzmap/pkg/uzcore/h/x;->a(Ljava/lang/String;I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setBackgroundColor(I)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->h:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/h/b;->h:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p2

    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzcore/h/m;->a(Ljava/lang/String;IIII)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_9
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->b:Ljava/lang/CharSequence;

    invoke-super {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->e:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->f:I

    return v0
.end method

.method public setBackgroundColor(I)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->a:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->a:I

    new-instance p1, Landroid/graphics/drawable/PaintDrawable;

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/b;->a:I

    invoke-direct {p1, v0}, Landroid/graphics/drawable/PaintDrawable;-><init>(I)V

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/PaintDrawable;->setCornerRadius(F)V

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/b;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/b;->c:I

    invoke-super {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method
