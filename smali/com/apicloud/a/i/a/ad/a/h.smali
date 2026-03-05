.class Lcom/apicloud/a/i/a/ad/a/h;
.super Landroid/widget/Scroller;


# instance fields
.field private a:F

.field private b:I

.field private c:Lcom/apicloud/a/i/a/ad/a/b;

.field private d:Z

.field private e:Z

.field private f:Lcom/apicloud/a/i/a/ad/a/b$a;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/ad/a/h;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->a:F

    const/16 p1, 0x1f4

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->b:I

    check-cast p2, Lcom/apicloud/a/i/a/ad/a/b;

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/a/h;->c:Lcom/apicloud/a/i/a/ad/a/b;

    return-void
.end method

.method static a(Landroid/content/Context;Lcom/deepe/c/b/d/b;)Lcom/apicloud/a/i/a/ad/a/h;
    .locals 2

    new-instance v0, Lcom/apicloud/a/i/a/ad/a/b;

    sget-object v1, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-direct {v0, v1}, Lcom/apicloud/a/i/a/ad/a/b;-><init>(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    new-instance v1, Lcom/apicloud/a/i/a/ad/a/h;

    invoke-direct {v1, p0, v0}, Lcom/apicloud/a/i/a/ad/a/h;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    :try_start_0
    const-class p0, Lcom/deepe/c/b/d/b;

    const-string v0, "o"

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/h;->d:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a/h;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b(Lcom/apicloud/a/i/a/ad/a/b$a;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/h;->c:Lcom/apicloud/a/i/a/ad/a/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/a/b;->a(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    return-void
.end method


# virtual methods
.method final a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->b:I

    return-void
.end method

.method final a(Lcom/apicloud/a/i/a/ad/a/b$a;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->f:Lcom/apicloud/a/i/a/ad/a/b$a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->b(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->d:Z

    return-void
.end method

.method final b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->e:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/a/h;->f:Lcom/apicloud/a/i/a/ad/a/b$a;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/apicloud/a/i/a/ad/a/b$a;->a:Lcom/apicloud/a/i/a/ad/a/b$a;

    :goto_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->b(Lcom/apicloud/a/i/a/ad/a/b$a;)V

    return-void
.end method

.method public startScroll(IIIII)V
    .locals 6

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/h;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p5, p0, Lcom/apicloud/a/i/a/ad/a/h;->b:I

    goto :goto_0

    :cond_0
    int-to-float p5, p5

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a/h;->a:F

    mul-float/2addr p5, v0

    float-to-int p5, p5

    :goto_0
    move v5, p5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-super/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/a/h;->b(Z)V

    return-void
.end method
