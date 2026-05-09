.class final Lcom/apicloud/a/i/a/e/b/c;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x4

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/c;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x53s
        0x44s
        0x53s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/c;->a:[C

    const-string v1, "addColorStop"

    invoke-direct {p0, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 2

    const/4 v0, 0x4

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/c;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apicloud/a/i/a/e/b/x;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/e/b/z;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v0

    const/4 v1, 0x3

    invoke-interface {p2, v1}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/b;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    new-instance v1, Lcom/apicloud/a/i/a/e/b/z$a;

    invoke-direct {v1, v0, p2}, Lcom/apicloud/a/i/a/e/b/z$a;-><init>(FI)V

    invoke-interface {p1, v1}, Lcom/apicloud/a/i/a/e/b/z;->a(Lcom/apicloud/a/i/a/e/b/z$a;)V

    :cond_0
    return-void
.end method
