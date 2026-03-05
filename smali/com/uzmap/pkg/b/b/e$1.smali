.class Lcom/uzmap/pkg/b/b/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/e;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v1}, Lcom/uzmap/pkg/b/b/e;->b(Lcom/uzmap/pkg/b/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/b/b/f;->a(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->c(Lcom/uzmap/pkg/b/b/e;)V

    return-void
.end method

.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v1}, Lcom/uzmap/pkg/b/b/e;->b(Lcom/uzmap/pkg/b/b/e;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Lcom/uzmap/pkg/b/b/f;->a(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$1;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;)Lcom/uzmap/pkg/b/b/f;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/f;->a(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method
