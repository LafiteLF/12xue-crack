.class public Lcom/apicloud/a/i/a/ac/c;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:I

.field private d:I

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private final i:Landroid/widget/ScrollView;


# direct methods
.method public constructor <init>(Landroid/widget/ScrollView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->h:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/c;->a:Ljava/util/ArrayList;

    return-void
.end method

.method private b()V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-eqz v1, :cond_3

    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v2

    sub-int/2addr v0, v2

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    if-eqz v2, :cond_1

    move v2, v4

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    :goto_1
    add-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-static {v4, v0}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_2
    iput v4, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    move-object v0, v1

    check-cast v0, Lcom/apicloud/a/i/a/ac/d;

    invoke-interface {v0}, Lcom/apicloud/a/i/a/ac/d;->a()I

    move-result v0

    iget v2, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-eq v1, v0, :cond_4

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ac/c;->c()V

    :cond_2
    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ac/c;->d(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/apicloud/a/i/a/ac/c;->d:I

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ac/c;->c(Landroid/view/View;)V

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ac/c;->c()V

    :cond_4
    :goto_3
    return-void

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {p0, v3}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v5

    iget-object v6, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v6

    sub-int/2addr v5, v6

    iget-boolean v6, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_4

    :cond_6
    iget-object v6, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v6}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v6

    :goto_4
    add-int/2addr v5, v6

    move-object v6, v3

    check-cast v6, Lcom/apicloud/a/i/a/ac/d;

    invoke-interface {v6}, Lcom/apicloud/a/i/a/ac/d;->a()I

    move-result v7

    if-gt v5, v7, :cond_a

    if-eqz v1, :cond_8

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v8

    iget-object v9, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v9

    sub-int/2addr v8, v9

    iget-boolean v9, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    if-eqz v9, :cond_7

    move v9, v4

    goto :goto_5

    :cond_7
    iget-object v9, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v9}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v9

    :goto_5
    add-int/2addr v8, v9

    if-le v5, v8, :cond_9

    :cond_8
    const/4 v4, 0x1

    move-object v1, v3

    :cond_9
    move v5, v7

    goto :goto_7

    :cond_a
    if-eqz v2, :cond_c

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v7

    iget-object v8, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v8

    sub-int/2addr v7, v8

    iget-boolean v8, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    if-eqz v8, :cond_b

    move v8, v4

    goto :goto_6

    :cond_b
    iget-object v8, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v8}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v8

    :goto_6
    add-int/2addr v7, v8

    if-ge v5, v7, :cond_d

    :cond_c
    move-object v2, v3

    :cond_d
    :goto_7
    invoke-interface {v6, v5, v4}, Lcom/apicloud/a/i/a/ac/d;->a(IZ)V

    goto/16 :goto_0
.end method

.method private c()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ac/c;->k(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    return-void
.end method

.method private c(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ac/c;->j(Landroid/view/View;)V

    return-void
.end method

.method private d(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private e(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private f(Landroid/view/View;)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-ne v1, v2, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method private g(Landroid/view/View;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ac/c;->h(Landroid/view/View;)V

    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/ac/c;->g(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private h(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/ac/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private i(Landroid/view/View;)V
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/ac/d;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private j(Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private k(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ac/c;->c()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/a/i/a/ac/c;->g(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ac/c;->b()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->invalidate()V

    return-void
.end method

.method public final a(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ac/c;->b()V

    return-void
.end method

.method public final a(Landroid/graphics/Canvas;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v0}, Landroid/widget/ScrollView;->getPaddingLeft()I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/ac/c;->d:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    add-int/2addr v1, v2

    iget-boolean v2, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v2}, Landroid/widget/ScrollView;->getPaddingTop()I

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    add-int/2addr v1, v2

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    neg-int v0, v0

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v4, p0, Lcom/apicloud/a/i/a/ac/c;->d:I

    sub-int v4, v1, v4

    invoke-virtual {p1, v3, v0, v4, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    invoke-virtual {p1, v3, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method public final a(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget-object v3, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iget v4, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    add-int/2addr v3, v4

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iget-object v4, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, v4}, Lcom/apicloud/a/i/a/ac/c;->d(Landroid/view/View;)I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_3

    move v3, v1

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    iget-object v5, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, v5}, Lcom/apicloud/a/i/a/ac/c;->f(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_4

    move v4, v1

    goto :goto_3

    :cond_4
    move v4, v2

    :goto_3
    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    goto :goto_5

    :cond_6
    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    if-nez v0, :cond_7

    iput-boolean v2, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    :cond_7
    :goto_5
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    mul-int/lit8 v1, v1, -0x1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_8
    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ac/c;->h(Landroid/view/View;)V

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ac/c;->g:Z

    return-void
.end method

.method public final a(ZIIII)V
    .locals 0

    iget-boolean p2, p0, Lcom/apicloud/a/i/a/ac/c;->g:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/apicloud/a/i/a/ac/c;->f:Z

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ac/c;->a()V

    :cond_1
    return-void
.end method

.method public final b(Landroid/view/MotionEvent;)V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ac/c;->c:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->b:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/apicloud/a/i/a/ac/c;->e(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ac/c;->h:Z

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/c;->h:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setAction(I)V

    iget-object v2, p0, Lcom/apicloud/a/i/a/ac/c;->i:Landroid/widget/ScrollView;

    invoke-virtual {v2, v0}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ac/c;->h:Z

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    :cond_3
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ac/c;->h:Z

    :cond_4
    return-void
.end method

.method public final b(Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ac/c;->i(Landroid/view/View;)V

    return-void
.end method
