.class Lcom/apicloud/a/i/a/e/b/k;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/k;->a:[C

    return-void

    :array_0
    .array-data 2
        0x3fs
        0x53s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    const-string v0, "createLinearGradient"

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/k;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/k;->a:[C

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 8

    sget-object v0, Lcom/apicloud/a/i/a/e/b/k;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/k;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/e/b/x;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/b/z;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 p1, 0x2

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    const/4 p1, 0x3

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v3

    const/4 p1, 0x5

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 p1, 0x6

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    const/4 v4, 0x0

    const/4 v7, 0x0

    invoke-interface/range {v1 .. v7}, Lcom/apicloud/a/i/a/e/b/z;->a(FFFFFF)V

    :cond_0
    return-void
.end method
