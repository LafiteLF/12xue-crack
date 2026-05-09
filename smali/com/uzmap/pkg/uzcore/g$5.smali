.class Lcom/uzmap/pkg/uzcore/g$5;
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

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/d/c;

.field private final synthetic d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/d/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g$5;->a:Lcom/uzmap/pkg/uzcore/g;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g$5;->b:Lcom/uzmap/pkg/uzcore/d/c;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/g$5;->c:Lcom/uzmap/pkg/uzcore/d/c;

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/g$5;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$5;->b:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/c;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$5;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/d/c;->l()V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$5;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g$5;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$5;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g$5;->c:Lcom/uzmap/pkg/uzcore/d/c;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/g$5;->d:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    if-eqz v2, :cond_0

    iget-boolean v2, v2, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->T:Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;Z)V

    invoke-static {}, Lcom/deepe/c/k/h;->b()V

    return-void
.end method
