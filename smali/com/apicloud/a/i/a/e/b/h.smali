.class final Lcom/apicloud/a/i/a/e/b/h;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/h;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/h;->a:[C

    const-string v1, "clearRect"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 4

    sget-object v0, Lcom/apicloud/a/i/a/e/b/h;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/h;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    const/4 v1, 0x2

    invoke-interface {p2, v1}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p2, v2}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v2

    const/4 v3, 0x4

    invoke-interface {p2, v3}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p2

    invoke-interface {p1, v0, v1, v2, p2}, Lcom/apicloud/a/i/a/e/b/x;->b(FFFF)V

    return-void
.end method
