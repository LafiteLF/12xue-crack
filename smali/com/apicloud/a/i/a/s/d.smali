.class Lcom/apicloud/a/i/a/s/d;
.super Ljava/lang/Object;


# static fields
.field static final c:[Ljava/lang/String;


# instance fields
.field a:Z

.field b:Z

.field private final d:Lcom/apicloud/a/i/c/d;

.field private e:Lcom/apicloud/a/d;

.field private f:Z

.field private g:Z

.field private h:Lcom/apicloud/a/c/l;

.field private i:Lcom/apicloud/a/i/c/d;

.field private final j:Lcom/apicloud/a/h/b;

.field private k:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "touch"

    const-string v1, "touch-out-of-bounds"

    const-string v2, "out-of-bounds"

    const-string v3, "friction"

    const-string v4, ""

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/s/d;->c:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/s/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/d;->d:Lcom/apicloud/a/i/c/d;

    const-string v0, "touchmove"

    iput-object v0, p0, Lcom/apicloud/a/i/a/s/d;->k:Ljava/lang/String;

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->e:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->h:Lcom/apicloud/a/c/l;

    invoke-static {p2}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->j:Lcom/apicloud/a/h/b;

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

.method private a(Ljava/lang/String;Landroid/view/MotionEvent;)V
    .locals 5

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/d;->h:Lcom/apicloud/a/c/l;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/l;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    iget-object v1, p0, Lcom/apicloud/a/i/a/s/d;->j:Lcom/apicloud/a/h/b;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/d;->a(F)D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-static {v2}, Lcom/apicloud/a/i/a/s/d;->a(F)D

    move-result-wide v2

    iget-object v4, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "clientX"

    invoke-virtual {v4, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    const-string v2, "clientY"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/i/a/s/d;->a(F)D

    move-result-wide v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/i/a/s/d;->a(F)D

    move-result-wide v2

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "pageX"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    const-string v1, "pageY"

    invoke-virtual {p2, v1, v0}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->h:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    invoke-virtual {p2, p1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const-string p1, "htouchmove"

    goto :goto_0

    :cond_0
    const-string p1, "vtouchmove"

    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->k:Ljava/lang/String;

    return-void
.end method

.method public final a(IIIII)V
    .locals 0

    iget-boolean p4, p0, Lcom/apicloud/a/i/a/s/d;->f:Z

    if-eqz p4, :cond_0

    iget-object p4, p0, Lcom/apicloud/a/i/a/s/d;->h:Lcom/apicloud/a/c/l;

    if-eqz p4, :cond_0

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p2

    invoke-static {p3}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p3

    iget-object p4, p0, Lcom/apicloud/a/i/a/s/d;->d:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p5, "x"

    invoke-virtual {p4, p5, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->d:Lcom/apicloud/a/i/c/d;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "y"

    invoke-virtual {p2, p4, p3}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->d:Lcom/apicloud/a/i/c/d;

    sget-object p3, Lcom/apicloud/a/i/a/s/d;->c:[Ljava/lang/String;

    aget-object p1, p3, p1

    const-string p3, "source"

    invoke-virtual {p2, p3, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/d;->h:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/s/d;->d:Lcom/apicloud/a/i/c/d;

    const-string p3, "change"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/d;->f:Z

    return-void
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/s/d;->k:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/apicloud/a/i/a/s/d;->a(Ljava/lang/String;Landroid/view/MotionEvent;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/d;->g:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/d;->a:Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/s/d;->b:Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    if-nez p1, :cond_0

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/s/d;->i:Lcom/apicloud/a/i/c/d;

    :cond_0
    return-void
.end method
