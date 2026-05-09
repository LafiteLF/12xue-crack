.class Lcom/apicloud/a/i/a/t/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/t/a;

.field private b:Lcom/apicloud/a/d;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Lcom/apicloud/a/c/l;


# direct methods
.method constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/t/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/d;->b:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/t/d;->a:Lcom/apicloud/a/i/a/t/a;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/t/d;->a:Lcom/apicloud/a/i/a/t/a;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/t/d;->f:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method a()V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/d;->f:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/apicloud/a/i/a/t/d;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    const-string v2, "complete"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/t/d;->c:Z

    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/t/d;->d:Z

    return-void
.end method

.method c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/t/d;->e:Z

    return-void
.end method

.method d(Z)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/t/d;->f:Lcom/apicloud/a/c/l;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/apicloud/a/i/a/t/d;->c:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "success"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    iget-boolean v0, p0, Lcom/apicloud/a/i/a/t/d;->d:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/t/d;->f:Lcom/apicloud/a/c/l;

    const-string v0, "fail"

    invoke-virtual {p1, v0, v2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_2
    return-void
.end method
