.class abstract Lcom/apicloud/a/i/a/e/b/ap;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [C

    const/4 v1, 0x0

    const/16 v2, 0x3f

    aput-char v2, v0, v1

    sput-object v0, Lcom/apicloud/a/i/a/e/b/ap;->a:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/ap;->a:[C

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/apicloud/a/i/a/e/b/x;)V
.end method

.method public final a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/b/ap;->a(Lcom/apicloud/a/i/a/e/b/x;)V

    return-void
.end method
