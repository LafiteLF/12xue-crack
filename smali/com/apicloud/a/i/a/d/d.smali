.class Lcom/apicloud/a/i/a/d/d;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/d/b;

.field private b:Lcom/apicloud/a/d;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Lcom/apicloud/a/c/l;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/d/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/d;->b:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/d/d;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/d/d;->a:Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/d;->g:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/d;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/d;->g:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "stop"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final a(Lcom/apicloud/a/i/a/d/f;)V
    .locals 2

    iget-boolean p1, p0, Lcom/apicloud/a/i/a/d/d;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/d;->g:Lcom/apicloud/a/c/l;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    const-string v1, "error"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/d;->c:Z

    return-void
.end method

.method public final b()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/d/d;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/d;->g:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "initdone"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/d;->d:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/d;->e:Z

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/d/d;->f:Z

    return-void
.end method
