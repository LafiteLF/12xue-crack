.class Lcom/uzmap/pkg/uzcore/f/e$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/f/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/f/e;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/f/e;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/f/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/b;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/f/b;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/f/e;->a(ZLcom/uzmap/pkg/uzcore/c;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/f/e;->b(Lcom/uzmap/pkg/uzcore/f/e;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/b;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/f/b;->d()Ljava/lang/Object;

    move-result-object p1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/f/e;->c(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/e$a;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/f/e;->c(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/e$a;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/f/e$a;->a(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    move p1, v1

    :goto_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/f/e;->a(Lcom/uzmap/pkg/uzcore/f/e;)Lcom/uzmap/pkg/uzcore/f/b;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/f/b;->a(Z)V

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/f/e;->a(ZLcom/uzmap/pkg/uzcore/c;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/f/e$2;->a:Lcom/uzmap/pkg/uzcore/f/e;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/f/e;->b(Lcom/uzmap/pkg/uzcore/f/e;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/c;->c(Ljava/lang/Runnable;)V

    :cond_3
    :goto_1
    return-void
.end method
