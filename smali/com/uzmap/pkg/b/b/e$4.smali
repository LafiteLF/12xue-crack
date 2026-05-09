.class Lcom/uzmap/pkg/b/b/e$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/m$b;


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

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/e;->c(Lcom/uzmap/pkg/b/b/e;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;I)V

    return-void
.end method

.method public a(ILjava/lang/String;Z)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/b/e;->c(Lcom/uzmap/pkg/b/b/e;Z)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;I)V

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/e;->c(Lcom/uzmap/pkg/b/b/e;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;I)V

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$4;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/b/b/e;->a(Lcom/uzmap/pkg/b/b/e;Ljava/lang/String;)V

    return-void
.end method
