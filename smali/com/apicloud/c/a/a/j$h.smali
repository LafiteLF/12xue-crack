.class public abstract Lcom/apicloud/c/a/a/j$h;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/a/a/j$h$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/c/a/a/o$b;

.field private final b:Lcom/apicloud/c/a/a/o$b;

.field private c:Z

.field private d:Z

.field private e:I

.field private f:I

.field private g:I

.field h:Lcom/apicloud/c/a/a/b;

.field i:Lcom/apicloud/c/a/a/j;

.field j:Lcom/apicloud/c/a/a/o;

.field k:Lcom/apicloud/c/a/a/o;

.field l:Lcom/apicloud/c/a/a/j$s;

.field m:Z

.field n:Z

.field o:Z

.field p:I

.field q:Z

.field private r:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/c/a/a/j$h$1;

    invoke-direct {v0, p0}, Lcom/apicloud/c/a/a/j$h$1;-><init>(Lcom/apicloud/c/a/a/j$h;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$h;->a:Lcom/apicloud/c/a/a/o$b;

    new-instance v0, Lcom/apicloud/c/a/a/j$h$2;

    invoke-direct {v0, p0}, Lcom/apicloud/c/a/a/j$h$2;-><init>(Lcom/apicloud/c/a/a/j$h;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$h;->b:Lcom/apicloud/c/a/a/o$b;

    new-instance v0, Lcom/apicloud/c/a/a/o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->a:Lcom/apicloud/c/a/a/o$b;

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/o;-><init>(Lcom/apicloud/c/a/a/o$b;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$h;->j:Lcom/apicloud/c/a/a/o;

    new-instance v0, Lcom/apicloud/c/a/a/o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->b:Lcom/apicloud/c/a/a/o$b;

    invoke-direct {v0, v1}, Lcom/apicloud/c/a/a/o;-><init>(Lcom/apicloud/c/a/a/o$b;)V

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$h;->k:Lcom/apicloud/c/a/a/o;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->m:Z

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->n:Z

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->o:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->c:Z

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->d:Z

    return-void
.end method

.method public static a(III)I
    .locals 2

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p0

    :cond_0
    return p0

    :cond_1
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static a(IIIIZ)I
    .locals 4

    sub-int/2addr p0, p2

    const/4 p2, 0x0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, -0x2

    const/4 v1, -0x1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz p4, :cond_1

    if-ltz p3, :cond_0

    goto :goto_0

    :cond_0
    if-ne p3, v1, :cond_7

    if-eq p1, v2, :cond_3

    if-eqz p1, :cond_7

    if-eq p1, v3, :cond_3

    goto :goto_2

    :cond_1
    if-ltz p3, :cond_2

    :goto_0
    move p1, v3

    goto :goto_3

    :cond_2
    if-ne p3, v1, :cond_4

    :cond_3
    move p3, p0

    goto :goto_3

    :cond_4
    if-ne p3, v0, :cond_7

    if-eq p1, v2, :cond_6

    if-ne p1, v3, :cond_5

    goto :goto_1

    :cond_5
    move p3, p0

    move p1, p2

    goto :goto_3

    :cond_6
    :goto_1
    move p3, p0

    move p1, v2

    goto :goto_3

    :cond_7
    :goto_2
    move p1, p2

    move p3, p1

    :goto_3
    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private a(ILandroid/view/View;)V
    .locals 0

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/b;->e(I)V

    return-void
.end method

.method private a(Landroid/view/View;IZ)V
    .locals 4

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    if-nez p3, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p3, p3, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {p3, v0}, Lcom/apicloud/c/a/a/p;->f(Lcom/apicloud/c/a/a/j$w;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p3, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p3, p3, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {p3, v0}, Lcom/apicloud/c/a/a/p;->e(Lcom/apicloud/c/a/a/j$w;)V

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    check-cast p3, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->m()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_6

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v3, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/b;->b(Landroid/view/View;)I

    move-result v1

    const/4 v3, -0x1

    if-ne p2, v3, :cond_3

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/b;->b()I

    move-result p2

    :cond_3
    if-eq v1, v3, :cond_4

    if-eq v1, p2, :cond_8

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->n:Lcom/apicloud/c/a/a/j$h;

    invoke-virtual {p1, v1, p2}, Lcom/apicloud/c/a/a/j$h;->e(II)V

    goto :goto_4

    :cond_4
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Added View has RecyclerView as parent but view is not a real child. Unfiltered index:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->indexOfChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_5
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v1, p1, p2, v2}, Lcom/apicloud/c/a/a/b;->a(Landroid/view/View;IZ)V

    const/4 p2, 0x1

    iput-boolean p2, p3, Lcom/apicloud/c/a/a/j$i;->c:Z

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    if-eqz p2, :cond_8

    invoke-virtual {p2}, Lcom/apicloud/c/a/a/j$s;->h()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/j$s;->b(Landroid/view/View;)V

    goto :goto_4

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->k()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->l()V

    goto :goto_3

    :cond_7
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->n()V

    :goto_3
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    invoke-virtual {v1, p1, p2, v3, v2}, Lcom/apicloud/c/a/a/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    :cond_8
    :goto_4
    iget-boolean p1, p3, Lcom/apicloud/c/a/a/j$i;->d:Z

    if-eqz p1, :cond_9

    iget-object p1, v0, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iput-boolean v2, p3, Lcom/apicloud/c/a/a/j$i;->d:Z

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/apicloud/c/a/a/j$h;Lcom/apicloud/c/a/a/j$s;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j$s;)V

    return-void
.end method

.method private a(Lcom/apicloud/c/a/a/j$o;ILandroid/view/View;)V
    .locals 2

    invoke-static {p3}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->p()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/j$h;->f(I)V

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j$o;->b(Lcom/apicloud/c/a/a/j$w;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/apicloud/c/a/a/j$h;->g(I)V

    invoke-virtual {p1, p3}, Lcom/apicloud/c/a/a/j$o;->c(Landroid/view/View;)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/p;->h(Lcom/apicloud/c/a/a/j$w;)V

    :goto_0
    return-void
.end method

.method private b(Lcom/apicloud/c/a/a/j$s;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    :cond_0
    return-void
.end method

.method private static b(III)Z
    .locals 3

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    if-eq p0, p2, :cond_0

    return v1

    :cond_0
    const/high16 p2, -0x80000000

    const/4 v2, 0x1

    if-eq v0, p2, :cond_4

    if-eqz v0, :cond_3

    const/high16 p2, 0x40000000    # 2.0f

    if-eq v0, p2, :cond_1

    return v1

    :cond_1
    if-ne p1, p0, :cond_2

    return v2

    :cond_2
    return v1

    :cond_3
    return v2

    :cond_4
    if-lt p1, p0, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method private b(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/graphics/Rect;Z)[I
    .locals 7

    const/4 p1, 0x2

    new-array p1, p1, [I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result p4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v3

    iget v4, p3, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getScrollX()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v4

    iget v5, p3, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v5

    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    move-result p2

    sub-int/2addr v4, p2

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    add-int/2addr p2, v3

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    add-int/2addr p3, v4

    sub-int/2addr v3, p4

    const/4 p4, 0x0

    invoke-static {p4, v3}, Ljava/lang/Math;->min(II)I

    move-result v5

    sub-int/2addr v4, v0

    invoke-static {p4, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    sub-int/2addr p2, v1

    invoke-static {p4, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    sub-int/2addr p3, v2

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result p3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->t()I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v5, p2}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    :cond_1
    if-eqz v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    :goto_0
    move v1, v5

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-static {v4, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_2
    aput v1, p1, p4

    aput v0, p1, v6

    return-object p1
.end method

.method private d(Lcom/apicloud/c/a/a/j;II)Z
    .locals 6

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getFocusedChild()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v5, v5, Lcom/apicloud/c/a/a/j;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, p1, v5}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget p1, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    if-ge p1, v3, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr p1, p2

    if-le p1, v1, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p3

    if-ge p1, v4, :cond_2

    iget p1, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p1, p3

    if-gt p1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method


# virtual methods
.method public A()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getPaddingLeft()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public B()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getPaddingTop()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public C()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getPaddingRight()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getPaddingBottom()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public E()Landroid/view/View;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getFocusedChild()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v2, v0}, Lcom/apicloud/c/a/a/b;->c(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v1
.end method

.method public F()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->c()Lcom/apicloud/c/a/a/j$a;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result v0

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public G()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getMinimumWidth()I

    move-result v0

    return v0
.end method

.method public H()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getMinimumHeight()I

    move-result v0

    return v0
.end method

.method I()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$s;->f()V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->m:Z

    return-void
.end method

.method K()Z
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-gez v4, :cond_1

    iget v3, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-gez v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public a(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/View;ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public abstract a()Lcom/apicloud/c/a/a/j$i;
.end method

.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/apicloud/c/a/a/j$i;
    .locals 1

    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/c/a/a/j$i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public a(Landroid/view/ViewGroup$LayoutParams;)Lcom/apicloud/c/a/a/j$i;
    .locals 1

    instance-of v0, p1, Lcom/apicloud/c/a/a/j$i;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a/a/j$i;-><init>(Lcom/apicloud/c/a/a/j$i;)V

    return-object v0

    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a/a/j$i;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    :cond_1
    new-instance v0, Lcom/apicloud/c/a/a/j$i;

    invoke-direct {v0, p1}, Lcom/apicloud/c/a/a/j$i;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(IILcom/apicloud/c/a/a/j$t;Lcom/apicloud/c/a/a/j$h$a;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/apicloud/c/a/a/j$h$a;)V
    .locals 0

    return-void
.end method

.method public a(ILcom/apicloud/c/a/a/j$o;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->f(I)V

    invoke-virtual {p2, v0}, Lcom/apicloud/c/a/a/j$o;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/graphics/Rect;II)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v1

    add-int/2addr p1, v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->G()I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/apicloud/c/a/a/j$h;->a(III)I

    move-result p2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->H()I

    move-result v0

    invoke-static {p3, p1, v0}, Lcom/apicloud/c/a/a/j$h;->a(III)I

    move-result p1

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/c/a/a/j$h;->f(II)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;I)V

    return-void
.end method

.method public a(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public a(Landroid/view/View;II)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v1, p1}, Lcom/apicloud/c/a/a/j;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v1

    add-int/2addr p3, v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->w()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/apicloud/c/a/a/j$i;->leftMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/apicloud/c/a/a/j$i;->rightMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p2

    iget p2, v0, Lcom/apicloud/c/a/a/j$i;->width:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->c()Z

    move-result v4

    invoke-static {v1, v2, v3, p2, v4}, Lcom/apicloud/c/a/a/j$h;->a(IIIIZ)I

    move-result p2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result v1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->x()I

    move-result v2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result v3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result v4

    add-int/2addr v3, v4

    iget v4, v0, Lcom/apicloud/c/a/a/j$i;->topMargin:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/apicloud/c/a/a/j$i;->bottomMargin:I

    add-int/2addr v3, v4

    add-int/2addr v3, p3

    iget p3, v0, Lcom/apicloud/c/a/a/j$i;->height:I

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->d()Z

    move-result v4

    invoke-static {v1, v2, v3, p3, v4}, Lcom/apicloud/c/a/a/j$h;->a(IIIIZ)I

    move-result p3

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/j$h;->b(Landroid/view/View;IILcom/apicloud/c/a/a/j$i;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->measure(II)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v1, v0, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p2, v2

    iget v2, v0, Lcom/apicloud/c/a/a/j$i;->leftMargin:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p3, v2

    iget v2, v0, Lcom/apicloud/c/a/a/j$i;->topMargin:I

    add-int/2addr p3, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p4, v2

    iget v2, v0, Lcom/apicloud/c/a/a/j$i;->rightMargin:I

    sub-int/2addr p4, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p5, v1

    iget v0, v0, Lcom/apicloud/c/a/a/j$i;->bottomMargin:I

    sub-int/2addr p5, v0

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public a(Landroid/view/View;ILcom/apicloud/c/a/a/j$i;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/p;->e(Lcom/apicloud/c/a/a/j$w;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->h:Lcom/apicloud/c/a/a/p;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/p;->f(Lcom/apicloud/c/a/a/j$w;)V

    :goto_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v0

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/apicloud/c/a/a/b;->a(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;Z)V

    return-void
.end method

.method public a(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/apicloud/c/a/a/j;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    return-void
.end method

.method a(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    invoke-static {p1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {v1, v0}, Lcom/apicloud/c/a/a/b;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;Lcom/apicloud/c/a/a/j$o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->c(Landroid/view/View;)V

    invoke-virtual {p2, p1}, Lcom/apicloud/c/a/a/j$o;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/view/View;ZLandroid/graphics/Rect;)V
    .locals 5

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Lcom/apicloud/c/a/a/j$i;

    iget-object p2, p2, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget v0, p2, Landroid/graphics/Rect;->left:I

    neg-int v0, v0

    iget v1, p2, Landroid/graphics/Rect;->top:I

    neg-int v1, v1

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p2, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v3

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p3, v1, v1, p2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->l:Landroid/graphics/RectF;

    invoke-virtual {v0, p3}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    iget p2, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p2, v1

    iget v1, v0, Landroid/graphics/RectF;->top:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->right:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    invoke-virtual {p3, p2, v1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    invoke-virtual {p3, p2, p1}, Landroid/graphics/Rect;->offset(II)V

    return-void
.end method

.method public a(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p0, v0, v1, p1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method a(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p0, v0, v1, p1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$a;Lcom/apicloud/c/a/a/j$a;)V
    .locals 0

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;ILandroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override onLayoutChildren(Recycler recycler, State state) "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;II)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1, p3, p4}, Lcom/apicloud/c/a/a/j;->e(II)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->d()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/j$h;->d(Landroid/view/View;)I

    move-result p1

    move v0, p1

    goto :goto_0

    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p3}, Lcom/apicloud/c/a/a/j$h;->d(Landroid/view/View;)I

    move-result p2

    :cond_1
    move v2, p2

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;->obtain(IIIIZZ)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;

    move-result-object p1

    invoke-virtual {p4, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionItemInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionItemInfo;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz p1, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1, p2}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p3, p2}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityEvent;->setItemCount(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, v1}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/16 v0, 0x2000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, v2}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const/16 v0, 0x1000

    invoke-virtual {p3, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    invoke-virtual {p3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setScrollable(Z)V

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result v0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->d(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result v1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->e(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Z

    move-result v2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I

    move-result p1

    invoke-static {v0, v1, v2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;->obtain(IIZI)Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCollectionInfo(Landroid/view/accessibility/AccessibilityNodeInfo$CollectionInfo;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j$s;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$s;->f()V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1, v0, p0}, Lcom/apicloud/c/a/a/j$s;->a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$h;)V

    return-void
.end method

.method a(Lcom/apicloud/c/a/a/j;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->g:I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, p1, Lcom/apicloud/c/a/a/j;->g:Lcom/apicloud/c/a/a/b;

    iput-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/apicloud/c/a/a/j$h;->g:I

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getHeight()I

    move-result p1

    :goto_0
    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->r:I

    const/high16 p1, 0x40000000    # 2.0f

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->e:I

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->f:I

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;III)V
    .locals 0

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;IILjava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/c/a/a/j$h;->c(Lcom/apicloud/c/a/a/j;II)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->d(Lcom/apicloud/c/a/a/j;)V

    return-void
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;I)V
    .locals 0

    const-string p1, "RecyclerView"

    const-string p2, "You must override smoothScrollToPosition to support smooth scrolling"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method a(ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v1, v1, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method a(Landroid/view/View;IILcom/apicloud/c/a/a/j$i;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    iget v1, p4, Lcom/apicloud/c/a/a/j$i;->width:I

    invoke-static {v0, p2, v1}, Lcom/apicloud/c/a/a/j$h;->b(III)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget p2, p4, Lcom/apicloud/c/a/a/j$i;->height:I

    invoke-static {p1, p3, p2}, Lcom/apicloud/c/a/a/j$h;->b(III)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method a(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 7

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v2, v0, Lcom/apicloud/c/a/a/j;->e:Lcom/apicloud/c/a/a/j$o;

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v3, v0, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    move-object v1, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j$i;)Z
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;ILandroid/os/Bundle;)Z
    .locals 1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    :cond_0
    const/16 p4, 0x1000

    const/4 v0, 0x1

    if-eq p3, p4, :cond_3

    const/16 p4, 0x2000

    if-eq p3, p4, :cond_1

    move p1, p2

    move p3, p1

    goto :goto_2

    :cond_1
    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result p4

    sub-int/2addr p1, p4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result p4

    sub-int/2addr p1, p4

    neg-int p1, p1

    goto :goto_0

    :cond_2
    move p1, p2

    :goto_0
    iget-object p4, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p4, p3}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result p3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result p4

    sub-int/2addr p3, p4

    neg-int p3, p3

    goto :goto_2

    :cond_3
    invoke-virtual {p1, v0}, Lcom/apicloud/c/a/a/j;->canScrollVertically(I)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->z()I

    move-result p1

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->B()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->D()I

    move-result p3

    sub-int/2addr p1, p3

    goto :goto_1

    :cond_4
    move p1, p2

    :goto_1
    iget-object p3, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p3, v0}, Lcom/apicloud/c/a/a/j;->canScrollHorizontally(I)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->y()I

    move-result p3

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->A()I

    move-result p4

    sub-int/2addr p3, p4

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->C()I

    move-result p4

    sub-int/2addr p3, p4

    goto :goto_2

    :cond_5
    move p3, p2

    :goto_2
    if-nez p1, :cond_6

    if-nez p3, :cond_6

    return p2

    :cond_6
    iget-object p2, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p2, p3, p1}, Lcom/apicloud/c/a/a/j;->scrollBy(II)V

    return v0
.end method

.method public a(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/c/a/a/j$h;->b(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/graphics/Rect;Z)[I

    move-result-object p2

    const/4 p3, 0x0

    aget v0, p2, p3

    const/4 v1, 0x1

    aget p2, p2, v1

    if-eqz p5, :cond_0

    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/c/a/a/j$h;->d(Lcom/apicloud/c/a/a/j;II)Z

    move-result p5

    if-eqz p5, :cond_1

    :cond_0
    if-nez v0, :cond_2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    return p3

    :cond_2
    :goto_0
    if-eqz p4, :cond_3

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/c/a/a/j;->scrollBy(II)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1, v0, p2}, Lcom/apicloud/c/a/a/j;->a(II)V

    :goto_1
    return v1
.end method

.method public a(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/view/View;)Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->s()Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->p()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$t;Landroid/view/View;Landroid/view/View;)Z
    .locals 0

    invoke-virtual {p0, p1, p3, p4}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;Landroid/view/View;Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public a(Lcom/apicloud/c/a/a/j;Ljava/util/ArrayList;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/c/a/a/j;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)Z"
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public a(Ljava/lang/Runnable;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->removeCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(ILcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Landroid/view/View;)V
    .locals 1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/j$h;->b(Landroid/view/View;I)V

    return-void
.end method

.method public b(Landroid/view/View;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;IZ)V

    return-void
.end method

.method public b(Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p2, p1, p1, p1, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->i(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j$o;)V
    .locals 6

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$o;->e()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-gez v1, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$o;->f()V

    if-lez v0, :cond_0

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->invalidate()V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p1, v1}, Lcom/apicloud/c/a/a/j$o;->c(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/apicloud/c/a/a/j$w;->a(Z)V

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->t()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v5, v2, v4}, Lcom/apicloud/c/a/a/j;->removeDetachedView(Landroid/view/View;Z)V

    :cond_3
    iget-object v4, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->x:Lcom/apicloud/c/a/a/j$e;

    invoke-virtual {v4, v3}, Lcom/apicloud/c/a/a/j$e;->d(Lcom/apicloud/c/a/a/j$w;)V

    :cond_4
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/apicloud/c/a/a/j$w;->a(Z)V

    invoke-virtual {p1, v2}, Lcom/apicloud/c/a/a/j$o;->b(Landroid/view/View;)V

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public b(Lcom/apicloud/c/a/a/j$t;)V
    .locals 0

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->n:Z

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->c(Lcom/apicloud/c/a/a/j;)V

    return-void
.end method

.method public b(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    return-void
.end method

.method b(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->n:Z

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Lcom/apicloud/c/a/a/j;Lcom/apicloud/c/a/a/j$o;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/c/a/a/j$h;->o:Z

    return-void
.end method

.method b(Landroid/view/View;IILcom/apicloud/c/a/a/j$i;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->isLayoutRequested()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v1, p4, Lcom/apicloud/c/a/a/j$i;->width:I

    invoke-static {v0, p2, v1}, Lcom/apicloud/c/a/a/j$h;->b(III)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    iget p2, p4, Lcom/apicloud/c/a/a/j$i;->height:I

    invoke-static {p1, p3, p2}, Lcom/apicloud/c/a/a/j$h;->b(III)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public c(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public c(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public c(I)Landroid/view/View;
    .locals 5

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->f()I

    move-result v4

    if-ne v4, p1, :cond_3

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v4, v4, Lcom/apicloud/c/a/a/j;->B:Lcom/apicloud/c/a/a/j$t;

    invoke-virtual {v4}, Lcom/apicloud/c/a/a/j$t;->a()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Lcom/apicloud/c/a/a/j$w;->s()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    return-object v2

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method c(II)V
    .locals 1

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/apicloud/c/a/a/j$h;->g:I

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->e:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    sget-boolean p1, Lcom/apicloud/c/a/a/j;->c:Z

    if-nez p1, :cond_0

    iput v0, p0, Lcom/apicloud/c/a/a/j$h;->g:I

    :cond_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->r:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/j$h;->f:I

    if-nez p1, :cond_1

    sget-boolean p1, Lcom/apicloud/c/a/a/j;->c:Z

    if-nez p1, :cond_1

    iput v0, p0, Lcom/apicloud/c/a/a/j$h;->r:I

    :cond_1
    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b;->a(Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/view/View;I)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {p0, p1, p2, v0}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;ILcom/apicloud/c/a/a/j$i;)V

    return-void
.end method

.method public c(Lcom/apicloud/c/a/a/j$o;)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-gez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/c/a/a/j;->e(Landroid/view/View;)Lcom/apicloud/c/a/a/j$w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/c/a/a/j$w;->e()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a/a/j$h;->a(ILcom/apicloud/c/a/a/j$o;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public c(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    return-void
.end method

.method public c(Lcom/apicloud/c/a/a/j;II)V
    .locals 0

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$i;->d()I

    move-result p1

    return p1
.end method

.method public d(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j;->m:Lcom/apicloud/c/a/a/j$a;

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j$a;->a()I

    move-result p2

    :cond_1
    :goto_0
    return p2
.end method

.method public d(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public d(Landroid/view/View;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method d(II)V
    .locals 8

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/j$h;->v()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/c/a/a/j;->e(II)V

    return-void

    :cond_0
    const/4 v1, 0x0

    const/high16 v2, -0x80000000

    const v3, 0x7fffffff

    move v4, v3

    move v5, v4

    move v3, v2

    :goto_0
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->k:Landroid/graphics/Rect;

    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v0, p1, p2}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/graphics/Rect;II)V

    return-void

    :cond_1
    invoke-virtual {p0, v1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    iget-object v7, v7, Lcom/apicloud/c/a/a/j;->k:Landroid/graphics/Rect;

    invoke-virtual {p0, v6, v7}, Lcom/apicloud/c/a/a/j$h;->a(Landroid/view/View;Landroid/graphics/Rect;)V

    iget v6, v7, Landroid/graphics/Rect;->left:I

    if-ge v6, v4, :cond_2

    iget v4, v7, Landroid/graphics/Rect;->left:I

    :cond_2
    iget v6, v7, Landroid/graphics/Rect;->right:I

    if-le v6, v2, :cond_3

    iget v2, v7, Landroid/graphics/Rect;->right:I

    :cond_3
    iget v6, v7, Landroid/graphics/Rect;->top:I

    if-ge v6, v5, :cond_4

    iget v5, v7, Landroid/graphics/Rect;->top:I

    :cond_4
    iget v6, v7, Landroid/graphics/Rect;->bottom:I

    if-le v6, v3, :cond_5

    iget v3, v7, Landroid/graphics/Rect;->bottom:I

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public d(Lcom/apicloud/c/a/a/j;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public e(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public e(Landroid/view/View;)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->c(Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method public e(II)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->g(I)V

    invoke-virtual {p0, v0, p2}, Lcom/apicloud/c/a/a/j$h;->c(Landroid/view/View;I)V

    return-void

    :cond_0
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot move a child from non-existing index:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public e(Lcom/apicloud/c/a/a/j;)V
    .locals 0

    return-void
.end method

.method public e(Lcom/apicloud/c/a/a/j$o;Lcom/apicloud/c/a/a/j$t;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr p1, v0

    return p1
.end method

.method public f(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b;->a(I)V

    :cond_0
    return-void
.end method

.method public f(II)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-static {v0, p1, p2}, Lcom/apicloud/c/a/a/j;->a(Lcom/apicloud/c/a/a/j;II)V

    return-void
.end method

.method f(Lcom/apicloud/c/a/a/j;)V
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p1}, Lcom/apicloud/c/a/a/j;->getHeight()I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/c/a/a/j$h;->c(II)V

    return-void
.end method

.method public g(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/apicloud/c/a/a/j$i;

    iget-object v0, v0, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p1, v0

    return p1
.end method

.method public g(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public g(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->h(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/c/a/a/j$h;->a(ILandroid/view/View;)V

    return-void
.end method

.method public h(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->n(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public h(Lcom/apicloud/c/a/a/j$t;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public h(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/b;->b(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public i(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->l(Landroid/view/View;)I

    move-result p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public i(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->h(I)V

    :cond_0
    return-void
.end method

.method i()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->o(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public j(I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/c/a/a/j;->g(I)V

    :cond_0
    return-void
.end method

.method public k(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/apicloud/c/a/a/j$h;->m(Landroid/view/View;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method public k(I)V
    .locals 0

    return-void
.end method

.method public l(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    return p1
.end method

.method public m(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    return p1
.end method

.method public n(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    return p1
.end method

.method public n()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public o(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/apicloud/c/a/a/j$i;

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$i;->b:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->right:I

    return p1
.end method

.method public o()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->requestLayout()V

    :cond_0
    return-void
.end method

.method public final p()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->d:Z

    return v0
.end method

.method public q()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/j$h;->n:Z

    return v0
.end method

.method public r()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/apicloud/c/a/a/j;->i:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->l:Lcom/apicloud/c/a/a/j$s;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j$s;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public t()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->i:Lcom/apicloud/c/a/a/j;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/j;->getLayoutDirection()I

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public v()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/c/a/a/j$h;->h:Lcom/apicloud/c/a/a/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/b;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public w()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/j$h;->e:I

    return v0
.end method

.method public x()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/j$h;->f:I

    return v0
.end method

.method public y()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/j$h;->g:I

    return v0
.end method

.method public z()I
    .locals 1

    iget v0, p0, Lcom/apicloud/c/a/a/j$h;->r:I

    return v0
.end method
