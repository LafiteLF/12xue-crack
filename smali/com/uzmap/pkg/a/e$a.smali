.class Lcom/uzmap/pkg/a/e$a;
.super Lcom/apicloud/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/a/e;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-direct {p0}, Lcom/apicloud/b/a/a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/a/e;Lcom/uzmap/pkg/a/e$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/a/e$a;-><init>(Lcom/uzmap/pkg/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/b/a/b;)Lcom/apicloud/b/a/d;
    .locals 2

    new-instance p1, Lcom/uzmap/pkg/a/c;

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v1}, Lcom/uzmap/pkg/a/e;->b(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/uzcore/d/i;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/a/c;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    return-object p1
.end method

.method public a(ILcom/apicloud/b/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lcom/apicloud/b/a/b;->c()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/a/f;->a(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/apicloud/b/a/b;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lcom/apicloud/b/a/b;->c()Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Lcom/apicloud/b/a/b;)Lcom/apicloud/b/a/e;
    .locals 2

    new-instance p1, Lcom/uzmap/pkg/a/d;

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-virtual {v0}, Lcom/uzmap/pkg/a/e;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v1}, Lcom/uzmap/pkg/a/e;->b(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/uzcore/d/i;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/a/d;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/d/i;)V

    return-object p1
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/a/f;->a(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/a/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/a/e$a;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->b(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/uzcore/d/i;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/d/i;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$a;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
