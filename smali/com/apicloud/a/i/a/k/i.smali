.class Lcom/apicloud/a/i/a/k/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/b/a/g;


# instance fields
.field final a:Lcom/apicloud/a/c/l;

.field final b:Ljava/lang/String;

.field c:Z


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/l;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/k/i;->a:Lcom/apicloud/a/c/l;

    iput-object p2, p0, Lcom/apicloud/a/i/a/k/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/k/i;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/k/i;->a:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "index"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "name"

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/k/i;->a:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/k/i;->b:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/k/i;->c:Z

    return-void
.end method
