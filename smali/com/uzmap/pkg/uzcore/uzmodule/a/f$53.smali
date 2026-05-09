.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->ba(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->f(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/d/h;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->e(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/d/h;->c(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a;)Z

    move-result v0

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "status"

    invoke-virtual {v1, v2, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$53;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
