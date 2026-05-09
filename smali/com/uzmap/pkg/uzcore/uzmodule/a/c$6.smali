.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;
.super Lcom/uzmap/pkg/b/a/f$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->g(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Lcom/uzmap/pkg/b/a/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public c()V
    .locals 3

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$6;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
