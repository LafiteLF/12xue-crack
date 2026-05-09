.class abstract Lcom/apicloud/a/i/a/e/b/ao;
.super Lcom/apicloud/a/i/a/e/b/b;


# direct methods
.method public constructor <init>(Ljava/lang/String;[C)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Ljava/lang/String;[C)V

    return-void
.end method


# virtual methods
.method public abstract a(Lcom/apicloud/a/i/a/e/b/x;I)V
.end method

.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 1

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/b;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/b/ao;->a(Lcom/apicloud/a/i/a/e/b/x;I)V

    return-void
.end method
