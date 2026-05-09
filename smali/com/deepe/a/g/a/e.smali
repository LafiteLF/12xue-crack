.class Lcom/deepe/a/g/a/e;
.super Lcom/deepe/a/g/a/h;


# instance fields
.field private final f:I

.field private g:I

.field private h:Z


# direct methods
.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/g/a/h;-><init>(Landroid/content/Context;)V

    iput p2, p0, Lcom/deepe/a/g/a/e;->f:I

    iput-boolean p3, p0, Lcom/deepe/a/g/a/e;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/a/g/a/e;->g:I

    return v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/a/g/a/e;->g:I

    return-void
.end method

.method public a(II)V
    .locals 3

    sget-object v0, Lcom/deepe/a/g/a/e;->d:[F

    iget v1, p0, Lcom/deepe/a/g/a/e;->f:I

    if-nez v1, :cond_0

    sget-object v0, Lcom/deepe/a/g/a/e;->b:[F

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    sget-object v0, Lcom/deepe/a/g/a/e;->c:[F

    :cond_1
    :goto_0
    invoke-static {v0, p1, p2}, Lcom/deepe/a/g/a/f;->a([FII)Landroid/graphics/drawable/StateListDrawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/e;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public b(II)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/a/g/a/e;->h:Z

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Lcom/deepe/a/g/a/h;->b(II)V

    return-void

    :cond_0
    const/high16 p1, -0x10000

    invoke-static {p1, p1}, Lcom/deepe/a/g/a/f;->a(II)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/a/g/a/e;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method
