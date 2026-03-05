.class Lcom/uzmap/pkg/uzcore/h$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/af;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/g;

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/g;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/h;Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/g;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h$1;->a:Lcom/uzmap/pkg/uzcore/h;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h$1;->b:Lcom/uzmap/pkg/uzcore/g;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/h$1;->c:Lcom/uzmap/pkg/uzcore/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$1;->a:Lcom/uzmap/pkg/uzcore/h;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h$1;->b:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;Lcom/uzmap/pkg/uzcore/g;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$1;->c:Lcom/uzmap/pkg/uzcore/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/g;->setAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h$1;->a:Lcom/uzmap/pkg/uzcore/h;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h$1;->c:Lcom/uzmap/pkg/uzcore/g;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h;->a(Lcom/uzmap/pkg/uzcore/h;Landroid/view/View;)V

    return-void
.end method
