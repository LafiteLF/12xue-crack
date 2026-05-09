.class public Lcom/deepe/c/b/d/b;
.super Landroid/view/ViewGroup;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/b/d/b$a;,
        Lcom/deepe/c/b/d/b$b;,
        Lcom/deepe/c/b/d/b$c;,
        Lcom/deepe/c/b/d/b$d;,
        Lcom/deepe/c/b/d/b$e;,
        Lcom/deepe/c/b/d/b$f;,
        Lcom/deepe/c/b/d/b$g;,
        Lcom/deepe/c/b/d/b$h;,
        Lcom/deepe/c/b/d/b$i;
    }
.end annotation


# static fields
.field private static final ah:Lcom/deepe/c/b/d/b$i;

.field static final b:[I

.field private static final g:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/deepe/c/b/d/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:Landroid/view/animation/Interpolator;


# instance fields
.field private A:I

.field private B:Z

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:Z

.field private H:F

.field private I:F

.field private J:F

.field private K:F

.field private L:I

.field private M:Landroid/view/VelocityTracker;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:Z

.field private S:J

.field private T:Z

.field private U:Z

.field private V:I

.field private W:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/b/d/b$e;",
            ">;"
        }
    .end annotation
.end field

.field private a:I

.field private aa:Lcom/deepe/c/b/d/b$e;

.field private ab:Lcom/deepe/c/b/d/b$e;

.field private ac:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/b/d/b$d;",
            ">;"
        }
    .end annotation
.end field

.field private ad:Lcom/deepe/c/b/d/b$f;

.field private ae:I

.field private af:I

.field private ag:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final ai:Ljava/lang/Runnable;

.field private aj:I

.field c:Lcom/deepe/c/b/d/a;

.field d:I

.field public e:Landroid/widget/EdgeEffect;

.field public f:Landroid/widget/EdgeEffect;

.field private final i:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/deepe/c/b/d/b$b;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Lcom/deepe/c/b/d/b$b;

.field private final k:Landroid/graphics/Rect;

.field private l:I

.field private m:Landroid/os/Parcelable;

.field private n:Ljava/lang/ClassLoader;

.field private o:Landroid/widget/Scroller;

.field private p:Z

.field private q:Lcom/deepe/c/b/d/b$g;

.field private r:I

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:I

.field private u:I

.field private v:F

.field private w:F

.field private x:Z

.field private y:Z

.field private z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100b3

    aput v2, v0, v1

    sput-object v0, Lcom/deepe/c/b/d/b;->b:[I

    new-instance v0, Lcom/deepe/c/b/d/b$1;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$1;-><init>()V

    sput-object v0, Lcom/deepe/c/b/d/b;->g:Ljava/util/Comparator;

    new-instance v0, Lcom/deepe/c/b/d/b$2;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$2;-><init>()V

    sput-object v0, Lcom/deepe/c/b/d/b;->h:Landroid/view/animation/Interpolator;

    new-instance v0, Lcom/deepe/c/b/d/b$i;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$i;-><init>()V

    sput-object v0, Lcom/deepe/c/b/d/b;->ah:Lcom/deepe/c/b/d/b$i;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    new-instance v0, Lcom/deepe/c/b/d/b$b;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$b;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->j:Lcom/deepe/c/b/d/b$b;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->k:Landroid/graphics/Rect;

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/b/d/b;->l:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepe/c/b/d/b;->m:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/deepe/c/b/d/b;->n:Ljava/lang/ClassLoader;

    const v1, -0x800001

    iput v1, p0, Lcom/deepe/c/b/d/b;->v:F

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/deepe/c/b/d/b;->w:F

    const/4 v1, 0x1

    iput v1, p0, Lcom/deepe/c/b/d/b;->A:I

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->G:Z

    iput v0, p0, Lcom/deepe/c/b/d/b;->L:I

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->T:Z

    new-instance v0, Lcom/deepe/c/b/d/b$3;

    invoke-direct {v0, p0}, Lcom/deepe/c/b/d/b$3;-><init>(Lcom/deepe/c/b/d/b;)V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->ai:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/b/d/b;->aj:I

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/d/b;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private a(IFII)I
    .locals 1

    invoke-static {p4}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/deepe/c/b/d/b;->P:I

    if-le p4, v0, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p4

    iget v0, p0, Lcom/deepe/c/b/d/b;->N:I

    if-le p4, v0, :cond_1

    iget-object p4, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-static {p4}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result p4

    const/4 v0, 0x0

    cmpl-float p4, p4, v0

    if-nez p4, :cond_1

    iget-object p4, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {p4}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result p4

    cmpl-float p4, p4, v0

    if-nez p4, :cond_1

    if-lez p3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    iget p3, p0, Lcom/deepe/c/b/d/b;->d:I

    if-lt p1, p3, :cond_2

    const p3, 0x3ecccccd    # 0.4f

    goto :goto_0

    :cond_2
    const p3, 0x3f19999a    # 0.6f

    :goto_0
    add-float/2addr p2, p3

    float-to-int p2, p2

    add-int/2addr p1, p2

    :goto_1
    iget-object p2, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_3

    iget-object p2, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/deepe/c/b/d/b$b;

    iget-object p3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/deepe/c/b/d/b$b;

    iget p2, p2, Lcom/deepe/c/b/d/b$b;->b:I

    iget p3, p3, Lcom/deepe/c/b/d/b$b;->b:I

    invoke-static {p1, p3}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    :cond_3
    return p1
.end method

.method private a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 2

    if-nez p1, :cond_0

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    :cond_0
    if-nez p2, :cond_1

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p2, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-object p1

    :cond_1
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    :goto_0
    instance-of v0, p2, Landroid/view/ViewGroup;

    if-eqz v0, :cond_3

    if-ne p2, p0, :cond_2

    goto :goto_1

    :cond_2
    check-cast p2, Landroid/view/ViewGroup;

    iget v0, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->left:I

    iget v0, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_0

    :cond_3
    :goto_1
    return-object p1
.end method

.method private a()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/b/d/b$c;

    iget-boolean v1, v1, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->removeViewAt(I)V

    add-int/lit8 v0, v0, -0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private a(IIII)V
    .locals 1

    if-lez p2, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->c_()I

    move-result p2

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result p3

    mul-int/2addr p2, p3

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->setFinalX(I)V

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    add-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p2, p3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result p3

    sub-int/2addr p2, p3

    add-int/2addr p2, p4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    int-to-float p1, p1

    mul-float/2addr p3, p1

    float-to-int p1, p3

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    goto :goto_2

    :cond_1
    iget p2, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {p0, p2}, Lcom/deepe/c/b/d/b;->i(I)Lcom/deepe/c/b/d/b$b;

    move-result-object p2

    if-eqz p2, :cond_2

    iget p2, p2, Lcom/deepe/c/b/d/b$b;->e:F

    iget p3, p0, Lcom/deepe/c/b/d/b;->w:F

    invoke-static {p2, p3}, Ljava/lang/Math;->min(FF)F

    move-result p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result p3

    sub-int/2addr p1, p3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result p2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x0

    invoke-direct {p0, p2}, Lcom/deepe/c/b/d/b;->a(Z)V

    goto :goto_0

    :cond_3
    :goto_2
    return-void
.end method

.method private a(IZIZ)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->i(I)Lcom/deepe/c/b/d/b$b;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/deepe/c/b/d/b;->v:F

    iget v0, v0, Lcom/deepe/c/b/d/b$b;->e:F

    iget v4, p0, Lcom/deepe/c/b/d/b;->w:F

    invoke-static {v0, v4}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    mul-float/2addr v2, v0

    float-to-int v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz p2, :cond_1

    invoke-virtual {p0, v0, v1, p3}, Lcom/deepe/c/b/d/b;->a(III)V

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lcom/deepe/c/b/d/b;->b(I)V

    goto :goto_1

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1}, Lcom/deepe/c/b/d/b;->b(I)V

    :cond_2
    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->a(Z)V

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/deepe/c/b/d/b;->a(I)Z

    :cond_3
    :goto_1
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iget v2, p0, Lcom/deepe/c/b/d/b;->L:I

    if-ne v1, v2, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/deepe/c/b/d/b;->L:I

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    :cond_1
    return-void
.end method

.method private a(Lcom/deepe/c/b/d/b$b;ILcom/deepe/c/b/d/b$b;)V
    .locals 9

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v1

    if-lez v1, :cond_0

    iget v2, p0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz p3, :cond_a

    iget v1, p3, Lcom/deepe/c/b/d/b$b;->b:I

    iget v3, p1, Lcom/deepe/c/b/d/b$b;->b:I

    if-ge v1, v3, :cond_5

    const/4 v3, 0x0

    iget v4, p3, Lcom/deepe/c/b/d/b$b;->e:F

    iget p3, p3, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v4, p3

    add-float/2addr v4, v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    iget p3, p1, Lcom/deepe/c/b/d/b$b;->b:I

    if-gt v1, p3, :cond_a

    iget-object p3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lt v3, p3, :cond_1

    goto/16 :goto_7

    :cond_1
    :goto_2
    iget-object p3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/deepe/c/b/d/b$b;

    iget v5, p3, Lcom/deepe/c/b/d/b$b;->b:I

    if-le v1, v5, :cond_3

    iget-object v5, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-lt v3, v5, :cond_2

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    iget v5, p3, Lcom/deepe/c/b/d/b$b;->b:I

    if-lt v1, v5, :cond_4

    iput v4, p3, Lcom/deepe/c/b/d/b$b;->e:F

    iget p3, p3, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr p3, v2

    add-float/2addr v4, p3

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v5, v1}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result v5

    add-float/2addr v5, v2

    add-float/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget v3, p1, Lcom/deepe/c/b/d/b$b;->b:I

    if-le v1, v3, :cond_a

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    iget p3, p3, Lcom/deepe/c/b/d/b$b;->e:F

    add-int/lit8 v1, v1, -0x1

    :goto_4
    iget v4, p1, Lcom/deepe/c/b/d/b$b;->b:I

    if-lt v1, v4, :cond_a

    if-gez v3, :cond_6

    goto :goto_7

    :cond_6
    :goto_5
    iget-object v4, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/b/d/b$b;

    iget v5, v4, Lcom/deepe/c/b/d/b$b;->b:I

    if-ge v1, v5, :cond_8

    if-gtz v3, :cond_7

    goto :goto_6

    :cond_7
    add-int/lit8 v3, v3, -0x1

    goto :goto_5

    :cond_8
    :goto_6
    iget v5, v4, Lcom/deepe/c/b/d/b$b;->b:I

    if-gt v1, v5, :cond_9

    iget v5, v4, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    iput p3, v4, Lcom/deepe/c/b/d/b$b;->e:F

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_9
    iget-object v5, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v5, v1}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result v5

    add-float/2addr v5, v2

    sub-float/2addr p3, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_a
    :goto_7
    iget-object p3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    iget v1, p1, Lcom/deepe/c/b/d/b$b;->e:F

    iget v3, p1, Lcom/deepe/c/b/d/b$b;->b:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p1, Lcom/deepe/c/b/d/b$b;->b:I

    if-nez v4, :cond_b

    iget v4, p1, Lcom/deepe/c/b/d/b$b;->e:F

    goto :goto_8

    :cond_b
    const v4, -0x800001

    :goto_8
    iput v4, p0, Lcom/deepe/c/b/d/b;->v:F

    iget v4, p1, Lcom/deepe/c/b/d/b$b;->b:I

    add-int/lit8 v0, v0, -0x1

    const/high16 v5, 0x3f800000    # 1.0f

    if-ne v4, v0, :cond_c

    iget v4, p1, Lcom/deepe/c/b/d/b$b;->e:F

    iget v6, p1, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v4, v6

    sub-float/2addr v4, v5

    goto :goto_9

    :cond_c
    const v4, 0x7f7fffff    # Float.MAX_VALUE

    :goto_9
    iput v4, p0, Lcom/deepe/c/b/d/b;->w:F

    add-int/lit8 v4, p2, -0x1

    :goto_a
    if-gez v4, :cond_10

    iget v1, p1, Lcom/deepe/c/b/d/b$b;->e:F

    iget v3, p1, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v1, v3

    add-float/2addr v1, v2

    iget p1, p1, Lcom/deepe/c/b/d/b$b;->b:I

    add-int/lit8 p1, p1, 0x1

    add-int/lit8 p2, p2, 0x1

    move v6, p2

    :goto_b
    if-lt v6, p3, :cond_d

    return-void

    :cond_d
    iget-object p2, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v7, p2

    check-cast v7, Lcom/deepe/c/b/d/b$b;

    :goto_c
    iget p2, v7, Lcom/deepe/c/b/d/b$b;->b:I

    if-lt p1, p2, :cond_f

    iget p2, v7, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne p2, v0, :cond_e

    iget p2, v7, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr p2, v1

    sub-float/2addr p2, v5

    iput p2, p0, Lcom/deepe/c/b/d/b;->w:F

    :cond_e
    iput v1, v7, Lcom/deepe/c/b/d/b$b;->e:F

    iget p2, v7, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr p2, v2

    add-float/2addr v1, p2

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_f
    iget-object p2, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    add-int/lit8 v3, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result p1

    add-float/2addr p1, v2

    add-float/2addr v1, p1

    move p1, v3

    goto :goto_c

    :cond_10
    iget-object v6, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepe/c/b/d/b$b;

    :goto_d
    iget v7, v6, Lcom/deepe/c/b/d/b$b;->b:I

    if-gt v3, v7, :cond_12

    iget v7, v6, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v7, v2

    sub-float/2addr v1, v7

    iput v1, v6, Lcom/deepe/c/b/d/b$b;->e:F

    iget v6, v6, Lcom/deepe/c/b/d/b$b;->b:I

    if-nez v6, :cond_11

    iput v1, p0, Lcom/deepe/c/b/d/b;->v:F

    :cond_11
    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v3, v3, -0x1

    goto :goto_a

    :cond_12
    iget-object v7, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    add-int/lit8 v8, v3, -0x1

    invoke-virtual {v7, v3}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result v3

    add-float/2addr v3, v2

    sub-float/2addr v1, v3

    move v3, v8

    goto :goto_d
.end method

.method private a(Z)V
    .locals 7

    iget v0, p0, Lcom/deepe/c/b/d/b;->aj:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/deepe/c/b/d/b;->d(Z)V

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    xor-int/2addr v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result v4

    iget-object v5, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v5}, Landroid/widget/Scroller;->getCurrX()I

    move-result v5

    iget-object v6, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v6}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    if-ne v3, v5, :cond_1

    if-eq v4, v6, :cond_2

    :cond_1
    invoke-virtual {p0, v5, v6}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    if-eq v5, v3, :cond_2

    invoke-direct {p0, v5}, Lcom/deepe/c/b/d/b;->a(I)Z

    :cond_2
    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->z:Z

    move v3, v2

    :goto_1
    iget-object v4, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_5

    if-eqz v0, :cond_4

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->ai:Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/deepe/c/b/m;->a(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->ai:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_4
    :goto_2
    return-void

    :cond_5
    iget-object v4, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/b/d/b$b;

    iget-boolean v5, v4, Lcom/deepe/c/b/d/b$b;->c:Z

    if-eqz v5, :cond_6

    iput-boolean v2, v4, Lcom/deepe/c/b/d/b$b;->c:Z

    move v0, v1

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private a(FF)Z
    .locals 4

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->G:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/b/d/b;->E:I

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    const/4 v2, 0x0

    if-gez v0, :cond_1

    cmpl-float v0, p2, v2

    if-gtz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v0

    iget v3, p0, Lcom/deepe/c/b/d/b;->E:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    cmpg-float p1, p2, v2

    if-ltz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method private a(I)Z
    .locals 7

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const-string v1, "onPageScrolled did not call superclass implementation"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/deepe/c/b/d/b;->T:Z

    if-eqz p1, :cond_0

    return v2

    :cond_0
    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->U:Z

    const/4 p1, 0x0

    invoke-virtual {p0, v2, p1, v2}, Lcom/deepe/c/b/d/b;->a(IFI)V

    iget-boolean p1, p0, Lcom/deepe/c/b/d/b;->U:Z

    if-eqz p1, :cond_1

    return v2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->h()Lcom/deepe/c/b/d/b$b;

    move-result-object v0

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v3

    iget v4, p0, Lcom/deepe/c/b/d/b;->r:I

    add-int v5, v3, v4

    int-to-float v4, v4

    int-to-float v3, v3

    div-float/2addr v4, v3

    iget v6, v0, Lcom/deepe/c/b/d/b$b;->b:I

    int-to-float p1, p1

    div-float/2addr p1, v3

    iget v3, v0, Lcom/deepe/c/b/d/b$b;->e:F

    sub-float/2addr p1, v3

    iget v0, v0, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v0, v4

    div-float/2addr p1, v0

    int-to-float v0, v5

    mul-float/2addr v0, p1

    float-to-int v0, v0

    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->U:Z

    invoke-virtual {p0, v6, p1, v0}, Lcom/deepe/c/b/d/b;->a(IFI)V

    iget-boolean p1, p0, Lcom/deepe/c/b/d/b;->U:Z

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Landroid/view/View;)Z
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/deepe/c/b/d/b$a;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private b(FF)F
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    neg-float p1, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p2

    invoke-static {v0, p1, v1}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    move-result p1

    neg-float v1, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {v0, p1, p2}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    move-result v1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr v1, p1

    return v1
.end method

.method private b()I
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method private b(I)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->aa:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->b(I)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/deepe/c/b/d/b$e;->b(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ab:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->b(I)V

    :cond_4
    return-void
.end method

.method private b(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->aa:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/deepe/c/b/d/b$e;->a(IFI)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1, p2, p3}, Lcom/deepe/c/b/d/b$e;->a(IFI)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ab:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1, p2, p3}, Lcom/deepe/c/b/d/b$e;->a(IFI)V

    :cond_4
    return-void
.end method

.method private b(Z)V
    .locals 6

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget v3, p0, Lcom/deepe/c/b/d/b;->ae:I

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private c()V
    .locals 4

    iget v0, p0, Lcom/deepe/c/b/d/b;->af:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ag:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->ag:Ljava/util/ArrayList;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ag:Ljava/util/ArrayList;

    sget-object v1, Lcom/deepe/c/b/d/b;->ah:Lcom/deepe/c/b/d/b$i;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->ag:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method private c(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private c(FF)Z
    .locals 10

    iget v0, p0, Lcom/deepe/c/b/d/b;->H:F

    sub-float/2addr v0, p1

    iput p1, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-direct {p0, v0, p2}, Lcom/deepe/c/b/d/b;->b(FF)F

    move-result p1

    sub-float/2addr v0, p1

    const/4 v1, 0x0

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const v4, 0x38d1b717    # 1.0E-4f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_1

    return p1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v3, v0

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/deepe/c/b/d/b;->v:F

    mul-float/2addr v4, v0

    iget v5, p0, Lcom/deepe/c/b/d/b;->w:F

    mul-float/2addr v5, v0

    iget-object v6, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/deepe/c/b/d/b$b;

    iget-object v7, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepe/c/b/d/b$b;

    iget v8, v6, Lcom/deepe/c/b/d/b$b;->b:I

    if-eqz v8, :cond_2

    iget v4, v6, Lcom/deepe/c/b/d/b$b;->e:F

    mul-float/2addr v4, v0

    move v6, v1

    goto :goto_1

    :cond_2
    move v6, v2

    :goto_1
    iget v8, v7, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v9, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v9}, Lcom/deepe/c/b/d/a;->g()I

    move-result v9

    sub-int/2addr v9, v2

    if-eq v8, v9, :cond_3

    iget v5, v7, Lcom/deepe/c/b/d/b$b;->e:F

    mul-float/2addr v5, v0

    goto :goto_2

    :cond_3
    move v1, v2

    :goto_2
    cmpg-float v7, v3, v4

    if-gez v7, :cond_5

    if-eqz v6, :cond_4

    sub-float p1, v4, v3

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p2, v3

    sub-float/2addr v0, p2

    invoke-static {v1, p1, v0}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    goto :goto_3

    :cond_4
    move v2, p1

    :goto_3
    move p1, v2

    move v3, v4

    goto :goto_5

    :cond_5
    cmpl-float v4, v3, v5

    if-lez v4, :cond_7

    if-eqz v1, :cond_6

    sub-float/2addr v3, v5

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    div-float/2addr v3, v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, v3, p2}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    goto :goto_4

    :cond_6
    move v2, p1

    :goto_4
    move p1, v2

    move v3, v5

    :cond_7
    :goto_5
    iget p2, p0, Lcom/deepe/c/b/d/b;->H:F

    float-to-int v0, v3

    int-to-float v1, v0

    sub-float/2addr v3, v1

    add-float/2addr p2, v3

    iput p2, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    invoke-direct {p0, v0}, Lcom/deepe/c/b/d/b;->a(I)Z

    return p1
.end method

.method private d(I)V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->aa:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->a(I)V

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$e;

    if-eqz v2, :cond_2

    invoke-interface {v2, p1}, Lcom/deepe/c/b/d/b$e;->a(I)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ab:Lcom/deepe/c/b/d/b$e;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/deepe/c/b/d/b$e;->a(I)V

    :cond_4
    return-void
.end method

.method private d(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->y:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/deepe/c/b/d/b;->y:Z

    :cond_0
    return-void
.end method

.method private d()Z
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->i()V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->onRelease()V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private h()Lcom/deepe/c/b/d/b$b;
    .locals 12

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-lez v0, :cond_1

    iget v3, p0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v3, v3

    int-to-float v0, v0

    div-float/2addr v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x1

    move v8, v4

    move v7, v5

    move v9, v6

    move v5, v1

    :goto_2
    iget-object v10, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lt v8, v10, :cond_2

    return-object v0

    :cond_2
    iget-object v10, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepe/c/b/d/b$b;

    if-nez v9, :cond_3

    iget v11, v10, Lcom/deepe/c/b/d/b$b;->b:I

    add-int/2addr v7, v6

    if-eq v11, v7, :cond_3

    iget-object v10, p0, Lcom/deepe/c/b/d/b;->j:Lcom/deepe/c/b/d/b$b;

    add-float/2addr v1, v5

    add-float/2addr v1, v3

    iput v1, v10, Lcom/deepe/c/b/d/b$b;->e:F

    iput v7, v10, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget v5, v10, Lcom/deepe/c/b/d/b$b;->b:I

    invoke-virtual {v1, v5}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result v1

    iput v1, v10, Lcom/deepe/c/b/d/b$b;->d:F

    add-int/lit8 v8, v8, -0x1

    :cond_3
    iget v1, v10, Lcom/deepe/c/b/d/b$b;->e:F

    iget v5, v10, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v5, v1

    add-float/2addr v5, v3

    if-nez v9, :cond_5

    cmpl-float v7, v2, v1

    if-ltz v7, :cond_4

    goto :goto_3

    :cond_4
    return-object v0

    :cond_5
    :goto_3
    cmpg-float v0, v2, v5

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v6

    if-ne v8, v0, :cond_6

    goto :goto_4

    :cond_6
    iget v7, v10, Lcom/deepe/c/b/d/b$b;->b:I

    iget v5, v10, Lcom/deepe/c/b/d/b$b;->d:F

    add-int/lit8 v8, v8, 0x1

    move v9, v4

    move-object v0, v10

    goto :goto_2

    :cond_7
    :goto_4
    return-object v10
.end method

.method private i()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->B:Z

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->C:Z

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 10

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/deepe/c/b/d/b;->H:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr v0, p1

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result p1

    int-to-float p1, p1

    iget v1, p0, Lcom/deepe/c/b/d/b;->v:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/deepe/c/b/d/b;->w:F

    mul-float/2addr v2, p1

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/b/d/b$b;

    iget-object v4, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/b/d/b$b;

    iget v5, v3, Lcom/deepe/c/b/d/b$b;->b:I

    if-eqz v5, :cond_1

    iget v1, v3, Lcom/deepe/c/b/d/b$b;->e:F

    mul-float/2addr v1, p1

    :cond_1
    iget v3, v4, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v5, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v5}, Lcom/deepe/c/b/d/a;->g()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-eq v3, v5, :cond_2

    iget v2, v4, Lcom/deepe/c/b/d/b$b;->e:F

    mul-float/2addr v2, p1

    :cond_2
    cmpg-float p1, v0, v1

    if-gez p1, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    cmpl-float p1, v0, v2

    if-lez p1, :cond_4

    move v0, v2

    :cond_4
    :goto_0
    iget p1, p0, Lcom/deepe/c/b/d/b;->H:F

    float-to-int v1, v0

    int-to-float v2, v1

    sub-float/2addr v0, v2

    add-float/2addr p1, v0

    iput p1, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->a(I)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iget-wide v2, p0, Lcom/deepe/c/b/d/b;->S:J

    const/4 v6, 0x2

    iget v7, p0, Lcom/deepe/c/b/d/b;->H:F

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    return-void

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected a(IFI)V
    .locals 12

    iget v0, p0, Lcom/deepe/c/b/d/b;->V:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_6

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v5

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v6

    move v7, v1

    :goto_0
    if-lt v7, v6, :cond_0

    goto :goto_4

    :cond_0
    invoke-virtual {p0, v7}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lcom/deepe/c/b/d/b$c;

    iget-boolean v10, v9, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v10, :cond_1

    goto :goto_3

    :cond_1
    iget v9, v9, Lcom/deepe/c/b/d/b$c;->b:I

    and-int/lit8 v9, v9, 0x7

    if-eq v9, v2, :cond_4

    const/4 v10, 0x3

    if-eq v9, v10, :cond_3

    const/4 v10, 0x5

    if-eq v9, v10, :cond_2

    move v9, v3

    goto :goto_2

    :cond_2
    sub-int v9, v5, v4

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    add-int/2addr v4, v10

    goto :goto_1

    :cond_3
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v9, v3

    goto :goto_2

    :cond_4
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    sub-int v9, v5, v9

    div-int/lit8 v9, v9, 0x2

    invoke-static {v9, v3}, Ljava/lang/Math;->max(II)I

    move-result v9

    :goto_1
    move v11, v9

    move v9, v3

    move v3, v11

    :goto_2
    add-int/2addr v3, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int/2addr v3, v10

    if-eqz v3, :cond_5

    invoke-virtual {v8, v3}, Landroid/view/View;->offsetLeftAndRight(I)V

    :cond_5
    move v3, v9

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_6
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/b/d/b;->b(IFI)V

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->ad:Lcom/deepe/c/b/d/b$f;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result p1

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result p2

    :goto_5
    if-lt v1, p2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/b/d/b$c;

    iget-boolean v0, v0, Lcom/deepe/c/b/d/b$c;->a:Z

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    sub-int/2addr v0, p1

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->ad:Lcom/deepe/c/b/d/b$f;

    invoke-interface {v3, p3, v0}, Lcom/deepe/c/b/d/b$f;->a(Landroid/view/View;F)V

    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    :goto_7
    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->U:Z

    return-void
.end method

.method a(III)V
    .locals 9

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->d(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->p:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I

    move-result v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getStartX()I

    move-result v0

    :goto_1
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->abortAnimation()V

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->d(Z)V

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v0

    :goto_2
    move v4, v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result v5

    sub-int v6, p1, v4

    sub-int v7, p2, v5

    if-nez v6, :cond_4

    if-nez v7, :cond_4

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->a(Z)V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->f(I)V

    return-void

    :cond_4
    invoke-direct {p0, v2}, Lcom/deepe/c/b/d/b;->d(Z)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->f(I)V

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result p1

    div-int/lit8 p2, p1, 0x2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v0, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    int-to-float p2, p2

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->b(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-float/2addr p2, v0

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result p3

    if-lez p3, :cond_5

    const/high16 p1, 0x447a0000    # 1000.0f

    int-to-float p3, p3

    div-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    mul-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p1

    mul-int/lit8 p1, p1, 0x4

    goto :goto_3

    :cond_5
    iget-object p2, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget p3, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {p2, p3}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float p3, p3

    add-float/2addr p1, p3

    div-float/2addr p2, p1

    add-float/2addr p2, v2

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    :goto_3
    const/16 p2, 0x258

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v8

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->p:Z

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual/range {v3 .. v8}, Landroid/widget/Scroller;->startScroll(IIIII)V

    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    return-void
.end method

.method a(IZZ)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/deepe/c/b/d/b;->a(IZZI)V

    return-void
.end method

.method a(IZZI)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_1

    iget p3, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne p3, p1, :cond_1

    iget-object p3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-eqz p3, :cond_1

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->d(Z)V

    return-void

    :cond_1
    const/4 p3, 0x1

    if-gez p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    if-lt p1, v0, :cond_3

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {p1}, Lcom/deepe/c/b/d/a;->g()I

    move-result p1

    sub-int/2addr p1, p3

    :cond_3
    :goto_0
    iget v0, p0, Lcom/deepe/c/b/d/b;->A:I

    iget v2, p0, Lcom/deepe/c/b/d/b;->d:I

    add-int v3, v2, v0

    if-gt p1, v3, :cond_4

    sub-int/2addr v2, v0

    if-ge p1, v2, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_9

    :cond_5
    iget v0, p0, Lcom/deepe/c/b/d/b;->d:I

    if-eq v0, p1, :cond_6

    move v1, p3

    :cond_6
    iget-boolean p3, p0, Lcom/deepe/c/b/d/b;->T:Z

    if-eqz p3, :cond_8

    iput p1, p0, Lcom/deepe/c/b/d/b;->d:I

    if-eqz v1, :cond_7

    invoke-direct {p0, p1}, Lcom/deepe/c/b/d/b;->b(I)V

    :cond_7
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->requestLayout()V

    goto :goto_2

    :cond_8
    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->h(I)V

    invoke-direct {p0, p1, p2, p4, v1}, Lcom/deepe/c/b/d/b;->a(IZIZ)V

    :goto_2
    return-void

    :cond_9
    iget-object v2, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/b/d/b$b;

    iput-boolean p3, v2, Lcom/deepe/c/b/d/b$b;->c:Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_a
    :goto_3
    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->d(Z)V

    return-void
.end method

.method a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/deepe/c/b/d/b;->setWillNotDraw(Z)V

    const/high16 p2, 0x40000

    invoke-virtual {p0, p2}, Lcom/deepe/c/b/d/b;->setDescendantFocusability(I)V

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/deepe/c/b/d/b;->setFocusable(Z)V

    new-instance v0, Landroid/widget/Scroller;

    sget-object v1, Lcom/deepe/c/b/d/b;->h:Landroid/view/animation/Interpolator;

    invoke-direct {v0, p1, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v2

    iput v2, p0, Lcom/deepe/c/b/d/b;->F:I

    const/high16 v2, 0x43c80000    # 400.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    iput v2, p0, Lcom/deepe/c/b/d/b;->N:I

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/deepe/c/b/d/b;->O:I

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    new-instance v0, Landroid/widget/EdgeEffect;

    invoke-direct {v0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    const/high16 p1, 0x41c80000    # 25.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/deepe/c/b/d/b;->P:I

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcom/deepe/c/b/d/b;->Q:I

    const/high16 p1, 0x41800000    # 16.0f

    mul-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, p0, Lcom/deepe/c/b/d/b;->D:I

    invoke-static {p0}, Lcom/deepe/c/b/m;->b(Landroid/view/View;)I

    move-result p1

    if-nez p1, :cond_0

    invoke-static {p0, p2}, Lcom/deepe/c/b/m;->a(Landroid/view/View;I)V

    :cond_0
    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public a(Lcom/deepe/c/b/d/a;)V
    .locals 7

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/a;->c(Landroid/database/DataSetObserver;)V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0, p0}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;)V

    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0, p0}, Lcom/deepe/c/b/d/a;->b(Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->a()V

    iput v2, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {p0, v2, v2}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/b/d/b$b;

    iget-object v4, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget v5, v3, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v3, v3, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v4, p0, v5, v3}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iput-object p1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iput v2, p0, Lcom/deepe/c/b/d/b;->a:I

    if-eqz p1, :cond_5

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->q:Lcom/deepe/c/b/d/b$g;

    if-nez v3, :cond_2

    new-instance v3, Lcom/deepe/c/b/d/b$g;

    invoke-direct {v3, p0}, Lcom/deepe/c/b/d/b$g;-><init>(Lcom/deepe/c/b/d/b;)V

    iput-object v3, p0, Lcom/deepe/c/b/d/b;->q:Lcom/deepe/c/b/d/b$g;

    :cond_2
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v4, p0, Lcom/deepe/c/b/d/b;->q:Lcom/deepe/c/b/d/b$g;

    invoke-virtual {v3, v4}, Lcom/deepe/c/b/d/a;->c(Landroid/database/DataSetObserver;)V

    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->z:Z

    iget-boolean v3, p0, Lcom/deepe/c/b/d/b;->T:Z

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/deepe/c/b/d/b;->T:Z

    iget-object v5, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v5}, Lcom/deepe/c/b/d/a;->g()I

    move-result v5

    iput v5, p0, Lcom/deepe/c/b/d/b;->a:I

    iget v5, p0, Lcom/deepe/c/b/d/b;->l:I

    if-ltz v5, :cond_3

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v5, p0, Lcom/deepe/c/b/d/b;->m:Landroid/os/Parcelable;

    iget-object v6, p0, Lcom/deepe/c/b/d/b;->n:Ljava/lang/ClassLoader;

    invoke-virtual {v3, v5, v6}, Lcom/deepe/c/b/d/a;->a(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V

    iget v3, p0, Lcom/deepe/c/b/d/b;->l:I

    invoke-virtual {p0, v3, v2, v4}, Lcom/deepe/c/b/d/b;->a(IZZ)V

    const/4 v3, -0x1

    iput v3, p0, Lcom/deepe/c/b/d/b;->l:I

    iput-object v1, p0, Lcom/deepe/c/b/d/b;->m:Landroid/os/Parcelable;

    iput-object v1, p0, Lcom/deepe/c/b/d/b;->n:Ljava/lang/ClassLoader;

    goto :goto_2

    :cond_3
    if-nez v3, :cond_4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->requestLayout()V

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->ac:Ljava/util/List;

    if-eqz v1, :cond_7

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->ac:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_3
    if-lt v2, v1, :cond_6

    goto :goto_4

    :cond_6
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->ac:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/b/d/b$d;

    invoke-interface {v3, p0, v0, p1}, Lcom/deepe/c/b/d/b$d;->a(Lcom/deepe/c/b/d/b;Lcom/deepe/c/b/d/a;Lcom/deepe/c/b/d/a;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public a(Lcom/deepe/c/b/d/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(ZLcom/deepe/c/b/d/b$f;)V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/b/d/b;->a(ZLcom/deepe/c/b/d/b$f;I)V

    return-void
.end method

.method public a(ZLcom/deepe/c/b/d/b$f;I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/deepe/c/b/d/b;->ad:Lcom/deepe/c/b/d/b$f;

    if-eqz v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    xor-int/2addr v3, v2

    iput-object p2, p0, Lcom/deepe/c/b/d/b;->ad:Lcom/deepe/c/b/d/b$f;

    invoke-virtual {p0, v2}, Lcom/deepe/c/b/d/b;->setChildrenDrawingOrderEnabled(Z)V

    if-eqz v2, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    :cond_2
    iput v0, p0, Lcom/deepe/c/b/d/b;->af:I

    iput p3, p0, Lcom/deepe/c/b/d/b;->ae:I

    goto :goto_2

    :cond_3
    iput v1, p0, Lcom/deepe/c/b/d/b;->af:I

    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    :cond_4
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x15

    const/4 v2, 0x2

    if-eq v0, v1, :cond_4

    const/16 v1, 0x16

    if-eq v0, v1, :cond_2

    const/16 v1, 0x3d

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/deepe/c/b/d/b;->j(I)Z

    move-result p1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->j(I)Z

    move-result p1

    goto :goto_2

    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->p()Z

    move-result p1

    goto :goto_2

    :cond_3
    const/16 p1, 0x42

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->hasModifiers(I)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->o()Z

    move-result p1

    goto :goto_2

    :cond_5
    const/16 p1, 0x11

    :goto_0
    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->j(I)Z

    move-result p1

    goto :goto_2

    :cond_6
    :goto_1
    const/4 p1, 0x0

    :goto_2
    return p1
.end method

.method protected a(Landroid/view/View;ZIII)Z
    .locals 12

    move-object v0, p1

    instance-of v1, v0, Landroid/view/ViewGroup;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/View;->getScrollX()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    sub-int/2addr v5, v2

    :goto_0
    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    add-int v6, p4, v3

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v8

    if-lt v6, v8, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getRight()I

    move-result v8

    if-ge v6, v8, :cond_1

    add-int v8, p5, v4

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v9

    if-lt v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getBottom()I

    move-result v9

    if-ge v8, v9, :cond_1

    const/4 v9, 0x1

    invoke-virtual {v7}, Landroid/view/View;->getLeft()I

    move-result v10

    sub-int v10, v6, v10

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v6

    sub-int v11, v8, v6

    move-object v6, p0

    move v8, v9

    move v9, p3

    invoke-virtual/range {v6 .. v11}, Lcom/deepe/c/b/d/b;->a(Landroid/view/View;ZIII)Z

    move-result v6

    if-eqz v6, :cond_1

    return v2

    :cond_1
    add-int/lit8 v5, v5, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    move v1, p3

    neg-int v1, v1

    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getDescendantFocusability()I

    move-result v1

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_2

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v3

    if-lt v2, v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v4

    if-eqz v4, :cond_1

    iget v4, v4, Lcom/deepe/c/b/d/b$b;->b:I

    iget v5, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v4, v5, :cond_1

    invoke-virtual {v3, p1, p2, p3}, Landroid/view/View;->addFocusables(Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    const/high16 p2, 0x40000

    if-ne v1, p2, :cond_3

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne v0, p2, :cond_6

    :cond_3
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->isFocusable()Z

    move-result p2

    if-nez p2, :cond_4

    return-void

    :cond_4
    const/4 p2, 0x1

    and-int/2addr p3, p2

    if-ne p3, p2, :cond_5

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->isInTouchMode()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->isFocusableInTouchMode()Z

    move-result p2

    if-nez p2, :cond_5

    return-void

    :cond_5
    if-eqz p1, :cond_6

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_6
    return-void
.end method

.method public addTouchables(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v2

    if-eqz v2, :cond_1

    iget v2, v2, Lcom/deepe/c/b/d/b$b;->b:I

    iget v3, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v2, v3, :cond_1

    invoke-virtual {v1, p1}, Landroid/view/View;->addTouchables(Ljava/util/ArrayList;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 3

    invoke-virtual {p0, p3}, Lcom/deepe/c/b/d/b;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/deepe/c/b/d/b;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    :cond_0
    move-object v0, p3

    check-cast v0, Lcom/deepe/c/b/d/b$c;

    iget-boolean v1, v0, Lcom/deepe/c/b/d/b$c;->a:Z

    invoke-static {p1}, Lcom/deepe/c/b/d/b;->a(Landroid/view/View;)Z

    move-result v2

    or-int/2addr v1, v2

    iput-boolean v1, v0, Lcom/deepe/c/b/d/b$c;->a:Z

    iget-boolean v1, p0, Lcom/deepe/c/b/d/b;->x:Z

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-boolean v1, v0, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Cannot add pager decor view during layout"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/deepe/c/b/d/b$c;->d:Z

    invoke-virtual {p0, p1, p2, p3}, Lcom/deepe/c/b/d/b;->addViewInLayout(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)Z

    goto :goto_1

    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method b(F)F
    .locals 2

    const/high16 v0, 0x3f000000    # 0.5f

    sub-float/2addr p1, v0

    const v0, 0x3ef1463b

    mul-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method b(II)Lcom/deepe/c/b/d/b$b;
    .locals 2

    new-instance v0, Lcom/deepe/c/b/d/b$b;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$b;-><init>()V

    iput p1, v0, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1, p0, p1}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, v0, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1, p1}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result p1

    iput p1, v0, Lcom/deepe/c/b/d/b$b;->d:F

    if-ltz p2, :cond_1

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lt p2, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, p2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    return-object v0
.end method

.method b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/b/d/b$b;

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v3, v1, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v2, p1, v3}, Lcom/deepe/c/b/d/a;->a(Landroid/view/View;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public b(IZ)V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->z:Z

    invoke-virtual {p0, p1, p2, v0}, Lcom/deepe/c/b/d/b;->a(IZZ)V

    return-void
.end method

.method public b(Lcom/deepe/c/b/d/b$e;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->W:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method c(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;
    .locals 1

    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object p1

    return-object p1

    :cond_0
    instance-of p1, v0, Landroid/view/View;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return-object p1

    :cond_1
    move-object p1, v0

    check-cast p1, Landroid/view/View;

    goto :goto_0
.end method

.method public c(I)V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->z:Z

    iget-boolean v1, p0, Lcom/deepe/c/b/d/b;->T:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, p1, v1, v0}, Lcom/deepe/c/b/d/b;->a(IZZ)V

    return-void
.end method

.method public c_()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/d/b;->d:I

    return v0
.end method

.method public canScrollHorizontally(I)Z
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v2

    const/4 v3, 0x1

    if-gez p1, :cond_2

    int-to-float p1, v0

    iget v0, p0, Lcom/deepe/c/b/d/b;->v:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-le v2, p1, :cond_1

    return v3

    :cond_1
    return v1

    :cond_2
    if-lez p1, :cond_3

    int-to-float p1, v0

    iget v0, p0, Lcom/deepe/c/b/d/b;->w:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    if-ge v2, p1, :cond_3

    return v3

    :cond_3
    return v1
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    instance-of v0, p1, Lcom/deepe/c/b/d/b$c;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public computeScroll()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->p:Z

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollY()I

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->getCurrX()I

    move-result v2

    iget-object v3, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    if-ne v0, v2, :cond_0

    if-eq v1, v3, :cond_1

    :cond_0
    invoke-virtual {p0, v2, v3}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    invoke-direct {p0, v2}, Lcom/deepe/c/b/d/b;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v3}, Lcom/deepe/c/b/d/b;->scrollTo(II)V

    :cond_1
    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    return-void

    :cond_2
    invoke-direct {p0, v0}, Lcom/deepe/c/b/d/b;->a(Z)V

    return-void
.end method

.method public d_()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    return v0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->a(Landroid/view/KeyEvent;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 6

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x1000

    if-ne v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0, v2}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v3}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v4

    if-eqz v4, :cond_2

    iget v4, v4, Lcom/deepe/c/b/d/b$b;->b:I

    iget v5, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v3, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getOverScrollMode()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    if-le v0, v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {p1}, Landroid/widget/EdgeEffect;->finish()V

    goto/16 :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v3

    const/high16 v4, 0x43870000    # 270.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    neg-int v4, v2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget v5, p0, Lcom/deepe/c/b/d/b;->v:F

    int-to-float v6, v3

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v2, v3}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v0}, Landroid/widget/EdgeEffect;->isFinished()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    const/high16 v4, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->rotate(F)V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v4

    neg-int v4, v4

    int-to-float v4, v4

    iget v5, p0, Lcom/deepe/c/b/d/b;->w:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    neg-float v5, v5

    int-to-float v6, v2

    mul-float/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v4, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v4, v3, v2}, Landroid/widget/EdgeEffect;->setSize(II)V

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-virtual {v2, p1}, Landroid/widget/EdgeEffect;->draw(Landroid/graphics/Canvas;)Z

    move-result v2

    or-int/2addr v1, v2

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    :cond_4
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/view/ViewGroup;->drawableStateChanged()V

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method f(I)V
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/d/b;->aj:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/deepe/c/b/d/b;->aj:I

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ad:Lcom/deepe/c/b/d/b$f;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepe/c/b/d/b;->b(Z)V

    :cond_2
    invoke-direct {p0, p1}, Lcom/deepe/c/b/d/b;->d(I)V

    return-void
.end method

.method public f()Z
    .locals 12

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->f(I)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepe/c/b/d/b;->H:F

    iput v1, p0, Lcom/deepe/c/b/d/b;->J:F

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    if-nez v1, :cond_1

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v1

    iput-object v1, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/view/VelocityTracker;->clear()V

    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-wide v2, v10

    move-wide v4, v10

    invoke-static/range {v2 .. v9}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v2, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    iput-wide v10, p0, Lcom/deepe/c/b/d/b;->S:J

    return v0
.end method

.method public g()V
    .locals 6

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    iget v2, p0, Lcom/deepe/c/b/d/b;->O:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v1, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->z:Z

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v3

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->h()Lcom/deepe/c/b/d/b$b;

    move-result-object v4

    iget v5, v4, Lcom/deepe/c/b/d/b$b;->b:I

    int-to-float v3, v3

    int-to-float v2, v2

    div-float/2addr v3, v2

    iget v2, v4, Lcom/deepe/c/b/d/b$b;->e:F

    sub-float/2addr v3, v2

    iget v2, v4, Lcom/deepe/c/b/d/b$b;->d:F

    div-float/2addr v3, v2

    iget v2, p0, Lcom/deepe/c/b/d/b;->H:F

    iget v4, p0, Lcom/deepe/c/b/d/b;->J:F

    sub-float/2addr v2, v4

    float-to-int v2, v2

    invoke-direct {p0, v5, v3, v0, v2}, Lcom/deepe/c/b/d/b;->a(IFII)I

    move-result v2

    invoke-virtual {p0, v2, v1, v1, v0}, Lcom/deepe/c/b/d/b;->a(IZZI)V

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->i()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No fake drag in progress. Call beginFakeDrag first."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public g(I)V
    .locals 3

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Requested offscreen page limit "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " too small; defaulting to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ViewPager"

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/deepe/c/b/d/b;->A:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/deepe/c/b/d/b;->A:I

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    :cond_1
    return-void
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    new-instance v0, Lcom/deepe/c/b/d/b$c;

    invoke-direct {v0}, Lcom/deepe/c/b/d/b$c;-><init>()V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    new-instance v0, Lcom/deepe/c/b/d/b$c;

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/deepe/c/b/d/b$c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected getChildDrawingOrder(II)I
    .locals 2

    iget v0, p0, Lcom/deepe/c/b/d/b;->af:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    add-int/lit8 p1, p1, -0x1

    sub-int p2, p1, p2

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->ag:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Lcom/deepe/c/b/d/b$c;

    iget p1, p1, Lcom/deepe/c/b/d/b$c;->f:I

    return p1
.end method

.method h(I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    iget v2, v0, Lcom/deepe/c/b/d/b;->d:I

    if-eq v2, v1, :cond_0

    invoke-virtual {v0, v2}, Lcom/deepe/c/b/d/b;->i(I)Lcom/deepe/c/b/d/b$b;

    move-result-object v2

    iput v1, v0, Lcom/deepe/c/b/d/b;->d:I

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-nez v1, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->c()V

    return-void

    :cond_1
    iget-boolean v1, v0, Lcom/deepe/c/b/d/b;->z:Z

    if-eqz v1, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->c()V

    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1, v0}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;)V

    iget v1, v0, Lcom/deepe/c/b/d/b;->A:I

    iget v4, v0, Lcom/deepe/c/b/d/b;->d:I

    sub-int/2addr v4, v1

    const/4 v5, 0x0

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget-object v6, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v6}, Lcom/deepe/c/b/d/a;->g()I

    move-result v6

    add-int/lit8 v7, v6, -0x1

    iget v8, v0, Lcom/deepe/c/b/d/b;->d:I

    add-int/2addr v8, v1

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget v7, v0, Lcom/deepe/c/b/d/b;->a:I

    if-ne v6, v7, :cond_21

    move v7, v5

    :goto_1
    iget-object v8, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lt v7, v8, :cond_4

    goto :goto_2

    :cond_4
    iget-object v8, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/deepe/c/b/d/b$b;

    iget v9, v8, Lcom/deepe/c/b/d/b$b;->b:I

    iget v10, v0, Lcom/deepe/c/b/d/b;->d:I

    if-lt v9, v10, :cond_20

    iget v9, v8, Lcom/deepe/c/b/d/b$b;->b:I

    iget v10, v0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v9, v10, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v8, 0x0

    :goto_3
    if-nez v8, :cond_6

    if-lez v6, :cond_6

    iget v8, v0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {v0, v8, v7}, Lcom/deepe/c/b/d/b;->b(II)Lcom/deepe/c/b/d/b$b;

    move-result-object v8

    :cond_6
    const/4 v9, 0x0

    if-eqz v8, :cond_18

    add-int/lit8 v10, v7, -0x1

    if-ltz v10, :cond_7

    iget-object v11, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/deepe/c/b/d/b$b;

    goto :goto_4

    :cond_7
    const/4 v11, 0x0

    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v12

    const/high16 v13, 0x40000000    # 2.0f

    if-gtz v12, :cond_8

    move v14, v9

    goto :goto_5

    :cond_8
    iget v14, v8, Lcom/deepe/c/b/d/b$b;->d:F

    sub-float v14, v13, v14

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v15

    int-to-float v15, v15

    int-to-float v3, v12

    div-float/2addr v15, v3

    add-float/2addr v14, v15

    :goto_5
    iget v3, v0, Lcom/deepe/c/b/d/b;->d:I

    add-int/lit8 v3, v3, -0x1

    move v15, v9

    :goto_6
    if-gez v3, :cond_9

    goto :goto_7

    :cond_9
    cmpl-float v16, v15, v14

    if-ltz v16, :cond_14

    if-ge v3, v4, :cond_14

    if-nez v11, :cond_13

    :goto_7
    iget v3, v8, Lcom/deepe/c/b/d/b$b;->d:F

    add-int/lit8 v4, v7, 0x1

    cmpg-float v10, v3, v13

    if-gez v10, :cond_12

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_a

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepe/c/b/d/b$b;

    goto :goto_8

    :cond_a
    const/4 v10, 0x0

    :goto_8
    if-gtz v12, :cond_b

    move v11, v9

    goto :goto_9

    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v11

    int-to-float v11, v11

    int-to-float v12, v12

    div-float/2addr v11, v12

    add-float/2addr v11, v13

    :goto_9
    iget v12, v0, Lcom/deepe/c/b/d/b;->d:I

    :goto_a
    add-int/lit8 v12, v12, 0x1

    if-lt v12, v6, :cond_c

    goto :goto_d

    :cond_c
    cmpl-float v13, v3, v11

    if-ltz v13, :cond_f

    if-le v12, v1, :cond_f

    if-nez v10, :cond_d

    goto :goto_d

    :cond_d
    iget v13, v10, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v12, v13, :cond_11

    iget-boolean v13, v10, Lcom/deepe/c/b/d/b$b;->c:Z

    if-nez v13, :cond_11

    iget-object v13, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v13, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v10, v10, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v13, v0, v12, v10}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    :goto_b
    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepe/c/b/d/b$b;

    goto :goto_c

    :cond_e
    const/4 v10, 0x0

    goto :goto_c

    :cond_f
    if-eqz v10, :cond_10

    iget v13, v10, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v12, v13, :cond_10

    iget v10, v10, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v3, v10

    add-int/lit8 v4, v4, 0x1

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    goto :goto_b

    :cond_10
    invoke-virtual {v0, v12, v4}, Lcom/deepe/c/b/d/b;->b(II)Lcom/deepe/c/b/d/b$b;

    move-result-object v10

    add-int/lit8 v4, v4, 0x1

    iget v10, v10, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v3, v10

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v4, v10, :cond_e

    goto :goto_b

    :cond_11
    :goto_c
    goto :goto_a

    :cond_12
    :goto_d
    invoke-direct {v0, v8, v7, v2}, Lcom/deepe/c/b/d/b;->a(Lcom/deepe/c/b/d/b$b;ILcom/deepe/c/b/d/b$b;)V

    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget v2, v0, Lcom/deepe/c/b/d/b;->d:I

    iget-object v3, v8, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/deepe/c/b/d/a;->b(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    goto :goto_10

    :cond_13
    iget v5, v11, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v3, v5, :cond_17

    iget-boolean v5, v11, Lcom/deepe/c/b/d/b$b;->c:Z

    if-nez v5, :cond_17

    iget-object v5, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v5, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v11, v11, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v5, v0, v3, v11}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    add-int/lit8 v10, v10, -0x1

    add-int/lit8 v7, v7, -0x1

    if-ltz v10, :cond_16

    goto :goto_e

    :cond_14
    if-eqz v11, :cond_15

    iget v5, v11, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v3, v5, :cond_15

    iget v5, v11, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v15, v5

    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_16

    goto :goto_e

    :cond_15
    add-int/lit8 v5, v10, 0x1

    invoke-virtual {v0, v3, v5}, Lcom/deepe/c/b/d/b;->b(II)Lcom/deepe/c/b/d/b$b;

    move-result-object v5

    iget v5, v5, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v15, v5

    add-int/lit8 v7, v7, 0x1

    if-ltz v10, :cond_16

    :goto_e
    iget-object v5, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/b/d/b$b;

    goto :goto_f

    :cond_16
    const/4 v5, 0x0

    :goto_f
    move-object v11, v5

    :cond_17
    add-int/lit8 v3, v3, -0x1

    const/4 v5, 0x0

    goto/16 :goto_6

    :cond_18
    :goto_10
    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1, v0}, Lcom/deepe/c/b/d/a;->b(Landroid/view/ViewGroup;)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v3

    const/4 v1, 0x0

    :goto_11
    if-lt v1, v3, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->c()V

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->findFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/b;->c(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v3

    goto :goto_12

    :cond_19
    const/4 v3, 0x0

    :goto_12
    if-eqz v3, :cond_1a

    iget v1, v3, Lcom/deepe/c/b/d/b$b;->b:I

    iget v2, v0, Lcom/deepe/c/b/d/b;->d:I

    if-eq v1, v2, :cond_1d

    :cond_1a
    const/4 v5, 0x0

    :goto_13
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v1

    if-lt v5, v1, :cond_1b

    goto :goto_14

    :cond_1b
    invoke-virtual {v0, v5}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v2, v2, Lcom/deepe/c/b/d/b$b;->b:I

    iget v3, v0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v2, v3, :cond_1c

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/view/View;->requestFocus(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    goto :goto_14

    :cond_1c
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_1d
    :goto_14
    return-void

    :cond_1e
    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/b/d/b$c;

    iput v1, v4, Lcom/deepe/c/b/d/b$c;->f:I

    iget-boolean v5, v4, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v5, :cond_1f

    iget v5, v4, Lcom/deepe/c/b/d/b$c;->c:F

    cmpl-float v5, v5, v9

    if-nez v5, :cond_1f

    invoke-virtual {v0, v2}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v5, v2, Lcom/deepe/c/b/d/b$b;->d:F

    iput v5, v4, Lcom/deepe/c/b/d/b$c;->c:F

    iget v2, v2, Lcom/deepe/c/b/d/b$b;->b:I

    iput v2, v4, Lcom/deepe/c/b/d/b$c;->e:I

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    :cond_20
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto/16 :goto_1

    :cond_21
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_15

    :catch_0
    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_15
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "The application\'s PagerAdapter changed the adapter\'s contents without calling PagerAdapter#notifyDataSetChanged! Expected adapter item count: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, v0, Lcom/deepe/c/b/d/b;->a:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " Pager id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Pager class: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " Problematic adapter: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method i(I)Lcom/deepe/c/b/d/b$b;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/b/d/b$b;

    iget v2, v1, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public j(I)Z
    .locals 6

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->findFocus()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p0, :cond_0

    :goto_0
    move-object v0, v3

    goto :goto_4

    :cond_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    :goto_1
    instance-of v5, v4, Landroid/view/ViewGroup;

    if-nez v5, :cond_1

    move v4, v2

    goto :goto_2

    :cond_1
    if-ne v4, p0, :cond_3

    move v4, v1

    :goto_2
    if-nez v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_3
    instance-of v5, v0, Landroid/view/ViewGroup;

    if-nez v5, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "arrowScroll tried to find focus based on non-child current focused view "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "ViewPager"

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v5, " => "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_3

    :cond_3
    invoke-interface {v4}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    goto :goto_1

    :cond_4
    :goto_4
    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object v3

    invoke-virtual {v3, p0, v0, p1}, Landroid/view/FocusFinder;->findNextFocus(Landroid/view/ViewGroup;Landroid/view/View;I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x42

    const/16 v5, 0x11

    if-eqz v3, :cond_7

    if-eq v3, v0, :cond_7

    if-ne p1, v5, :cond_6

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/deepe/c/b/d/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/deepe/c/b/d/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-lt v1, v2, :cond_5

    goto :goto_6

    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    move-result v2

    goto :goto_7

    :cond_6
    if-ne p1, v4, :cond_b

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v1, v3}, Lcom/deepe/c/b/d/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/deepe/c/b/d/b;->k:Landroid/graphics/Rect;

    invoke-direct {p0, v2, v0}, Lcom/deepe/c/b/d/b;->a(Landroid/graphics/Rect;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v0, :cond_5

    if-gt v1, v2, :cond_5

    goto :goto_5

    :cond_7
    if-eq p1, v5, :cond_a

    if-ne p1, v1, :cond_8

    goto :goto_6

    :cond_8
    if-eq p1, v4, :cond_9

    const/4 v0, 0x2

    if-ne p1, v0, :cond_b

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->p()Z

    move-result v2

    goto :goto_7

    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->o()Z

    move-result v2

    :cond_b
    :goto_7
    if-eqz v2, :cond_c

    invoke-static {p1}, Landroid/view/SoundEffectConstants;->getContantForFocusDirection(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->playSoundEffect(I)V

    :cond_c
    return v2
.end method

.method public k()Lcom/deepe/c/b/d/a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    return-object v0
.end method

.method public l()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/d/b;->A:I

    return v0
.end method

.method m()V
    .locals 10

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    iput v0, p0, Lcom/deepe/c/b/d/b;->a:I

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/deepe/c/b/d/b;->A:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    const/4 v4, 0x0

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v1, v0, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    iget v2, p0, Lcom/deepe/c/b/d/b;->d:I

    move v5, v4

    move v6, v5

    :goto_1
    iget-object v7, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lt v5, v7, :cond_5

    if-eqz v6, :cond_1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v0, p0}, Lcom/deepe/c/b/d/a;->b(Landroid/view/ViewGroup;)V

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    sget-object v5, Lcom/deepe/c/b/d/b;->g:Ljava/util/Comparator;

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    move v1, v4

    :goto_2
    if-lt v1, v0, :cond_2

    invoke-virtual {p0, v2, v4, v3}, Lcom/deepe/c/b/d/b;->a(IZZ)V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->requestLayout()V

    goto :goto_3

    :cond_2
    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/b/d/b$c;

    iget-boolean v6, v5, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v6, :cond_3

    const/4 v6, 0x0

    iput v6, v5, Lcom/deepe/c/b/d/b$c;->c:F

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    return-void

    :cond_5
    iget-object v7, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/deepe/c/b/d/b$b;

    iget-object v8, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget-object v9, v7, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Lcom/deepe/c/b/d/a;->a(Ljava/lang/Object;)I

    move-result v8

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    goto :goto_5

    :cond_6
    const/4 v9, -0x2

    if-ne v8, v9, :cond_9

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    if-nez v6, :cond_7

    iget-object v1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v1, p0}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;)V

    move v6, v3

    :cond_7
    iget-object v1, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    iget v8, v7, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v9, v7, Lcom/deepe/c/b/d/b$b;->a:Ljava/lang/Object;

    invoke-virtual {v1, p0, v8, v9}, Lcom/deepe/c/b/d/a;->a(Landroid/view/ViewGroup;ILjava/lang/Object;)V

    iget v1, p0, Lcom/deepe/c/b/d/b;->d:I

    iget v7, v7, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v1, v7, :cond_8

    iget v1, p0, Lcom/deepe/c/b/d/b;->d:I

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    :cond_8
    :goto_4
    move v1, v3

    goto :goto_5

    :cond_9
    iget v9, v7, Lcom/deepe/c/b/d/b$b;->b:I

    if-eq v9, v8, :cond_b

    iget v1, v7, Lcom/deepe/c/b/d/b$b;->b:I

    iget v9, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v1, v9, :cond_a

    move v2, v8

    :cond_a
    iput v8, v7, Lcom/deepe/c/b/d/b$b;->b:I

    goto :goto_4

    :cond_b
    :goto_5
    add-int/2addr v5, v3

    goto/16 :goto_1
.end method

.method n()V
    .locals 1

    iget v0, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->h(I)V

    return-void
.end method

.method o()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/b/d/b;->d:I

    if-lez v0, :cond_0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/b/d/b;->b(IZ)V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/b/d/b;->T:Z

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->ai:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    :cond_0
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    invoke-super/range {p0 .. p1}, Landroid/view/ViewGroup;->onDraw(Landroid/graphics/Canvas;)V

    iget v1, v0, Lcom/deepe/c/b/d/b;->r:I

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/deepe/c/b/d/b;->s:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    iget-object v1, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-eqz v1, :cond_6

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getWidth()I

    move-result v2

    iget v3, v0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float/2addr v3, v4

    iget-object v5, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/b/d/b$b;

    iget v7, v5, Lcom/deepe/c/b/d/b$b;->e:F

    iget-object v8, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    iget v9, v5, Lcom/deepe/c/b/d/b$b;->b:I

    iget-object v10, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/deepe/c/b/d/b$b;

    iget v10, v10, Lcom/deepe/c/b/d/b$b;->b:I

    :goto_0
    if-lt v9, v10, :cond_0

    goto/16 :goto_5

    :cond_0
    :goto_1
    iget v11, v5, Lcom/deepe/c/b/d/b$b;->b:I

    if-le v9, v11, :cond_2

    if-lt v6, v8, :cond_1

    goto :goto_2

    :cond_1
    iget-object v5, v0, Lcom/deepe/c/b/d/b;->i:Ljava/util/ArrayList;

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/b/d/b$b;

    goto :goto_1

    :cond_2
    :goto_2
    iget v11, v5, Lcom/deepe/c/b/d/b$b;->b:I

    if-ne v9, v11, :cond_3

    iget v7, v5, Lcom/deepe/c/b/d/b$b;->e:F

    iget v11, v5, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v7, v11

    mul-float/2addr v7, v4

    iget v11, v5, Lcom/deepe/c/b/d/b$b;->e:F

    iget v12, v5, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v11, v12

    add-float/2addr v11, v3

    goto :goto_3

    :cond_3
    iget-object v11, v0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    invoke-virtual {v11, v9}, Lcom/deepe/c/b/d/a;->h(I)F

    move-result v11

    add-float v12, v7, v11

    mul-float/2addr v12, v4

    add-float/2addr v11, v3

    add-float/2addr v7, v11

    move v11, v7

    move v7, v12

    :goto_3
    iget v12, v0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v12, v12

    add-float/2addr v12, v7

    int-to-float v13, v1

    cmpl-float v12, v12, v13

    if-lez v12, :cond_4

    iget-object v12, v0, Lcom/deepe/c/b/d/b;->s:Landroid/graphics/drawable/Drawable;

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v13

    iget v14, v0, Lcom/deepe/c/b/d/b;->t:I

    iget v15, v0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v15, v15

    add-float/2addr v15, v7

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    move/from16 v16, v3

    iget v3, v0, Lcom/deepe/c/b/d/b;->u:I

    invoke-virtual {v12, v13, v14, v15, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v3, v0, Lcom/deepe/c/b/d/b;->s:Landroid/graphics/drawable/Drawable;

    move-object/from16 v12, p1

    invoke-virtual {v3, v12}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_4

    :cond_4
    move-object/from16 v12, p1

    move/from16 v16, v3

    :goto_4
    add-int v3, v1, v2

    int-to-float v3, v3

    cmpl-float v3, v7, v3

    if-lez v3, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v9, v9, 0x1

    move v7, v11

    move/from16 v3, v16

    goto :goto_0

    :cond_6
    :goto_5
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 15

    move-object v6, p0

    move-object/from16 v7, p1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v8, 0x0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_11

    const/4 v9, 0x1

    if-ne v0, v9, :cond_0

    goto/16 :goto_4

    :cond_0
    if-eqz v0, :cond_2

    iget-boolean v1, v6, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz v1, :cond_1

    return v9

    :cond_1
    iget-boolean v1, v6, Lcom/deepe/c/b/d/b;->C:Z

    if-eqz v1, :cond_2

    return v8

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_3

    goto/16 :goto_3

    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/deepe/c/b/d/b;->a(Landroid/view/MotionEvent;)V

    goto/16 :goto_3

    :cond_4
    iget v0, v6, Lcom/deepe/c/b/d/b;->L:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_5

    goto/16 :goto_3

    :cond_5
    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v10

    iget v1, v6, Lcom/deepe/c/b/d/b;->H:F

    sub-float v1, v10, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v11

    invoke-virtual {v7, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    iget v0, v6, Lcom/deepe/c/b/d/b;->K:F

    sub-float v0, v12, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v13

    cmpl-float v14, v1, v2

    if-eqz v14, :cond_6

    iget v0, v6, Lcom/deepe/c/b/d/b;->H:F

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/b/d/b;->a(FF)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v2, 0x0

    float-to-int v3, v1

    float-to-int v4, v10

    float-to-int v5, v12

    move-object v0, p0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/deepe/c/b/d/b;->a(Landroid/view/View;ZIII)Z

    move-result v0

    if-eqz v0, :cond_6

    iput v10, v6, Lcom/deepe/c/b/d/b;->H:F

    iput v12, v6, Lcom/deepe/c/b/d/b;->I:F

    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->C:Z

    return v8

    :cond_6
    iget v0, v6, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v0, v0

    cmpl-float v0, v11, v0

    if-lez v0, :cond_8

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float/2addr v11, v0

    cmpl-float v0, v11, v13

    if-lez v0, :cond_8

    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->B:Z

    invoke-direct {p0, v9}, Lcom/deepe/c/b/d/b;->c(Z)V

    invoke-virtual {p0, v9}, Lcom/deepe/c/b/d/b;->f(I)V

    iget v0, v6, Lcom/deepe/c/b/d/b;->J:F

    iget v1, v6, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v1, v1

    if-lez v14, :cond_7

    add-float/2addr v0, v1

    goto :goto_0

    :cond_7
    sub-float/2addr v0, v1

    :goto_0
    iput v0, v6, Lcom/deepe/c/b/d/b;->H:F

    iput v12, v6, Lcom/deepe/c/b/d/b;->I:F

    invoke-direct {p0, v9}, Lcom/deepe/c/b/d/b;->d(Z)V

    goto :goto_1

    :cond_8
    iget v0, v6, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v0, v0

    cmpl-float v0, v13, v0

    if-lez v0, :cond_9

    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->C:Z

    :cond_9
    :goto_1
    iget-boolean v0, v6, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz v0, :cond_f

    invoke-direct {p0, v10, v12}, Lcom/deepe/c/b/d/b;->c(FF)Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    goto/16 :goto_3

    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, v6, Lcom/deepe/c/b/d/b;->J:F

    iput v0, v6, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, v6, Lcom/deepe/c/b/d/b;->K:F

    iput v0, v6, Lcom/deepe/c/b/d/b;->I:F

    invoke-virtual {v7, v8}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, v6, Lcom/deepe/c/b/d/b;->L:I

    iput-boolean v8, v6, Lcom/deepe/c/b/d/b;->C:Z

    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->p:Z

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z

    iget v0, v6, Lcom/deepe/c/b/d/b;->aj:I

    if-ne v0, v1, :cond_b

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->getFinalX()I

    move-result v0

    iget-object v1, v6, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, v6, Lcom/deepe/c/b/d/b;->Q:I

    if-le v0, v1, :cond_b

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v8, v6, Lcom/deepe/c/b/d/b;->z:Z

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->B:Z

    invoke-direct {p0, v9}, Lcom/deepe/c/b/d/b;->c(Z)V

    invoke-virtual {p0, v9}, Lcom/deepe/c/b/d/b;->f(I)V

    goto :goto_3

    :cond_b
    iget-object v0, v6, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_d

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_c

    goto :goto_2

    :cond_c
    invoke-direct {p0, v8}, Lcom/deepe/c/b/d/b;->a(Z)V

    iput-boolean v8, v6, Lcom/deepe/c/b/d/b;->B:Z

    goto :goto_3

    :cond_d
    :goto_2
    iput-boolean v9, v6, Lcom/deepe/c/b/d/b;->B:Z

    invoke-virtual {p0, v9}, Lcom/deepe/c/b/d/b;->f(I)V

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_e

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    const/high16 v1, 0x3f800000    # 1.0f

    iget v3, v6, Lcom/deepe/c/b/d/b;->I:F

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    sub-float/2addr v1, v3

    invoke-static {v0, v2, v1}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    :cond_e
    iget-object v0, v6, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {v0}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_f

    iget-object v0, v6, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    iget v1, v6, Lcom/deepe/c/b/d/b;->I:F

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-static {v0, v2, v1}, Lcom/deepe/c/b/d;->b(Landroid/widget/EdgeEffect;FF)F

    :cond_f
    :goto_3
    iget-object v0, v6, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    if-nez v0, :cond_10

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, v6, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    :cond_10
    iget-object v0, v6, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v0, v7}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-boolean v0, v6, Lcom/deepe/c/b/d/b;->B:Z

    return v0

    :cond_11
    :goto_4
    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->d()Z

    return v8
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v1

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingBottom()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v8

    const/4 v9, 0x0

    move v10, v9

    move v11, v10

    :goto_0
    const/16 v12, 0x8

    if-lt v10, v1, :cond_4

    sub-int/2addr v2, v4

    sub-int v13, v2, v6

    move v2, v9

    :goto_1
    if-lt v2, v1, :cond_1

    iput v5, v0, Lcom/deepe/c/b/d/b;->t:I

    sub-int/2addr v3, v7

    iput v3, v0, Lcom/deepe/c/b/d/b;->u:I

    iput v11, v0, Lcom/deepe/c/b/d/b;->V:I

    iget-boolean v1, v0, Lcom/deepe/c/b/d/b;->T:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/deepe/c/b/d/b;->d:I

    invoke-direct {v0, v1, v9, v9, v9}, Lcom/deepe/c/b/d/b;->a(IZIZ)V

    :cond_0
    iput-boolean v9, v0, Lcom/deepe/c/b/d/b;->T:Z

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v8

    if-eq v8, v12, :cond_3

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/deepe/c/b/d/b$c;

    iget-boolean v10, v8, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v10, :cond_3

    invoke-virtual {v0, v6}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v10

    if-eqz v10, :cond_3

    int-to-float v14, v13

    iget v10, v10, Lcom/deepe/c/b/d/b$b;->e:F

    mul-float/2addr v10, v14

    float-to-int v10, v10

    add-int/2addr v10, v4

    iget-boolean v15, v8, Lcom/deepe/c/b/d/b$c;->d:Z

    if-eqz v15, :cond_2

    iput-boolean v9, v8, Lcom/deepe/c/b/d/b$c;->d:Z

    iget v8, v8, Lcom/deepe/c/b/d/b$c;->c:F

    mul-float/2addr v14, v8

    float-to-int v8, v14

    const/high16 v14, 0x40000000    # 2.0f

    invoke-static {v8, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    sub-int v15, v3, v5

    sub-int/2addr v15, v7

    invoke-static {v15, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v14

    invoke-virtual {v6, v8, v14}, Landroid/view/View;->measure(II)V

    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v10

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v14

    add-int/2addr v14, v5

    invoke-virtual {v6, v10, v5, v8, v14}, Landroid/view/View;->layout(IIII)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {v0, v10}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13}, Landroid/view/View;->getVisibility()I

    move-result v14

    if-eq v14, v12, :cond_b

    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Lcom/deepe/c/b/d/b$c;

    iget-boolean v14, v12, Lcom/deepe/c/b/d/b$c;->a:Z

    if-eqz v14, :cond_b

    iget v14, v12, Lcom/deepe/c/b/d/b$c;->b:I

    and-int/lit8 v14, v14, 0x7

    iget v12, v12, Lcom/deepe/c/b/d/b$c;->b:I

    and-int/lit8 v12, v12, 0x70

    const/4 v15, 0x1

    if-eq v14, v15, :cond_7

    const/4 v15, 0x3

    if-eq v14, v15, :cond_6

    const/4 v15, 0x5

    if-eq v14, v15, :cond_5

    move v14, v4

    goto :goto_3

    :cond_5
    sub-int v14, v2, v6

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    sub-int/2addr v14, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v6, v15

    goto :goto_2

    :cond_6
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    add-int/2addr v14, v4

    goto :goto_3

    :cond_7
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int v14, v2, v14

    div-int/lit8 v14, v14, 0x2

    invoke-static {v14, v4}, Ljava/lang/Math;->max(II)I

    move-result v14

    :goto_2
    move/from16 v17, v14

    move v14, v4

    move/from16 v4, v17

    :goto_3
    const/16 v15, 0x10

    if-eq v12, v15, :cond_a

    const/16 v15, 0x30

    if-eq v12, v15, :cond_9

    const/16 v15, 0x50

    if-eq v12, v15, :cond_8

    move v12, v5

    goto :goto_5

    :cond_8
    sub-int v12, v3, v7

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v7, v15

    goto :goto_4

    :cond_9
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v12, v5

    goto :goto_5

    :cond_a
    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    sub-int v12, v3, v12

    div-int/lit8 v12, v12, 0x2

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    :goto_4
    move/from16 v17, v12

    move v12, v5

    move/from16 v5, v17

    :goto_5
    add-int/2addr v4, v8

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v15

    add-int/2addr v15, v4

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredHeight()I

    move-result v16

    add-int v9, v5, v16

    invoke-virtual {v13, v4, v5, v15, v9}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v11, v11, 0x1

    move v5, v12

    move v4, v14

    :cond_b
    add-int/lit8 v10, v10, 0x1

    const/4 v9, 0x0

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    move/from16 v2, p1

    invoke-static {v1, v2}, Lcom/deepe/c/b/d/b;->getDefaultSize(II)I

    move-result v2

    move/from16 v3, p2

    invoke-static {v1, v3}, Lcom/deepe/c/b/d/b;->getDefaultSize(II)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/deepe/c/b/d/b;->setMeasuredDimension(II)V

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v3, v2, 0xa

    iget v4, v0, Lcom/deepe/c/b/d/b;->D:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iput v3, v0, Lcom/deepe/c/b/d/b;->E:I

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getMeasuredHeight()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingTop()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getPaddingBottom()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v4

    move v5, v1

    :goto_0
    const/16 v6, 0x8

    const/4 v7, 0x1

    const/high16 v8, 0x40000000    # 2.0f

    if-lt v5, v4, :cond_3

    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    iput-boolean v7, v0, Lcom/deepe/c/b/d/b;->x:Z

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->n()V

    iput-boolean v1, v0, Lcom/deepe/c/b/d/b;->x:Z

    invoke-virtual/range {p0 .. p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v10

    :goto_1
    if-lt v1, v10, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, v1}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eq v4, v6, :cond_2

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/deepe/c/b/d/b$c;

    if-eqz v4, :cond_1

    iget-boolean v5, v4, Lcom/deepe/c/b/d/b$c;->a:Z

    if-nez v5, :cond_2

    :cond_1
    int-to-float v5, v2

    iget v4, v4, Lcom/deepe/c/b/d/b$c;->c:F

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {v3, v4, v9}, Landroid/view/View;->measure(II)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v0, v5}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/View;->getVisibility()I

    move-result v10

    if-eq v10, v6, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/deepe/c/b/d/b$c;

    if-eqz v6, :cond_d

    iget-boolean v10, v6, Lcom/deepe/c/b/d/b$c;->a:Z

    if-eqz v10, :cond_d

    iget v10, v6, Lcom/deepe/c/b/d/b$c;->b:I

    and-int/lit8 v10, v10, 0x7

    iget v11, v6, Lcom/deepe/c/b/d/b$c;->b:I

    and-int/lit8 v11, v11, 0x70

    const/16 v12, 0x30

    if-eq v11, v12, :cond_4

    const/16 v12, 0x50

    if-eq v11, v12, :cond_4

    move v11, v1

    goto :goto_2

    :cond_4
    move v11, v7

    :goto_2
    const/4 v12, 0x3

    if-eq v10, v12, :cond_5

    const/4 v12, 0x5

    if-eq v10, v12, :cond_5

    move v7, v1

    :cond_5
    const/high16 v10, -0x80000000

    if-eqz v11, :cond_6

    move v12, v10

    move v10, v8

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    move v12, v8

    goto :goto_3

    :cond_7
    move v12, v10

    :goto_3
    iget v13, v6, Lcom/deepe/c/b/d/b$c;->width:I

    const/4 v14, -0x1

    const/4 v15, -0x2

    if-eq v13, v15, :cond_9

    iget v10, v6, Lcom/deepe/c/b/d/b$c;->width:I

    if-eq v10, v14, :cond_8

    iget v10, v6, Lcom/deepe/c/b/d/b$c;->width:I

    goto :goto_4

    :cond_8
    move v10, v2

    :goto_4
    move v13, v8

    goto :goto_5

    :cond_9
    move v13, v10

    move v10, v2

    :goto_5
    iget v1, v6, Lcom/deepe/c/b/d/b$c;->height:I

    if-eq v1, v15, :cond_b

    iget v1, v6, Lcom/deepe/c/b/d/b$c;->height:I

    if-eq v1, v14, :cond_a

    iget v1, v6, Lcom/deepe/c/b/d/b$c;->height:I

    goto :goto_6

    :cond_a
    move v1, v3

    goto :goto_6

    :cond_b
    move v1, v3

    move v8, v12

    :goto_6
    invoke-static {v10, v13}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    invoke-virtual {v9, v6, v1}, Landroid/view/View;->measure(II)V

    if-eqz v11, :cond_c

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    sub-int/2addr v3, v1

    goto :goto_7

    :cond_c
    if-eqz v7, :cond_d

    invoke-virtual {v9}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    sub-int/2addr v2, v1

    :cond_d
    :goto_7
    add-int/lit8 v5, v5, 0x1

    const/4 v1, 0x0

    goto/16 :goto_0
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 8

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getChildCount()I

    move-result v0

    and-int/lit8 v1, p1, 0x2

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    move v3, v0

    move v0, v2

    move v1, v4

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    move v1, v3

    :goto_0
    if-ne v0, v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p0, v0}, Lcom/deepe/c/b/d/b;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {p0, v5}, Lcom/deepe/c/b/d/b;->b(Landroid/view/View;)Lcom/deepe/c/b/d/b$b;

    move-result-object v6

    if-eqz v6, :cond_2

    iget v6, v6, Lcom/deepe/c/b/d/b$b;->b:I

    iget v7, p0, Lcom/deepe/c/b/d/b;->d:I

    if-ne v6, v7, :cond_2

    invoke-virtual {v5, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v4

    :cond_2
    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->onSizeChanged(IIII)V

    if-eq p1, p3, :cond_0

    iget p2, p0, Lcom/deepe/c/b/d/b;->r:I

    invoke-direct {p0, p1, p3, p2, p2}, Lcom/deepe/c/b/d/b;->a(IIII)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->R:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    if-nez v0, :cond_3

    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    :cond_3
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_d

    const/4 v3, 0x0

    if-eq v0, v1, :cond_b

    const/4 v4, 0x2

    if-eq v0, v4, :cond_7

    const/4 v3, 0x3

    if-eq v0, v3, :cond_6

    const/4 v3, 0x5

    if-eq v0, v3, :cond_5

    const/4 v3, 0x6

    if-eq v0, v3, :cond_4

    goto/16 :goto_4

    :cond_4
    invoke-direct {p0, p1}, Lcom/deepe/c/b/d/b;->a(Landroid/view/MotionEvent;)V

    iget v0, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iput p1, p0, Lcom/deepe/c/b/d/b;->H:F

    goto/16 :goto_4

    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    goto/16 :goto_3

    :cond_6
    iget-boolean p1, p0, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz p1, :cond_e

    iget p1, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-direct {p0, p1, v1, v2, v2}, Lcom/deepe/c/b/d/b;->a(IZIZ)V

    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->d()Z

    move-result v2

    goto/16 :goto_4

    :cond_7
    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->B:Z

    if-nez v0, :cond_a

    iget v0, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v4, -0x1

    if-ne v0, v4, :cond_8

    goto :goto_0

    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    iget v5, p0, Lcom/deepe/c/b/d/b;->H:F

    sub-float v5, v4, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    iget v6, p0, Lcom/deepe/c/b/d/b;->I:F

    sub-float v6, v0, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v7, v7

    cmpl-float v7, v5, v7

    if-lez v7, :cond_a

    cmpl-float v5, v5, v6

    if-lez v5, :cond_a

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->B:Z

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->c(Z)V

    iget v5, p0, Lcom/deepe/c/b/d/b;->J:F

    sub-float/2addr v4, v5

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    iget v3, p0, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v3, v3

    add-float/2addr v5, v3

    goto :goto_1

    :cond_9
    iget v3, p0, Lcom/deepe/c/b/d/b;->F:I

    int-to-float v3, v3

    sub-float/2addr v5, v3

    :goto_1
    iput v5, p0, Lcom/deepe/c/b/d/b;->H:F

    iput v0, p0, Lcom/deepe/c/b/d/b;->I:F

    invoke-virtual {p0, v1}, Lcom/deepe/c/b/d/b;->f(I)V

    invoke-direct {p0, v1}, Lcom/deepe/c/b/d/b;->d(Z)V

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_a
    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    invoke-direct {p0, v3, p1}, Lcom/deepe/c/b/d/b;->c(FF)Z

    move-result p1

    or-int/2addr v2, p1

    goto/16 :goto_4

    :cond_b
    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->B:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->M:Landroid/view/VelocityTracker;

    const/16 v2, 0x3e8

    iget v4, p0, Lcom/deepe/c/b/d/b;->O:I

    int-to-float v4, v4

    invoke-virtual {v0, v2, v4}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    iget v2, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {v0, v2}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v0

    float-to-int v0, v0

    iput-boolean v1, p0, Lcom/deepe/c/b/d/b;->z:Z

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->b()I

    move-result v2

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->getScrollX()I

    move-result v4

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->h()Lcom/deepe/c/b/d/b$b;

    move-result-object v5

    iget v6, p0, Lcom/deepe/c/b/d/b;->r:I

    int-to-float v6, v6

    int-to-float v2, v2

    div-float/2addr v6, v2

    iget v7, v5, Lcom/deepe/c/b/d/b$b;->b:I

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget v2, v5, Lcom/deepe/c/b/d/b$b;->e:F

    sub-float/2addr v4, v2

    iget v2, v5, Lcom/deepe/c/b/d/b$b;->d:F

    add-float/2addr v2, v6

    div-float/2addr v4, v2

    iget v2, p0, Lcom/deepe/c/b/d/b;->L:I

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result p1

    iget v2, p0, Lcom/deepe/c/b/d/b;->J:F

    sub-float/2addr p1, v2

    float-to-int p1, p1

    invoke-direct {p0, v7, v4, v0, p1}, Lcom/deepe/c/b/d/b;->a(IFII)I

    move-result p1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/deepe/c/b/d/b;->a(IZZI)V

    invoke-direct {p0}, Lcom/deepe/c/b/d/b;->d()Z

    move-result v2

    if-ne p1, v7, :cond_e

    if-eqz v2, :cond_e

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->f:Landroid/widget/EdgeEffect;

    neg-int v0, v0

    :goto_2
    invoke-virtual {p1, v0}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    invoke-static {p1}, Lcom/deepe/c/b/d;->a(Landroid/widget/EdgeEffect;)F

    move-result p1

    cmpl-float p1, p1, v3

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/deepe/c/b/d/b;->e:Landroid/widget/EdgeEffect;

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/deepe/c/b/d/b;->o:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    iput-boolean v2, p0, Lcom/deepe/c/b/d/b;->z:Z

    invoke-virtual {p0}, Lcom/deepe/c/b/d/b;->n()V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/deepe/c/b/d/b;->J:F

    iput v0, p0, Lcom/deepe/c/b/d/b;->H:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/deepe/c/b/d/b;->K:F

    iput v0, p0, Lcom/deepe/c/b/d/b;->I:F

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    :goto_3
    iput p1, p0, Lcom/deepe/c/b/d/b;->L:I

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    invoke-static {p0}, Lcom/deepe/c/b/m;->a(Landroid/view/View;)V

    :cond_f
    return v1

    :cond_10
    :goto_5
    return v2
.end method

.method p()Z
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->c:Lcom/deepe/c/b/d/a;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/deepe/c/b/d/b;->d:I

    invoke-virtual {v0}, Lcom/deepe/c/b/d/a;->g()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ge v1, v0, :cond_0

    iget v0, p0, Lcom/deepe/c/b/d/b;->d:I

    add-int/2addr v0, v2

    invoke-virtual {p0, v0, v2}, Lcom/deepe/c/b/d/b;->b(IZ)V

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/b/d/b;->x:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/deepe/c/b/d/b;->removeViewInLayout(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/b/d/b;->s:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
