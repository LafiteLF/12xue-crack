.class Lcom/uzmap/pkg/a/e$b;
.super Lcom/apicloud/b/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/a/e;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/a/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/a/e$b;->a:Lcom/uzmap/pkg/a/e;

    invoke-direct {p0}, Lcom/apicloud/b/a/c;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/a/e;Lcom/uzmap/pkg/a/e$b;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/a/e$b;-><init>(Lcom/uzmap/pkg/a/e;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/b/a/f;)V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/a/e$b;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {v0}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/b/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/apicloud/b/a/f;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/apicloud/b/a/f;->d()I

    move-result v2

    invoke-virtual {p1}, Lcom/apicloud/b/a/f;->a()I

    move-result v3

    new-instance v4, Lcom/uzmap/pkg/uzcore/i/j;

    invoke-direct {v4, v1}, Lcom/uzmap/pkg/uzcore/i/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Lcom/uzmap/pkg/uzcore/i/j;->a(I)V

    invoke-virtual {v4, v0}, Lcom/uzmap/pkg/uzcore/i/j;->a(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Lcom/uzmap/pkg/uzcore/i/j;->b(I)V

    invoke-virtual {p1}, Lcom/apicloud/b/a/f;->e()Z

    move-result p1

    invoke-virtual {v4, p1}, Lcom/uzmap/pkg/uzcore/i/j;->a(Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/a/e$b;->a:Lcom/uzmap/pkg/a/e;

    invoke-static {p1}, Lcom/uzmap/pkg/a/e;->a(Lcom/uzmap/pkg/a/e;)Lcom/uzmap/pkg/a/f;

    move-result-object p1

    invoke-interface {p1, v4}, Lcom/uzmap/pkg/a/f;->a(Lcom/uzmap/pkg/uzcore/i/j;)V

    :cond_0
    return-void
.end method
