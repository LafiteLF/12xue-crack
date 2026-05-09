.class public Lcom/deepe/c/j/e/a;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/deepe/c/j/e/b;

.field private b:Z

.field private c:Z

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/e/b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/j/e/a;->a:Lcom/deepe/c/j/e/b;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a;->c()V

    return-void
.end method

.method final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/e/a;->b:Z

    iget-boolean v0, p0, Lcom/deepe/c/j/e/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/a;->c()V

    :cond_0
    return-void
.end method

.method protected final c()V
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/c/j/e/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/a;->a:Lcom/deepe/c/j/e/b;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/j/e/a;->a:Lcom/deepe/c/j/e/b;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/e/a;->c:Z

    :goto_0
    return-void
.end method

.method d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/a;->e:Ljava/lang/String;

    return-object v0
.end method
