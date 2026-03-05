.class Lcom/deepe/c/c/t;
.super Lcom/deepe/c/j/e/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/j/e/d<",
        "Lcom/deepe/c/c/m;",
        ">;"
    }
.end annotation


# static fields
.field private static final c:Ljava/lang/Object;


# instance fields
.field private final a:Lcom/deepe/c/j/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/j/o$b<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/deepe/c/c/s;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/deepe/c/c/t;->c:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/deepe/c/j/o$b;Lcom/deepe/c/c/s;Lcom/deepe/c/j/o$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/deepe/c/j/o$b<",
            "Lcom/deepe/c/c/m;",
            ">;",
            "Lcom/deepe/c/c/s;",
            "Lcom/deepe/c/j/o$a;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/deepe/c/j/e/d;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    iput-object p2, p0, Lcom/deepe/c/c/t;->a:Lcom/deepe/c/j/o$b;

    iput-object p3, p0, Lcom/deepe/c/c/t;->b:Lcom/deepe/c/c/s;

    new-instance p1, Lcom/deepe/c/j/e/i;

    const/16 p2, 0x2710

    const/4 p3, 0x2

    const/high16 p4, 0x40000000    # 2.0f

    invoke-direct {p1, p2, p3, p4}, Lcom/deepe/c/j/e/i;-><init>(IIF)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/t;->setRetryPolicy(Lcom/deepe/c/j/e/i;)V

    return-void
.end method

.method private a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    invoke-static {v0}, Lcom/deepe/c/j/d/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/deepe/c/j/k;->b:[B

    invoke-virtual {p0}, Lcom/deepe/c/c/t;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/deepe/c/c/w;->a([BLjava/lang/String;)Lcom/deepe/c/c/v;

    move-result-object v2

    invoke-virtual {v2}, Lcom/deepe/c/c/v;->c()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-static {v0}, Lcom/deepe/c/c/w;->c(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Lcom/deepe/c/c/v;->d()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-static {v0}, Lcom/deepe/c/c/w;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/deepe/c/c/t;->b:Lcom/deepe/c/c/s;

    invoke-virtual {v0}, Lcom/deepe/c/c/s;->d()Lcom/deepe/c/c/s;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/deepe/c/c/af;->a([BLcom/deepe/c/c/v;Lcom/deepe/c/c/s;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/deepe/c/c/m;->a(Landroid/graphics/Bitmap;)Lcom/deepe/c/c/m;

    move-result-object v0

    invoke-static {p1}, Lcom/deepe/c/j/d/e;->a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance v0, Lcom/deepe/c/j/a/e;

    invoke-direct {v0, p1}, Lcom/deepe/c/j/a/e;-><init>(Lcom/deepe/c/j/k;)V

    invoke-static {v0}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/deepe/c/c/t;->c(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcom/deepe/c/c/t;->b(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1
.end method

.method private b(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/deepe/c/j/k;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/j/k;->b:[B

    invoke-static {v0}, Lcom/deepe/c/c/m;->a([B)Lcom/deepe/c/c/m;

    move-result-object v0

    invoke-static {p1}, Lcom/deepe/c/j/d/e;->a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/deepe/c/j/a/e;

    invoke-direct {v0, p1}, Lcom/deepe/c/j/a/e;-><init>(Lcom/deepe/c/j/k;)V

    invoke-static {v0}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1
.end method

.method private c(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation

    iget-object v0, p1, Lcom/deepe/c/j/k;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/deepe/c/j/k;->b:[B

    invoke-static {v0}, Lcom/deepe/c/c/m;->b([B)Lcom/deepe/c/c/m;

    move-result-object v0

    invoke-static {p1}, Lcom/deepe/c/j/d/e;->a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/a$a;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Lcom/deepe/c/j/a/e;

    invoke-direct {v0, p1}, Lcom/deepe/c/j/a/e;-><init>(Lcom/deepe/c/j/k;)V

    invoke-static {v0}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a(Lcom/deepe/c/c/m;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/t;->a:Lcom/deepe/c/j/o$b;

    invoke-interface {v0, p1}, Lcom/deepe/c/j/o$b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public deliverError(Lcom/deepe/c/j/r;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/deepe/c/j/e/d;->deliverError(Lcom/deepe/c/j/r;)V

    const-string v0, "deliverError"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method protected synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/deepe/c/c/m;

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/t;->a(Lcom/deepe/c/c/m;)V

    return-void
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/t;->b:Lcom/deepe/c/c/s;

    invoke-static {v0}, Lcom/deepe/c/c/b;->a(Lcom/deepe/c/c/s;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/deepe/c/j/l$a;
    .locals 1

    sget-object v0, Lcom/deepe/c/j/l$a;->b:Lcom/deepe/c/j/l$a;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/c/m;",
            ">;"
        }
    .end annotation

    const-string v0, "parseNetworkResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    sget-object v0, Lcom/deepe/c/c/t;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/deepe/c/c/t;->a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Caught OOM for %d byte image, url=%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object p1, p1, Lcom/deepe/c/j/k;->b:[B

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    const/4 p1, 0x1

    invoke-virtual {p0}, Lcom/deepe/c/c/t;->getUrl()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, p1

    invoke-static {v2, v3}, Lcom/deepe/c/j/s;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lcom/deepe/c/j/a/e;

    invoke-direct {p1, v1}, Lcom/deepe/c/j/a/e;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/deepe/c/j/o;->a(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/o;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
