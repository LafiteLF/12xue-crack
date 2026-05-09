.class public Lcom/apicloud/a/i/a/z/c;
.super Lcom/apicloud/a/i/a/i/b;


# instance fields
.field a:Ljava/lang/Runnable;

.field private b:Z

.field private c:[I


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    const/4 p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/apicloud/a/i/a/z/c;->c:[I

    new-instance p1, Lcom/apicloud/a/i/a/z/c$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/z/c$1;-><init>(Lcom/apicloud/a/i/a/z/c;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/z/c;->a:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/z/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/z/c;->b()V

    return-void
.end method

.method private a()Z
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/z/c;->getChildCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private b()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/z/c;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/z/c;->b:Z

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/z/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/z/a;->a(Landroid/content/Context;)I

    move-result v0

    invoke-static {p0}, Lcom/apicloud/a/g/e/e;->a(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/apicloud/c/b/b;->e(F)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/z/c;->a()Z

    move-result v2

    if-nez v2, :cond_1

    int-to-float v2, v0

    invoke-interface {v1, v2}, Lcom/apicloud/c/b/b;->k(F)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/z/c;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0

    :cond_1
    int-to-float v0, v0

    invoke-interface {v1, v0}, Lcom/apicloud/c/b/b;->u(F)V

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/z/c;->requestLayout()V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Lcom/apicloud/a/i/a/i/b;->onLayout(ZIIII)V

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/z/c;->b:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/z/c;->c:[I

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/z/c;->getLocationInWindow([I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/z/c;->c:[I

    const/4 p2, 0x1

    aget p1, p1, p2

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/z/c;->a:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/z/c;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[safe-area]"

    return-object v0
.end method
