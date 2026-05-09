.class Lcom/uzmap/pkg/uzcore/d/f$5;
.super Lcom/uzmap/pkg/uzcore/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/d/f;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/d/f;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/d/f;IF)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$5;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p0, p2, p3}, Lcom/uzmap/pkg/uzcore/u;-><init>(IF)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f$5;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Lcom/uzmap/pkg/uzcore/d/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f$5;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const/4 v1, 0x0

    const-string v2, "tap"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f$5;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d/f;->b(Lcom/uzmap/pkg/uzcore/d/f;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f$5;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
