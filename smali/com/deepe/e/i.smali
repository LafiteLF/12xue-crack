.class public Lcom/deepe/e/i;
.super Lcom/deepe/e/c;


# instance fields
.field private b:Lcom/uzmap/pkg/uzcore/g/h;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/e/c;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/a;)V

    invoke-static {}, Lcom/uzmap/pkg/uzcore/g/h;->a()Lcom/uzmap/pkg/uzcore/g/h;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    return-void
.end method

.method private b(Ljava/lang/Object;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "data"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private c(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "message"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method private d(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 4

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzcore/g/h;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v1, "keys"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "limitSize"

    iget-object v2, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/g/h;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "currentSize"

    iget-object v2, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzcore/g/h;->c(Ljava/lang/String;)D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/deepe/c/g/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method

.method private f(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/deepe/c/g/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/deepe/e/d;Z)Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;
    .locals 8

    const-string v0, "key"

    invoke-virtual {p2, v0}, Lcom/deepe/e/d;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "domain"

    invoke-virtual {p2, v2, v1}, Lcom/deepe/e/d;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v4, 0x1

    const-string v5, "data"

    const-string v6, "encrypt"

    const/4 v7, 0x0

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_4

    :sswitch_0
    const-string p2, "removeStorageSync"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/g/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    return-object p1

    :sswitch_1
    const-string p2, "clearStorageSync"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_4

    :cond_1
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;)V

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    return-object p1

    :sswitch_2
    const-string p3, "setStorageSync"

    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_4

    :cond_2
    invoke-virtual {p2, v5}, Lcom/deepe/e/d;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/e/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p3, v2, v0, p2}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/Object;)V

    return-object p2

    :sswitch_3
    const-string v3, "setStorage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_4

    :cond_3
    invoke-virtual {p2, v5}, Lcom/deepe/e/d;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/e/i;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v6, v7}, Lcom/deepe/e/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-direct {p0, v3}, Lcom/deepe/e/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :cond_4
    iget-object v4, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {v4, v2, v0, v3}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_11

    :cond_5
    invoke-direct {p0, p1}, Lcom/deepe/e/i;->b(Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    goto/16 :goto_2

    :sswitch_4
    const-string v3, "removeStorage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto/16 :goto_4

    :cond_6
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/g/h;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p3, :cond_11

    goto/16 :goto_3

    :sswitch_5
    const-string v3, "getStorage"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    goto/16 :goto_4

    :cond_7
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/g/h;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v6, v7}, Lcom/deepe/e/d;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/deepe/e/i;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_8
    invoke-virtual {p0, p1}, Lcom/deepe/e/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p3, :cond_a

    if-nez p1, :cond_9

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    goto :goto_0

    :cond_9
    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    :goto_0
    return-object p1

    :cond_a
    if-nez p1, :cond_5

    const-string p1, "Storage Not Found"

    invoke-direct {p0, p1}, Lcom/deepe/e/i;->c(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/deepe/e/d;->error(Lorg/json/JSONObject;)V

    goto :goto_4

    :sswitch_6
    const-string p2, "getStorageSync"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_4

    :cond_b
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2, v0}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/e/i;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Ljava/lang/Object;)V

    return-object p2

    :sswitch_7
    const-string v0, "getStorageInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_4

    :cond_c
    invoke-direct {p0, v2}, Lcom/deepe/e/i;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p3, :cond_e

    if-nez p1, :cond_d

    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p1, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Z)V

    goto :goto_1

    :cond_d
    new-instance p2, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    move-object p1, p2

    :goto_1
    return-object p1

    :cond_e
    :goto_2
    invoke-virtual {p2, p1}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    goto :goto_4

    :sswitch_8
    const-string p2, "getStorageInfoSync"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_f

    goto :goto_4

    :cond_f
    new-instance p1, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;

    invoke-direct {p0, v2}, Lcom/deepe/e/i;->d(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/ModuleResult;-><init>(Lorg/json/JSONObject;)V

    return-object p1

    :sswitch_9
    const-string v0, "clearStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lcom/deepe/e/i;->b:Lcom/uzmap/pkg/uzcore/g/h;

    invoke-virtual {p1, v2}, Lcom/uzmap/pkg/uzcore/g/h;->a(Ljava/lang/String;)V

    if-nez p3, :cond_11

    :goto_3
    invoke-virtual {p2, v1}, Lcom/deepe/e/d;->success(Lorg/json/JSONObject;)V

    :cond_11
    :goto_4
    return-object v1

    :sswitch_data_0
    .sparse-switch
        -0x71bb1c92 -> :sswitch_9
        -0x4bf94632 -> :sswitch_8
        -0x4582536d -> :sswitch_7
        -0x457d9d80 -> :sswitch_6
        -0x328281bb -> :sswitch_5
        -0x290dfaa9 -> :sswitch_4
        0x40eecbb9 -> :sswitch_3
        0x50e7d5f4 -> :sswitch_2
        0x51510b29 -> :sswitch_1
        0x59591092 -> :sswitch_0
    .end sparse-switch
.end method

.method a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[N]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[B]"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "removeStorageSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_1
    const-string v0, "clearStorageSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "setStorageSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_3
    const-string v0, "setStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_4
    const-string v0, "removeStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_5
    const-string v0, "getStorage"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_6
    const-string v0, "getStorageSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_7
    const-string v0, "getStorageInfo"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_8
    const-string v0, "getStorageInfoSync"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :sswitch_9
    const-string v0, "clearStorage"

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

    :sswitch_data_0
    .sparse-switch
        -0x71bb1c92 -> :sswitch_9
        -0x4bf94632 -> :sswitch_8
        -0x4582536d -> :sswitch_7
        -0x457d9d80 -> :sswitch_6
        -0x328281bb -> :sswitch_5
        -0x290dfaa9 -> :sswitch_4
        0x40eecbb9 -> :sswitch_3
        0x50e7d5f4 -> :sswitch_2
        0x51510b29 -> :sswitch_1
        0x59591092 -> :sswitch_0
    .end sparse-switch
.end method

.method b(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "[N]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string v0, "[B]"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object p1
.end method
