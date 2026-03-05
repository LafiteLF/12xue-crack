.class Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/b/a/f$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->f(Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLjava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)Lcom/uzmap/pkg/b/a/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/a/f;->c()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/c;

    invoke-static {p2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/c;->b(Lcom/uzmap/pkg/uzcore/uzmodule/a/c;)Lcom/uzmap/pkg/b/a/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/uzmap/pkg/b/a/f;->d()I

    move-result p2

    new-instance v1, Lcom/deepe/c/i/i;

    invoke-direct {v1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string p1, "duration"

    invoke-virtual {v1, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/deepe/c/i/i;

    invoke-direct {p1}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "msg"

    invoke-virtual {p1, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/c$5;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {p1}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->error(Lorg/json/JSONObject;Z)V

    :goto_0
    return-void
.end method
