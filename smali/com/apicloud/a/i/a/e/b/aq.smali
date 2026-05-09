.class abstract Lcom/apicloud/a/i/a/e/b/aq;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/aq;->a:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x3fs
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/aq;->a:[C

    invoke-direct {p0, p1, p2, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/aq;->a:[C

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/apicloud/a/i/a/e/b/x;F)V
.end method

.method public final a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/aq;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/aq;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/b/aq;->a(Lcom/apicloud/a/i/a/e/b/x;F)V

    return-void
.end method
