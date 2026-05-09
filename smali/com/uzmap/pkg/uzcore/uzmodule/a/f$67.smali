.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->q(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/r;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/uzmap/pkg/uzcore/uzmodule/b/r;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/r;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->d(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/d/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->e(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$67;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/r;

    invoke-interface {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/d/m;->a(ILcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method
