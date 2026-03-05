.class Lcom/apicloud/a/i/a/e/b/ay;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/ay;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x5bs
        0x49s
        0x49s
        0x5ds
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/ay;->a:[C

    const-string v1, "setLineDash"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 0

    const/4 p1, 0x2

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/a/i/a/e/b/ay;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 p1, 0x1

    invoke-interface {p2, p1}, Lcom/apicloud/a/i/a/e/a/d;->b(I)Lcom/apicloud/a/i/a/e/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/a/d;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    :cond_0
    return-void
.end method
