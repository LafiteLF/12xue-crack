.class public final Lcom/uzmap/pkg/uzcore/uzmodule/b/e;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/d/f$a;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lorg/json/JSONObject;

.field public c:Ljava/lang/String;

.field public d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, v1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->success(Ljava/lang/String;ZZ)V

    goto :goto_0

    :cond_0
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->success(Lorg/json/JSONObject;Z)V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public b()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->d:Z

    return v0
.end method

.method protected c()V
    .locals 2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    const-string v0, "extra"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->a:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "multiple"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->d:Z

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->a:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->b:Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method public d()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    const-string v1, "empty"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->I()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "event_empty_host"

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Event(\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/e;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
