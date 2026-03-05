.class public Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/uzmodule/b;


# instance fields
.field private a:I

.field private b:Lcom/uzmap/pkg/uzcore/a/d;

.field private c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "cbId"

    invoke-interface {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    const-string p2, "arg"

    invoke-interface {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p2

    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;)V

    return-void
.end method

.method public static dipToPix(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result p0

    return p0
.end method

.method protected static final parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/a/a;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p0

    return-object p0
.end method

.method public static pixToDip(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result p0

    return p0
.end method

.method private useAble()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->F()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public asJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final async()Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    const-string v1, "sync"

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public callbackAble()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->useAble()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final empty()Z
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final error(Lorg/json/JSONObject;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public final error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    invoke-static {p1, p2, v0, p3}, Lcom/uzmap/pkg/uzcore/c/c;->a(Lorg/json/JSONObject;Lorg/json/JSONObject;IZ)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->evaluateScript(Ljava/lang/String;)V

    return-void
.end method

.method public final error(Lorg/json/JSONObject;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    return-void
.end method

.method protected evaluateScript(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->evaluateScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method protected evaluateScript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->callbackAble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/a/d;->a(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_0

    :cond_0
    sget-boolean p2, Lcom/deepe/d/a;->a:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "ModuleContext callback is unable: useAble="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->useAble()Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", callbackId="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/d/a;->f(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final get()Lorg/json/JSONObject;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public getBaseUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final getJSONContext()Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-object v0
.end method

.method public final getJsBridge()Lcom/uzmap/pkg/uzcore/a/d;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->has(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final interrupt()V
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/c/c;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->evaluateScript(Ljava/lang/String;)V

    return-void
.end method

.method public final isNull(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->isNull(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public makeAbsUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->b()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->d:Ljava/lang/String;

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public makeRealPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->useAble()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzcore/a/d;->B()Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->l()Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/al;->f(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/al;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object p1

    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/al;->d(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeAbsUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    if-nez p2, :cond_3

    return-object p1

    :cond_3
    invoke-static {p1, p2}, Lcom/uzmap/pkg/uzcore/w;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final optArray(Ljava/lang/String;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/deepe/c/i/j;->b(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final optBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final optBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public final optDouble(Ljava/lang/String;)D
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public final optDouble(Ljava/lang/String;D)D
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optDouble(Ljava/lang/String;D)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final optInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public final optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/a/b;->a(Lorg/json/JSONArray;)Lcom/uzmap/pkg/uzcore/a/c;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optLong(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final optLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optObject(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b;->set(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setBaseUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->d:Ljava/lang/String;

    return-void
.end method

.method public final setJsBridge(Lcom/uzmap/pkg/uzcore/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->b:Lcom/uzmap/pkg/uzcore/a/d;

    return-void
.end method

.method public final success(Ljava/lang/String;ZZ)V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    invoke-static {p1, v0, p2, p3}, Lcom/uzmap/pkg/uzcore/c/c;->a(Ljava/lang/String;IZZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->evaluateScript(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-static {p2, p1}, Lcom/deepe/c/i/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final success(Lorg/json/JSONObject;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public final success(Lorg/json/JSONObject;Z)V
    .locals 1

    :try_start_0
    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->a:I

    invoke-static {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/c/c;->a(Lorg/json/JSONObject;IZ)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->evaluateScript(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "msg"

    invoke-static {p2, p1}, Lcom/deepe/c/i/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
