.class public Lcom/deepe/e/h;
.super Lcom/deepe/e/c;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/c;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "arg"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "animation"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    return-object p0
.end method

.method private a(Lcom/deepe/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {p1}, Lcom/deepe/e/d;->a()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x72

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "navigationBar"

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v2, "arg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    const-string v0, "navigateToOpen"

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    return-object p0
.end method

.method private b(Lcom/deepe/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {p1}, Lcom/deepe/e/d;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "root"

    invoke-static {p1, v1}, Lcom/deepe/e/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x7e

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method static synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/deepe/e/h;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcom/deepe/e/d;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/deepe/e/h;->d(Lcom/deepe/e/d;)V

    iget-object p1, p0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    new-instance v0, Lcom/deepe/e/h$1;

    invoke-direct {v0, p0}, Lcom/deepe/e/h$1;-><init>(Lcom/deepe/e/h;)V

    const/16 v1, 0x190

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->runOnUiThreadDelay(Ljava/lang/Runnable;I)Z

    return-void
.end method

.method private static d()Ljava/lang/String;
    .locals 5

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "type"

    const-string v4, "none"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "animation"

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "arg"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/deepe/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {p1}, Lcom/deepe/e/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/e/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0x70

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private e(Lcom/deepe/e/d;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/e/h;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/a;

    invoke-virtual {p1}, Lcom/deepe/e/d;->a()Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/a;->a(ILjava/lang/String;)Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p3

    sparse-switch p3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p3, "navigateTo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2}, Lcom/deepe/e/h;->d(Lcom/deepe/e/d;)V

    goto :goto_0

    :sswitch_1
    const-string p3, "switchTab"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/deepe/e/h;->a(Lcom/deepe/e/d;)V

    goto :goto_0

    :sswitch_2
    const-string p3, "redirectTo"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2}, Lcom/deepe/e/h;->c(Lcom/deepe/e/d;)V

    goto :goto_0

    :sswitch_3
    const-string p3, "navigateBack"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2}, Lcom/deepe/e/h;->e(Lcom/deepe/e/d;)V

    goto :goto_0

    :sswitch_4
    const-string p3, "reLaunch"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2}, Lcom/deepe/e/h;->b(Lcom/deepe/e/d;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x57a6943a -> :sswitch_4
        -0x3aa12208 -> :sswitch_3
        0x565e7b77 -> :sswitch_2
        0x626dd3c1 -> :sswitch_1
        0x6f05f7cc -> :sswitch_0
    .end sparse-switch
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "navigateTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "switchTab"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "redirectTo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "navigateBack"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "reLaunch"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :goto_0
    const/4 p1, 0x0

    return p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x57a6943a -> :sswitch_4
        -0x3aa12208 -> :sswitch_3
        0x565e7b77 -> :sswitch_2
        0x626dd3c1 -> :sswitch_1
        0x6f05f7cc -> :sswitch_0
    .end sparse-switch
.end method
