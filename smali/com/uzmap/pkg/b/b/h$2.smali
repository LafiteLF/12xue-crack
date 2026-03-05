.class Lcom/uzmap/pkg/b/b/h$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/b/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/h;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/h;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/b/b/h;->b(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/b/b/h;->b(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 0

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {p1, p2}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;I)V

    return-void
.end method

.method public a(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;II)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$2;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/b/b/h;->a(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;)V

    return-void
.end method
