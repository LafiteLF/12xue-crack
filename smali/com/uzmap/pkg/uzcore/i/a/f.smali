.class Lcom/uzmap/pkg/uzcore/i/a/f;
.super Lcom/deepe/c/i/l;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/i/a/d$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/i/l<",
        "Ljava/lang/String;",
        "Lcom/uzmap/pkg/uzcore/i/a/b;",
        ">;",
        "Lcom/uzmap/pkg/uzcore/i/a/d$a;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/i/l;-><init>(I)V

    return-void
.end method

.method protected static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/i/x;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/i/q;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/uzmap/pkg/uzcore/i/a/b;

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/i/a/f;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a/b;)I

    move-result p1

    return p1
.end method

.method protected final a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/i/a/b;)I
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    invoke-virtual {p2}, Lcom/uzmap/pkg/uzcore/i/a/b;->c()I

    move-result p1

    return p1
.end method

.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/i/a/f;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized a(Ljava/lang/String;[B)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lcom/uzmap/pkg/uzcore/i/a/b;

    invoke-direct {v0, p2}, Lcom/uzmap/pkg/uzcore/i/a/b;-><init>([B)V

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/i/a/f;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/uzmap/pkg/uzcore/i/a/b;

    check-cast p4, Lcom/uzmap/pkg/uzcore/i/a/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzcore/i/a/f;->a(ZLjava/lang/String;Lcom/uzmap/pkg/uzcore/i/a/b;Lcom/uzmap/pkg/uzcore/i/a/b;)V

    return-void
.end method

.method protected final a(ZLjava/lang/String;Lcom/uzmap/pkg/uzcore/i/a/b;Lcom/uzmap/pkg/uzcore/i/a/b;)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized a(Ljava/lang/String;)[B
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/i/a/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/a/b;->a()[B

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->d(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/i/a/b;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/i/a/b;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/i/a/b;->b()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public c(Ljava/lang/String;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/i/a/f;->f(Ljava/lang/String;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/i/a/f;->a(Ljava/lang/String;[B)V

    :cond_0
    return-object v0
.end method

.method protected final d(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/i/a/b;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected final f(Ljava/lang/String;)[B
    .locals 0

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method
