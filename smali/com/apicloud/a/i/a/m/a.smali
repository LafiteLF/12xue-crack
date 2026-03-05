.class public Lcom/apicloud/a/i/a/m/a;
.super Lcom/apicloud/a/i/a/r/n;


# instance fields
.field a:Lcom/apicloud/a/i/a/r/v;

.field private d:Lcom/apicloud/c/a/a/n;

.field private e:Lcom/apicloud/a/i/a/m/b;

.field private f:I

.field private g:I

.field private h:F


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/r/n;-><init>(Lcom/apicloud/a/d;)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->g:I

    const/high16 p1, -0x31000000

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->h:F

    sget-object p1, Lcom/apicloud/a/i/a/r/v;->a:Lcom/apicloud/a/i/a/r/v;

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/a;->a:Lcom/apicloud/a/i/a/r/v;

    return-void
.end method

.method private O()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/m/b;->a()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/m/a;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    div-int/2addr v1, v0

    if-gtz v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/m/a;->r(I)V

    return-void
.end method

.method private P()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n;->g()I

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/m/a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/a;->O()V

    return-void
.end method

.method private r(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/n;->g()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/b;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n;->b(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/m/a;->q()Lcom/apicloud/c/a/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    return-void
.end method

.method private s(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/b;->b(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/n;->e(I)V

    return-void
.end method


# virtual methods
.method public a()F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->h:F

    return v0
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->h:F

    return-void
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->g:I

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/m/a;->r(I)V

    return-void
.end method

.method protected a(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/n;->a(II)V

    return-void
.end method

.method public a(Landroid/graphics/RectF;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/b;->a(Landroid/graphics/RectF;)V

    return-void
.end method

.method protected a(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/r/n;->a(Lcom/apicloud/a/d;)V

    new-instance p1, Lcom/apicloud/a/i/a/m/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/m/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/a;->a(Lcom/apicloud/c/a/a/j$h;)V

    new-instance p1, Lcom/apicloud/a/i/a/m/b;

    invoke-direct {p1}, Lcom/apicloud/a/i/a/m/b;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/a;->a(Lcom/apicloud/c/a/a/j$g;)V

    const/16 p1, 0xa

    invoke-static {p1}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/a;->c(I)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/a;->d(I)V

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/m/a;->s(I)V

    new-instance p1, Lcom/apicloud/a/i/a/r/r;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/m/a;->H()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Lcom/apicloud/a/i/a/r/r;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/r/n;)V

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/m/a;->a(Lcom/apicloud/a/i/a/r/r;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/r/v;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/m/a;->a:Lcom/apicloud/a/i/a/r/v;

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    return v0
.end method

.method public final b(I)V
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->g:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/a;->O()V

    :cond_1
    return-void
.end method

.method public c(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/b;->a(F)V

    return-void
.end method

.method protected final c()[I
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/a;->P()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/n;->a([I)[I

    return-object v0
.end method

.method public d(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/m/a;->e:Lcom/apicloud/a/i/a/m/b;

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/m/b;->b(F)V

    return-void
.end method

.method protected final d()[I
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/a;->P()I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-array v0, v0, [I

    iget-object v1, p0, Lcom/apicloud/a/i/a/m/a;->d:Lcom/apicloud/c/a/a/n;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/n;->b([I)[I

    return-object v0
.end method

.method public e(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/m/a;->s(I)V

    return-void
.end method

.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected final f()I
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/m/a;->P()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Lcom/apicloud/a/i/a/r/n;->onAttachedToWindow()V

    iget v0, p0, Lcom/apicloud/a/i/a/m/a;->f:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/m/a$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/m/a$1;-><init>(Lcom/apicloud/a/i/a/m/a;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/m/a;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
