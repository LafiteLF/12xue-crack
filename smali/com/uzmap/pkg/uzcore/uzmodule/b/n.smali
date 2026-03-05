.class public final Lcom/uzmap/pkg/uzcore/uzmodule/b/n;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# instance fields
.field public a:Lorg/json/JSONObject;

.field public b:[J

.field public c:Ljava/lang/String;

.field public d:Z

.field public e:Lorg/json/JSONObject;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a()V

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "default"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/deepe/c/i/h;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected a()V
    .locals 6

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "notify"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->e:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "sound"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    const-string v0, "light"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->d:Z

    const-string v0, "vibrate"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzcore/a/c;->a()I

    move-result v3

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    if-lez v3, :cond_3

    new-array v0, v3, [J

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    :goto_1
    if-lt v2, v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    invoke-interface {v1, v2}, Lcom/uzmap/pkg/uzcore/a/c;->a(I)J

    move-result-wide v4

    aput-wide v4, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x4

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->b:[J

    const-wide/16 v3, 0x64

    aput-wide v3, v0, v2

    const-wide/16 v1, 0x1f4

    const/4 v5, 0x1

    aput-wide v1, v0, v5

    const/4 v5, 0x2

    aput-wide v3, v0, v5

    const/4 v3, 0x3

    aput-wide v1, v0, v3

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    if-nez v0, :cond_5

    const-string v0, "default"

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    return-void

    :cond_5
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->c:Ljava/lang/String;

    :cond_6
    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public c()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->e:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "title"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public e()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "extra"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public g()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/n;->a:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    const-string v1, "updateCurrent"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
