.class public Lcom/apicloud/a/i/c/q;
.super Lcom/apicloud/a/i/c/m;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/c/q$a;
    }
.end annotation


# instance fields
.field final a:Landroid/view/View;

.field final b:[I

.field final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field final d:Landroid/view/View;

.field private final e:Landroid/view/GestureDetector;

.field private final f:Lcom/apicloud/a/i/c/d;

.field private final g:Lcom/apicloud/a/c/l;

.field private final h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroid/graphics/Rect;

.field private final j:Lcom/apicloud/a/d/h;

.field private final k:Lcom/apicloud/a/h/b;

.field private l:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d/h;Landroid/view/View;)V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/i/c/m;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->f:Lcom/apicloud/a/i/c/d;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->h:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->c:Ljava/util/List;

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->i:Landroid/graphics/Rect;

    iput-object p2, p0, Lcom/apicloud/a/i/c/q;->d:Landroid/view/View;

    iput-object p1, p0, Lcom/apicloud/a/i/c/q;->j:Lcom/apicloud/a/d/h;

    invoke-interface {p1}, Lcom/apicloud/a/d/h;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->g:Lcom/apicloud/a/c/l;

    invoke-interface {p1}, Lcom/apicloud/a/d/h;->o()Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->a:Landroid/view/View;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->b:[I

    new-instance v0, Landroid/view/GestureDetector;

    invoke-interface {p1}, Lcom/apicloud/a/d/h;->n()Landroid/content/Context;

    move-result-object p1

    new-instance v1, Lcom/apicloud/a/i/c/q$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/apicloud/a/i/c/q$a;-><init>(Lcom/apicloud/a/i/c/q;Lcom/apicloud/a/i/c/q$a;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/apicloud/a/i/c/q;->e:Landroid/view/GestureDetector;

    invoke-static {p2}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/c/q;->k:Lcom/apicloud/a/h/b;

    return-void
.end method

.method static a(F)D
    .locals 3

    invoke-static {p0}, Lcom/apicloud/a/g/h;->b(F)F

    move-result p0

    new-instance v0, Ljava/math/BigDecimal;

    float-to-double v1, p0

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p0, 0x2

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/c/q;->l:Z

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->g:Lcom/apicloud/a/c/l;

    const-string v1, "longpress"

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->d:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->performHapticFeedback(I)Z

    invoke-direct {p0, v1, p1}, Lcom/apicloud/a/i/c/q;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->i:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    add-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    add-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/a/i/c/q;->i:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "touchend"

    goto :goto_0

    :cond_0
    const-string p1, "touchcancel"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/c/q;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/c/q;Landroid/view/MotionEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/c/q;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private a(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->g:Lcom/apicloud/a/c/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->f:Lcom/apicloud/a/i/c/d;

    iget-object v1, p0, Lcom/apicloud/a/i/c/q;->k:Lcom/apicloud/a/h/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/i/c/q;->a(F)D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/i/c/q;->a(F)D

    move-result-wide v2

    iget-object p2, p0, Lcom/apicloud/a/i/c/q;->f:Lcom/apicloud/a/i/c/d;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/c/q;->f:Lcom/apicloud/a/i/c/d;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "y"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/c/q;->g:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->f:Lcom/apicloud/a/i/c/d;

    invoke-virtual {p2, p1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/c/q;->l:Z

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/c/q;->e:Landroid/view/GestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_0
    const-string p1, "touchmove"

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/c/q;->a(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/apicloud/a/i/c/q;->b()V

    const-string p1, "touchstart"

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/c/q;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    :goto_1
    iget-boolean p1, p0, Lcom/apicloud/a/i/c/q;->l:Z

    return p1
.end method
