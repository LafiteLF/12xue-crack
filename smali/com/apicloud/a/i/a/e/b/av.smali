.class final Lcom/apicloud/a/i/a/e/b/av;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/av;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/av;->a:[C

    const-string v1, "rotate"

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/av;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/av;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p2

    float-to-double v0, p2

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/e/b/ad;->b(D)F

    move-result p2

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/e/b/x;->c(F)V

    return-void
.end method
