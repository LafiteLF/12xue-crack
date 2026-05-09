.class public Lcom/apicloud/a/i/a/i/e;
.super Landroid/view/TouchDelegate;


# instance fields
.field private a:Landroid/view/View;

.field private b:Landroid/graphics/Rect;

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/view/View;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/view/TouchDelegate;-><init>(Landroid/graphics/Rect;Landroid/view/View;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/e;->b:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/apicloud/a/i/a/i/e;->a:Landroid/view/View;

    iput p3, p0, Lcom/apicloud/a/i/a/i/e;->e:I

    return-void
.end method


# virtual methods
.method final a(Landroid/graphics/Rect;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/i/e;->b:Landroid/graphics/Rect;

    iput p2, p0, Lcom/apicloud/a/i/a/i/e;->e:I

    return-void
.end method

.method final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/i/e;->d:Z

    return-void
.end method

.method final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/i/e;->d:Z

    return v0
.end method

.method final b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/i/e;->e:I

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/e;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    const/4 v0, 0x2

    if-eq v3, v0, :cond_2

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/i/e;->c:Z

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/i/e;->c:Z

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/i/e;->c:Z

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lcom/apicloud/a/i/a/i/e;->b:Landroid/graphics/Rect;

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iput-boolean v5, p0, Lcom/apicloud/a/i/a/i/e;->c:Z

    move v0, v5

    goto :goto_1

    :cond_4
    :goto_0
    move v0, v1

    :goto_1
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/apicloud/a/i/a/i/e;->a:Landroid/view/View;

    iget-object v2, p0, Lcom/apicloud/a/i/a/i/e;->b:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v6, p0, Lcom/apicloud/a/i/a/i/e;->b:Landroid/graphics/Rect;

    iget v6, v6, Landroid/graphics/Rect;->top:I

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {p1, v2, v6}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V

    :cond_5
    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    goto :goto_2

    :cond_6
    move p1, v1

    :goto_2
    if-eq v3, v5, :cond_7

    if-ne v3, v4, :cond_8

    :cond_7
    iput-boolean v1, p0, Lcom/apicloud/a/i/a/i/e;->c:Z

    :cond_8
    return p1
.end method
