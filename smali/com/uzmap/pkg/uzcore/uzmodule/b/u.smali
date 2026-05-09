.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/u;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/b;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Z

.field public e:Ljava/lang/String;

.field public f:Lcom/uzmap/pkg/uzcore/uzmodule/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->a()V

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "id"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->a:Ljava/lang/String;

    const-string v1, "path"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->e:Ljava/lang/String;

    const-string v1, "wgtParam"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, "appParam"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    new-instance v2, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    invoke-direct {v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->f:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    const-string v1, "retData"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->b:Ljava/lang/String;

    const-string v0, "silent"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->c:Z

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->e:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->e:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->e:Ljava/lang/String;

    return-void
.end method

.method public b()Lorg/json/JSONObject;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/u;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_1
    return-object v0
.end method
