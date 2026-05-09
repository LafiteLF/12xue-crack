.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$42;
.super Lcom/uzmap/pkg/uzcore/h/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->aO(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic d:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic e:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;ILcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$42;->d:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$42;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzcore/h/n$a;-><init>(I)V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 4

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$42;->c:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "type"

    const-string v3, "click"

    invoke-virtual {v0, v2, v3}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$42;->e:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method
