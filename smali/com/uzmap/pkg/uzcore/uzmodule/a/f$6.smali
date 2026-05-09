.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$6;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->x(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/q;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$6;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$6;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$6;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->f(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/d/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$6;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/q;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/d/h;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/q;)V

    return-void
.end method
