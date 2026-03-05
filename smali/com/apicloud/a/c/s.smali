.class public Lcom/apicloud/a/c/s;
.super Ljava/lang/Object;


# instance fields
.field private a:Lcom/apicloud/a/d;

.field private final b:Lcom/apicloud/a/c/g;

.field private final c:Lcom/apicloud/a/c/d;

.field private final d:Lcom/apicloud/a/e/c;

.field private e:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/c/g;Lcom/apicloud/a/c/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/s;->a:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/c/s;->b:Lcom/apicloud/a/c/g;

    iput-object p3, p0, Lcom/apicloud/a/c/s;->c:Lcom/apicloud/a/c/d;

    new-instance p2, Lcom/apicloud/a/e/c;

    invoke-direct {p2, p1}, Lcom/apicloud/a/e/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object p2, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/s;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->b:Lcom/apicloud/a/c/g;

    sget-object v1, Lcom/apicloud/a/c/g$b;->e:Lcom/apicloud/a/c/g$b;

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/apicloud/a/c/s;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/s;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, " on "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " (Reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/c/s;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->b:Lcom/apicloud/a/c/g;

    sget-object v1, Lcom/apicloud/a/c/g$b;->c:Lcom/apicloud/a/c/g$b;

    invoke-direct {p0, p4, p2, p3, p1}, Lcom/apicloud/a/c/s;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/c/g;->a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;)V

    return-void
.end method

.method private b(Ljava/lang/String;Ljava/lang/StringBuilder;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " \""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2, v0}, Lcom/apicloud/a/c/s;->b(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, p4, v0}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/StringBuilder;)V

    invoke-direct {p0, p3, v0}, Lcom/apicloud/a/c/s;->a(Ljava/lang/Throwable;Ljava/lang/StringBuilder;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c/f;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p3

    const-string p4, "Could not call method"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p3

    const-string v0, "Could not get property"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/s;->c:Lcom/apicloud/a/c/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "doc"

    const-string v1, "allType"

    const-string v2, "contentLoaded failed"

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/apicloud/a/c/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/apicloud/a/c/s;->e:Z

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const/4 p3, 0x0

    const-string v0, "Could not set arguments"

    invoke-direct {p0, p1, p3, p2, v0}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p2

    const-string v0, "Could not destroy id"

    invoke-direct {p0, p1, p1, p2, v0}, Lcom/apicloud/a/c/s;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    const-string v0, "Could not create object"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/c/s;->d:Lcom/apicloud/a/e/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apicloud/a/e/c;->a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p3

    const-string p4, "Could not listen to event"

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/c/s;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/c/s;->e:Z

    return v0
.end method
