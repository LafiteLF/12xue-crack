.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/f/b/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/f/b/a$b;)V
    .locals 3

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget-boolean v1, p1, Lcom/deepe/f/b/a$b;->a:Z

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    iget-object p1, p1, Lcom/deepe/f/b/a$b;->b:Ljava/lang/String;

    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$1;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
