.class public Lcom/apicloud/a/i/a/s/e;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/g/g;


# instance fields
.field private final a:F

.field private b:I

.field private c:Z

.field private d:Z

.field private g:I

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:I

.field private m:I

.field private n:F

.field private o:Z

.field private p:Z

.field private q:F

.field private r:F

.field private s:F

.field private t:Z

.field private u:Lcom/apicloud/a/i/a/g/h;

.field private v:Lcom/apicloud/a/i/a/s/d;

.field private w:Lcom/apicloud/a/i/a/s/h;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->a:F

    const/4 v0, 0x3

    iput v0, p0, Lcom/apicloud/a/i/a/s/e;->b:I

    const/16 v0, 0x14

    iput v0, p0, Lcom/apicloud/a/i/a/s/e;->g:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->h:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->k:Ljava/lang/Integer;

    const v1, 0x3ca3d70a    # 0.02f

    iput v1, p0, Lcom/apicloud/a/i/a/s/e;->n:F

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Lcom/apicloud/a/i/a/s/e;->q:F

    const/high16 v1, 0x41200000    # 10.0f

    iput v1, p0, Lcom/apicloud/a/i/a/s/e;->r:F

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->t:Z

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->w:Lcom/apicloud/a/i/a/s/h;

    return-void
.end method

.method private a(IZ)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/s/e;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getTop()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->e()I

    move-result p2

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e;->u:Lcom/apicloud/a/i/a/g/h;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/apicloud/a/i/a/g/h;->getHeight()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_2

    sub-int p1, v1, p2

    :cond_2
    return p1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/e;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/e;->b(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/e;->j:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/e;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->l:I

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->h:Ljava/lang/Integer;

    return-void
.end method

.method private b(IZ)I
    .locals 2

    if-nez p2, :cond_0

    const/4 p2, 0x2

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/s/e;->a(I)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getLeft()I

    move-result p1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->d()I

    move-result p2

    add-int v0, p1, p2

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/e;->u:Lcom/apicloud/a/i/a/g/h;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/apicloud/a/i/a/g/h;->getWidth()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-le v0, v1, :cond_2

    sub-int p1, v1, p2

    :cond_2
    return p1
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/s/e;IZ)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/s/e;->a(IZ)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/e;->k:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/s/e;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->m:I

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->j:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/s/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/e;->k()V

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->i:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/s/e;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/e;->l()V

    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/s/e;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->k:Ljava/lang/Integer;

    return-void
.end method

.method static synthetic e(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/e;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic f(Lcom/apicloud/a/i/a/s/e;)Ljava/lang/Integer;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/e;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method static synthetic g(Lcom/apicloud/a/i/a/s/e;)Lcom/apicloud/a/i/a/g/h;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/s/e;->u:Lcom/apicloud/a/i/a/g/h;

    return-object p0
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->u:Lcom/apicloud/a/i/a/g/h;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/s/e$3;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/s/e$3;-><init>(Lcom/apicloud/a/i/a/s/e;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/s/e;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private l()V
    .locals 3

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->d()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->e()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/s/e;->setRight(I)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/s/e;->setBottom(I)V

    return-void
.end method

.method private m()Lcom/apicloud/a/i/a/s/h;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->w:Lcom/apicloud/a/i/a/s/h;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/s/h;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/s/h;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->w:Lcom/apicloud/a/i/a/s/h;

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/a/s/h;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/s/h;-><init>(Landroid/view/View;)V

    return-object v0
.end method


# virtual methods
.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->q:F

    iget p1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/e;->c(F)V

    return-void
.end method

.method public a(IIIII)V
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->v:Lcom/apicloud/a/i/a/s/d;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/i/a/s/d;->a(IIIII)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/MotionEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->v:Lcom/apicloud/a/i/a/s/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/s/d;->a(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/g/h;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->u:Lcom/apicloud/a/i/a/g/h;

    return-void
.end method

.method a(Lcom/apicloud/a/i/a/s/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->v:Lcom/apicloud/a/i/a/s/d;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->c:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/s/e;->c:Z

    return v0
.end method

.method public a(I)Z
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->b:I

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public b(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->r:F

    iget p1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/e;->c(F)V

    return-void
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->v:Lcom/apicloud/a/i/a/s/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/s/d;->a(I)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/s/e;->d:Z

    return v0
.end method

.method public c(F)V
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->q:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->r:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    cmpl-float v1, v0, p1

    if-eqz v1, :cond_2

    div-float v0, p1, v0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/e;->m()Lcom/apicloud/a/i/a/s/h;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2, v0, v2, v0}, Lcom/apicloud/a/i/a/s/h;->a(FFFF)Lcom/apicloud/a/i/a/s/h;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/s/e$2;

    invoke-direct {v1, p0}, Lcom/apicloud/a/i/a/s/e$2;-><init>(Lcom/apicloud/a/i/a/s/e;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/s/h;->a(Ljava/lang/Runnable;)Lcom/apicloud/a/i/a/s/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/s/h;->a()V

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    :cond_2
    return-void
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->b:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->d:Z

    return-void
.end method

.method public c()Z
    .locals 2

    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->b:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/s/e;->o:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public d(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/s/e;->b(IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->h:Ljava/lang/Integer;

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->l:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/e;->k()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->j:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->o:Z

    return-void
.end method

.method public e()I
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/s/e;->s:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public e(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/s/e;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/s/e;->a(IZ)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/e;->i:Ljava/lang/Integer;

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->m:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/s/e;->k()V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/e;->k:Ljava/lang/Integer;

    :goto_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->p:Z

    return-void
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->l:I

    return v0
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->g:I

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/e;->t:Z

    return-void
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/s/e;->m:I

    return v0
.end method

.method public g(I)V
    .locals 1

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    int-to-float p1, p1

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/apicloud/a/i/a/s/e;->n:F

    return-void
.end method

.method j()Lcom/apicloud/a/i/a/s/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/e;->v:Lcom/apicloud/a/i/a/s/d;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Lcom/apicloud/a/i/a/i/b;->onAttachedToWindow()V

    new-instance v0, Lcom/apicloud/a/i/a/s/e$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/s/e$1;-><init>(Lcom/apicloud/a/i/a/s/e;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/s/e;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/apicloud/a/i/a/i/b;->setEnabled(Z)V

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/s/e;->d(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[movable-view]"

    return-object v0
.end method
