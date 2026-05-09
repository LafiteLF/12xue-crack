.class Lcom/apicloud/a/i/a/ad/b$a;
.super Lcom/deepe/c/b/d/b$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ad/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ad/b;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/ad/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-direct {p0}, Lcom/deepe/c/b/d/b$h;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->b:I

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->d:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/ad/b;Lcom/apicloud/a/i/a/ad/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ad/b$a;-><init>(Lcom/apicloud/a/i/a/ad/b;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->b:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iput-boolean v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->d:Z

    :cond_0
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    iget v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->d:Z

    const-string v2, "source"

    if-eqz v1, :cond_1

    const-string v1, "touch"

    goto :goto_0

    :cond_1
    const-string v1, "autoplay"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object v1

    const-string v2, "animationfinish"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->d:Z

    :cond_3
    iput p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->b:I

    return-void
.end method

.method public a(IFI)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/b;->b(Lcom/apicloud/a/i/a/ad/b;)Lcom/apicloud/a/i/a/ad/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/a/ad/j;->a(IF)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ad/b;->c(Lcom/apicloud/a/i/a/ad/b;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-static {p2}, Lcom/apicloud/a/i/a/ad/b;->b(Lcom/apicloud/a/i/a/ad/b;)Lcom/apicloud/a/i/a/ad/j;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/ad/j;->a()Z

    move-result p2

    const/4 v0, 0x0

    const-string v1, "dy"

    const-string v2, "dx"

    if-eqz p2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, v2, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, v1, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object p2

    const-string p3, "transition"

    invoke-virtual {p2, p3, p1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public b(I)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->c(I)Lcom/apicloud/a/i/a/ad/d;

    move-result-object p1

    iget p1, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    iget v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->c:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/b;)I

    move-result v0

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    iget-object v0, v0, Lcom/apicloud/a/i/a/ad/b;->a:Lcom/apicloud/a/d;

    invoke-interface {v0}, Lcom/apicloud/a/d;->v()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->d:Z

    const-string v2, "source"

    if-eqz v1, :cond_0

    const-string v1, "touch"

    goto :goto_0

    :cond_0
    const-string v1, "autoplay"

    :goto_0
    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/ad/b;->e()Lcom/apicloud/a/c/l;

    move-result-object v1

    const-string v2, "change"

    invoke-virtual {v1, v2, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    iput p1, p0, Lcom/apicloud/a/i/a/ad/b$a;->c:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/b$a;->a:Lcom/apicloud/a/i/a/ad/b;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/ad/b;->a(Lcom/apicloud/a/i/a/ad/b;I)V

    return-void
.end method
