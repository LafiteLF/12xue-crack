.class public Lcom/deepe/b/d/f;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/deepe/b/d/f;


# instance fields
.field public b:I

.field public c:I

.field public d:Z

.field public e:Z

.field public f:Z

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Lcom/deepe/b/b/b;

.field private m:Z

.field private n:Lcom/deepe/b/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/deepe/b/d/f;

    invoke-direct {v0}, Lcom/deepe/b/d/f;-><init>()V

    sput-object v0, Lcom/deepe/b/d/f;->a:Lcom/deepe/b/d/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepe/b/d/f;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/b/d/f;->b:I

    iput v0, p0, Lcom/deepe/b/d/f;->c:I

    iput-boolean v0, p0, Lcom/deepe/b/d/f;->m:Z

    iput p1, p0, Lcom/deepe/b/d/f;->b:I

    new-instance p1, Lcom/deepe/b/b/d;

    invoke-direct {p1}, Lcom/deepe/b/b/d;-><init>()V

    iput-object p1, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;

    return-void
.end method


# virtual methods
.method public declared-synchronized a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/b/b/c;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;

    if-nez v0, :cond_1

    new-instance v0, Lcom/deepe/b/b/d;

    invoke-direct {v0}, Lcom/deepe/b/b/d;-><init>()V

    iput-object v0, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;

    :cond_1
    iget-object v0, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;

    invoke-virtual {v0, p1}, Lcom/deepe/b/b/d;->b(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/b/d/f;->m:Z

    return-void
.end method

.method public a()Z
    .locals 2

    iget v0, p0, Lcom/deepe/b/d/f;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b()Z
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/b/d/f;->c()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()I
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/b/d/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/deepe/b/d/f;->d:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/deepe/b/d/f;->e:Z

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-boolean v0, p0, Lcom/deepe/b/d/f;->d:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/deepe/b/d/f;->e:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/deepe/b/d/f;->d:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/deepe/b/d/f;->e:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    return v0

    :cond_3
    iget-boolean v0, p0, Lcom/deepe/b/d/f;->d:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/deepe/b/d/f;->e:Z

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    return v0

    :cond_4
    return v1
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/b/d/f;->m:Z

    return v0
.end method

.method public declared-synchronized e()Lcom/deepe/b/b/d;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/b/d/f;->n:Lcom/deepe/b/b/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/b/b/d;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
