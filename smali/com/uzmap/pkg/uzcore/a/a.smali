.class public Lcom/uzmap/pkg/uzcore/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/uzmodule/b;


# static fields
.field public static final a:Lcom/uzmap/pkg/uzcore/uzmodule/b;


# instance fields
.field private b:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/a/a;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/a/a;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/uzcore/a/a;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    return-void
.end method

.method public static final a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/a/a;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzcore/a/a;-><init>(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method public static final b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lcom/uzmap/pkg/uzcore/a/a;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-object p0

    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/a/a;->a(Lorg/json/JSONObject;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object p0, Lcom/uzmap/pkg/uzcore/a/a;->a:Lcom/uzmap/pkg/uzcore/uzmodule/b;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public asJSONObject()Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final has(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final isNull(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public length()I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public opt(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/a/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final optBoolean(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final optBoolean(Ljava/lang/String;Z)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p2

    :cond_0
    return p2
.end method

.method public final optDouble(Ljava/lang/String;)D
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public final optDouble(Ljava/lang/String;D)D
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optInt(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final optInt(Ljava/lang/String;I)I
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    return p2
.end method

.method public final optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optJSONBundle(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/a/c;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/a/a;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/a/b;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/a/b;-><init>(Lorg/json/JSONArray;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/a/a;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/a/a;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzcore/a/a;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public final optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final optLong(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final optLong(Ljava/lang/String;J)J
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide p2

    :cond_0
    return-wide p2
.end method

.method public final optString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method public final optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/a/a;->b:Lorg/json/JSONObject;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "{}"

    :goto_0
    return-object v0
.end method
