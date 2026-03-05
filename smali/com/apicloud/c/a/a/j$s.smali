.class public abstract Lcom/apicloud/c/a/a/j$s;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "s"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/j$s$a;,
        Lcom/apicloud/c/a/a/j$s$b;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/apicloud/c/a/a/j;

.field private c:Lcom/apicloud/c/a/a/j$h;

.field private d:Z

.field private e:Z

.field private f:Landroid/view/View;

.field private final g:Lcom/apicloud/c/a/a/j$s$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    new-instance v0, Lcom/apicloud/c/a/a/j$s$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/apicloud/c/a/a/j$s$a;-><init>(II)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    return-void
.end method

.method private a(II)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iget-boolean v1, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->f()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/j$s;->d:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$s;->a(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    iget-object v2, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    invoke-virtual {p0, v1, v2, v3}, Lcom/apicloud/c/a/a/j$s;->a(Landroid/view/View;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/j$s$a;->a(Lcom/apicloud/c/a/a/j;)V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->f()V

    goto :goto_0

    :cond_2
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget-object v2, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/apicloud/c/a/a/j$s;->a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$s$a;->a()Z

    move-result p1

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$s;->g:Lcom/apicloud/c/a/a/j$s$a;

    invoke-virtual {p2, v0}, Lcom/apicloud/c/a/a/j$s$a;->a(Lcom/apicloud/c/a/a/j;)V

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/j$s;->d:Z

    iget-object p1, v0, Lcom/apicloud/c/a/a/j;->y:Lcom/apicloud/c/a/a/j$v;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$v;->a()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->f()V

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/apicloud/c/a/a/j$s;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/c/a/a/j$s;->a(II)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->f(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected abstract a()V
.end method

.method protected abstract a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V
.end method

.method protected a(Landroid/graphics/PointF;)V
    .locals 4

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p1, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v1

    iget v1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget v2, p1, Landroid/graphics/PointF;->x:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v2, v2

    iput v2, p1, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->y:F

    float-to-double v2, v2

    div-double/2addr v2, v0

    double-to-float v0, v2

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected abstract a(Landroid/view/View;Lcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$s$a;)V
.end method

.method a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$h;)V
    .locals 1

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iput-object p2, p0, Lcom/apicloud/c/a/a/j$s;->c:Lcom/apicloud/c/a/a/j$h;

    iget p2, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    iget p2, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    invoke-static {p1, p2}, Lcom/apicloud/c/a/a/j$t;->a(Lcom/apicloud/c/a/a/j$t;I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/j$s;->d:Z

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->i()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$s;->e(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->a()V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->y:Lcom/apicloud/c/a/a/j$v;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$v;->a()V

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid target position"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract b()V
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$s;->a(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->i()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    return-void
.end method

.method public e(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j$h;->c(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/apicloud/c/a/a/j$h;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->c:Lcom/apicloud/c/a/a/j$h;

    return-object v0
.end method

.method protected final f()V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$s;->b()V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/apicloud/c/a/a/j$t;->a(Lcom/apicloud/c/a/a/j$t;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$s;->f:Landroid/view/View;

    iput v1, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/j$s;->d:Z

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$s;->c:Lcom/apicloud/c/a/a/j$h;

    invoke-static {v1, p0}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$h;Lcom/apicloud/c/a/a/j$s;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$s;->c:Lcom/apicloud/c/a/a/j$h;

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$s;->d:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$s;->e:Z

    return v0
.end method

.method public i()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/j$s;->a:I

    return v0
.end method

.method public j()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$s;->b:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    return v0
.end method
