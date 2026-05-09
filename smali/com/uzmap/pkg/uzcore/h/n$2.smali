.class Lcom/uzmap/pkg/uzcore/h/n$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/n;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h/n;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    const/4 p2, 0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/n;->b(Lcom/uzmap/pkg/uzcore/h/n;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/n;->c(Lcom/uzmap/pkg/uzcore/h/n;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->c(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/h/n;->a(Lcom/uzmap/pkg/uzcore/h/n;I)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/n;->a(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;II)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/n$2;->a:Lcom/uzmap/pkg/uzcore/h/n;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/h/n;->b(Lcom/uzmap/pkg/uzcore/h/n;Ljava/lang/String;)V

    return-void
.end method
