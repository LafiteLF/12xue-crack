.class Lcom/uzmap/pkg/uzcore/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/g;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/d/c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g$6;->a:Lcom/uzmap/pkg/uzcore/g;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g$6;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$6;->b:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/c;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$6;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->l()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$6;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g$6;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$6;->a:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/g;->b(Lcom/uzmap/pkg/uzcore/g;)Lcom/uzmap/pkg/uzcore/k;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g$6;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/k;->g(Lcom/uzmap/pkg/uzcore/d/c;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/g$6;->a:Lcom/uzmap/pkg/uzcore/g;

    const/4 v4, 0x0

    invoke-static {v3, v2, v4}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Z)V

    goto :goto_0

    :cond_1
    :goto_1
    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void
.end method
