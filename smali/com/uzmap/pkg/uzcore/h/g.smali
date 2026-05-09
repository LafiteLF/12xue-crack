.class public Lcom/uzmap/pkg/uzcore/h/g;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static b:I

.field static c:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzcore/h/g;->a:I

    const/4 v0, -0x1

    sput v0, Lcom/uzmap/pkg/uzcore/h/g;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/uzmap/pkg/uzcore/h/g;->c:J

    return-void
.end method

.method public static a(Landroid/view/View;)Z
    .locals 5

    sget v0, Lcom/uzmap/pkg/uzcore/h/g;->b:I

    sget-wide v1, Lcom/uzmap/pkg/uzcore/h/g;->c:J

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sput p0, Lcom/uzmap/pkg/uzcore/h/g;->b:I

    sput-wide v3, Lcom/uzmap/pkg/uzcore/h/g;->c:J

    if-ne v0, p0, :cond_0

    sub-long/2addr v3, v1

    sget p0, Lcom/uzmap/pkg/uzcore/h/g;->a:I

    int-to-long v0, p0

    cmp-long p0, v3, v0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Landroid/view/ViewGroup;)Z
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Boolean;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v0, v1

    new-instance v2, Lcom/uzmap/pkg/uzcore/h/g$1;

    invoke-direct {v2, v0}, Lcom/uzmap/pkg/uzcore/h/g$1;-><init>([Ljava/lang/Boolean;)V

    invoke-static {p0, v2}, Lcom/uzmap/pkg/uzcore/h/v;->a(Landroid/view/View;Lcom/uzmap/pkg/uzcore/h/v$a;)Z

    aget-object p0, v0, v1

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method static synthetic b(Landroid/view/View;)Z
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/g;->c(Landroid/view/View;)Z

    move-result p0

    return p0
.end method

.method private static c(Landroid/view/View;)Z
    .locals 1

    instance-of v0, p0, Lcom/deepe/c/h/b;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/deepe/c/h/b;

    invoke-interface {p0}, Lcom/deepe/c/h/b;->i()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
