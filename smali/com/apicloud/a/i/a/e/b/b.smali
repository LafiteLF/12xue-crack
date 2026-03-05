.class abstract Lcom/apicloud/a/i/a/e/b/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/b/a;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private final b:Ljava/lang/String;

.field private final c:[C


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/b/b;->b:Ljava/lang/String;

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/b/b;->a:Lcom/apicloud/a/d;

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/b/b;->c:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method protected final a(Lcom/apicloud/a/i/a/e/a/d;I)V
    .locals 3

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/a/d;->b()I

    move-result v0

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/apicloud/a/i/a/e/b/b;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v1

    const/4 p2, 0x2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/a/d;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, p2

    const-string p1, "The graphics operation {0} has to be a {1} element tuple. Got a {2} element tuple."

    invoke-static {p1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public b()[C
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b/b;->c:[C

    return-object v0
.end method

.method public c()Lcom/apicloud/a/d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/b/b;->a:Lcom/apicloud/a/d;

    return-object v0
.end method
