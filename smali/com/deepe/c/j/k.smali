.class public Lcom/deepe/c/j/k;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:[B

.field public final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Z

.field public final e:J


# direct methods
.method public constructor <init>(I[BLjava/util/Map;ZJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;ZJ)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/j/k;->a:I

    iput-object p2, p0, Lcom/deepe/c/j/k;->b:[B

    iput-object p3, p0, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-boolean p4, p0, Lcom/deepe/c/j/k;->d:Z

    iput-wide p5, p0, Lcom/deepe/c/j/k;->e:J

    return-void
.end method

.method public constructor <init>([BLjava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/16 v1, 0xc8

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    return-void
.end method

.method private a([BLjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const-string v1, "UTF-8"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/16 p2, -0x11

    aget-byte v1, p1, v0

    if-ne p2, v1, :cond_1

    const/16 p2, -0x45

    const/4 v1, 0x1

    aget-byte v2, p1, v1

    if-ne p2, v2, :cond_1

    const/16 p2, -0x41

    const/4 v2, 0x2

    aget-byte p1, p1, v2

    if-ne p2, p1, :cond_1

    return v1

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/j/k;->b:[B

    if-nez v0, :cond_0

    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/deepe/c/j/d/e;->a(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/j/k;->b:[B

    invoke-direct {p0, v0, p1}, Lcom/deepe/c/j/k;->a([BLjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/k;->b:[B

    invoke-direct {v0, v1, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/k;->b:[B

    iget-object v2, p0, Lcom/deepe/c/j/k;->b:[B

    array-length v2, v2

    const/4 v3, 0x3

    sub-int/2addr v2, v3

    invoke-direct {v0, v1, v3, v2, p1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/String;

    iget-object p1, p0, Lcom/deepe/c/j/k;->b:[B

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    :goto_0
    return-object v0
.end method
