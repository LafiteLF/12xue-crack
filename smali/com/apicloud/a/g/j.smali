.class public Lcom/apicloud/a/g/j;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lcom/apicloud/a/g/l;

.field public static final b:Lcom/apicloud/a/g/l;


# instance fields
.field private c:Lcom/apicloud/a/g/l;

.field private d:Lcom/apicloud/a/g/l;

.field private e:Lcom/apicloud/a/g/l;

.field private f:Z

.field private g:Lcom/apicloud/a/g/l;

.field private h:Lcom/apicloud/a/g/l;

.field private i:Lcom/apicloud/a/g/l;

.field private j:Z

.field private k:Lcom/apicloud/a/g/l;

.field private l:Lcom/apicloud/a/g/l;

.field private m:Lcom/apicloud/a/g/l;

.field private n:Z

.field private o:Z

.field private p:[Lcom/apicloud/a/g/l;

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/apicloud/a/g/l;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;)V

    sput-object v0, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    new-instance v0, Lcom/apicloud/a/g/l;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/a/g/l;-><init>(Ljava/lang/Number;)V

    sput-object v0, Lcom/apicloud/a/g/j;->b:Lcom/apicloud/a/g/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/g/j;->c:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/g/j;->d:Lcom/apicloud/a/g/l;

    iput-object v0, p0, Lcom/apicloud/a/g/j;->e:Lcom/apicloud/a/g/l;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/g/j;->f:Z

    iput-boolean v0, p0, Lcom/apicloud/a/g/j;->j:Z

    sget-object v1, Lcom/apicloud/a/g/j;->a:Lcom/apicloud/a/g/l;

    iput-object v1, p0, Lcom/apicloud/a/g/j;->k:Lcom/apicloud/a/g/l;

    iput-object v1, p0, Lcom/apicloud/a/g/j;->l:Lcom/apicloud/a/g/l;

    iput-object v1, p0, Lcom/apicloud/a/g/j;->m:Lcom/apicloud/a/g/l;

    iput-boolean v0, p0, Lcom/apicloud/a/g/j;->n:Z

    iput-boolean v0, p0, Lcom/apicloud/a/g/j;->o:Z

    iput-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)F
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/j;->p:[Lcom/apicloud/a/g/l;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/j;->c:Lcom/apicloud/a/g/l;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->e:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->f:Z

    return-void
.end method

.method public a(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->c:Lcom/apicloud/a/g/l;

    iput-object p2, p0, Lcom/apicloud/a/g/j;->d:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->f:Z

    return-void
.end method

.method public a([Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->p:[Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->q:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->f:Z

    return v0
.end method

.method public b(Landroid/view/View;)F
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/j;->p:[Lcom/apicloud/a/g/l;

    const/4 v1, 0x5

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/j;->d:Lcom/apicloud/a/g/l;

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    const/4 v2, 0x3

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->c()I

    move-result v0

    if-ne v2, v0, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    if-lez p1, :cond_1

    int-to-float p1, p1

    mul-float/2addr p1, v1

    return p1

    :cond_1
    return v1

    :cond_2
    invoke-static {v1}, Lcom/apicloud/a/g/h;->a(F)F

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->m:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->n:Z

    return-void
.end method

.method public b(Lcom/apicloud/a/g/l;Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->k:Lcom/apicloud/a/g/l;

    iput-object p2, p0, Lcom/apicloud/a/g/j;->l:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->n:Z

    return-void
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->j:Z

    return v0
.end method

.method public c(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->g:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->j:Z

    return-void
.end method

.method public c()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->n:Z

    return v0
.end method

.method public d(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->h:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->j:Z

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->o:Z

    return v0
.end method

.method public e(Lcom/apicloud/a/g/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/g/j;->i:Lcom/apicloud/a/g/l;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/g/j;->j:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    return v0
.end method

.method public f()F
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/j;->p:[Lcom/apicloud/a/g/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/j;->k:Lcom/apicloud/a/g/l;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method

.method public g()F
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/g/j;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/g/j;->p:[Lcom/apicloud/a/g/l;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/g/j;->l:Lcom/apicloud/a/g/l;

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    return v0
.end method

.method public h()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/j;->g:Lcom/apicloud/a/g/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public i()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/j;->h:Lcom/apicloud/a/g/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()F
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/j;->i:Lcom/apicloud/a/g/l;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
