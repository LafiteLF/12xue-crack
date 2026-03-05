.class Lcom/apicloud/a/i/a/ai/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Z

.field private i:Lcom/apicloud/a/c/l;

.field private final j:Lcom/apicloud/a/i/c/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/c/l;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "play"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->g:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "buffered"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    const-string v1, "progress"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "currentTime"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "duration"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    const-string v0, "timeupdate"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(III)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->h:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "width"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "height"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string p3, "duration"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ai/a;->j:Lcom/apicloud/a/i/c/d;

    const-string p3, "loadedmetadata"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->a:Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "pause"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->b:Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "ended"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->c:Z

    return-void
.end method

.method public d()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->e:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "waiting"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->d:Z

    return-void
.end method

.method public e()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a;->i:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "error"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->e:Z

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->f:Z

    return-void
.end method

.method public g(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->g:Z

    return-void
.end method

.method public h(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a;->h:Z

    return-void
.end method
