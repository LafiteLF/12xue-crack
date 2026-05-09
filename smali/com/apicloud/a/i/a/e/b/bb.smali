.class final Lcom/apicloud/a/i/a/e/b/bb;
.super Lcom/apicloud/a/i/a/e/b/ao;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/bb;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bb;->a:[C

    const-string v1, "shadowColor"

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/a/e/b/ao;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;I)V
    .locals 0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->l()Lcom/apicloud/a/i/a/e/b/ab;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/e/b/ab;->a(I)V

    return-void
.end method
