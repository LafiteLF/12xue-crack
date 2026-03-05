.class public Lcom/apicloud/a/c/f;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/apicloud/a/c/j;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/c/f;->a:Lcom/apicloud/a/c/j;

    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/c/q;)V
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lcom/apicloud/a/c/f;->a([Ljava/lang/Object;)V

    return-void
.end method

.method final a(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/c/j;

    iput-object p1, p0, Lcom/apicloud/a/c/f;->a:Lcom/apicloud/a/c/j;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    new-instance v0, Lcom/apicloud/a/c/q;

    invoke-direct {v0}, Lcom/apicloud/a/c/q;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/c/q;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    new-array p1, p1, [Ljava/lang/Object;

    const/4 p2, 0x0

    aput-object v0, p1, p2

    invoke-virtual {p0, p1}, Lcom/apicloud/a/c/f;->a([Ljava/lang/Object;)V

    return-void
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/f;->a:Lcom/apicloud/a/c/j;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/j;->b([Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
