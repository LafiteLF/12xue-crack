.class public Lcom/apicloud/a/e/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private final b:Lcom/apicloud/a/e/f;

.field private final c:Lcom/apicloud/a/e/d;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/e/c;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->c()Lcom/apicloud/a/e/d;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/a/e/c;->c:Lcom/apicloud/a/e/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/e/c;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->r()Z

    move-result p1

    const-string p3, "create type not suport: "

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/e/c;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/apicloud/a/d/c;->b(Lcom/apicloud/a/c/b;)V

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/deepe/d/a;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object p2

    :cond_1
    invoke-static {p3}, Lcom/apicloud/a/c;->a(Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p3

    invoke-interface {v0, p1, p3}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v2, p1, v1, p2}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p3}, Lcom/apicloud/a/c;->b()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-interface {v0, p1, v1, p3}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V

    :cond_2
    return-object v1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c/f;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-static {p3}, Lcom/apicloud/a/c;->a(Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p3

    invoke-virtual {p0, p1, p5}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p5

    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p5, p1, p2, p3, p4}, Lcom/apicloud/a/e/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p3

    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/apicloud/a/e/b;->a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/apicloud/a/e/g;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    invoke-interface {p3, p1, p2}, Lcom/apicloud/a/e/b;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    return-object v0
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/e/c;->a:Lcom/apicloud/a/d;

    invoke-interface {p1}, Lcom/apicloud/a/d;->k()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/apicloud/a/c;->a(Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1, p3}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p3

    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p3, p1, v0, p2}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/apicloud/a/e/b;->b(Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1, p4}, Lcom/apicloud/a/e/c;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p4

    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->e(Ljava/lang/String;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz p3, :cond_0

    invoke-virtual {v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p2}, Lcom/apicloud/a/c/l;->b(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p4, p1, v0, p2, p3}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/e/b;
    .locals 3

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/e/c;->b:Lcom/apicloud/a/e/f;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/e/c;->c:Lcom/apicloud/a/e/d;

    invoke-virtual {v0, p2}, Lcom/apicloud/a/e/d;->a(Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not find operator with id \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\" or object type \""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
