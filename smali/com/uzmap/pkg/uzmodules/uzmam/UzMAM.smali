.class public Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzMAM.java"


# static fields
.field private static sSmartRuning:Z

.field private static sUpdateRuning:Z


# instance fields
.field private mConfigSetted:Z

.field private mServerConfig:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method private checkSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;)V
    .locals 1

    const/4 v0, 0x1

    .line 183
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    .line 184
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;-><init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-static {v0, p2}, Lcom/uzmap/pkg/openapi/mam/VersionManager;->checkSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V

    return-void
.end method

.method private checkUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V
    .locals 1

    const/4 v0, 0x1

    .line 160
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setUpdateRuning(Z)V

    .line 161
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;-><init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-static {v0, p2}, Lcom/uzmap/pkg/openapi/mam/VersionManager;->checkUpdate(Lcom/uzmap/pkg/openapi/mam/UpdateCallback;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V

    return-void
.end method

.method static setSmartRuning(Z)V
    .locals 0

    .line 261
    sput-boolean p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->sSmartRuning:Z

    return-void
.end method

.method static setUpdateRuning(Z)V
    .locals 0

    .line 253
    sput-boolean p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->sUpdateRuning:Z

    return-void
.end method

.method static smartRuning()Z
    .locals 1

    .line 265
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->sSmartRuning:Z

    return v0
.end method

.method private toIncPackage(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 226
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 229
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 230
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_1

    return-object v1

    .line 232
    :cond_1
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    const-string v4, "incNo"

    .line 236
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "url"

    .line 237
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "silent"

    .line 238
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "extra"

    .line 239
    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "index"

    .line 240
    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    .line 241
    new-instance v8, Lcom/uzmap/pkg/openapi/IncPackage;

    invoke-direct {v8}, Lcom/uzmap/pkg/openapi/IncPackage;-><init>()V

    .line 242
    iput v4, v8, Lcom/uzmap/pkg/openapi/IncPackage;->version:I

    .line 243
    iput-object v5, v8, Lcom/uzmap/pkg/openapi/IncPackage;->url:Ljava/lang/String;

    .line 244
    iput-boolean v6, v8, Lcom/uzmap/pkg/openapi/IncPackage;->silent:Z

    .line 245
    iput v3, v8, Lcom/uzmap/pkg/openapi/IncPackage;->index:I

    .line 246
    iput-object v7, v8, Lcom/uzmap/pkg/openapi/IncPackage;->extra:Ljava/lang/String;

    .line 247
    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method static updateRuning()Z
    .locals 1

    .line 257
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->sUpdateRuning:Z

    return v0
.end method


# virtual methods
.method public final jsmethod_addEvent(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    const-string v0, "name"

    .line 69
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-static {p1}, Lcom/uzmap/pkg/openapi/mam/DataCollector;->addEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final jsmethod_checkSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->smartRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mServerConfig:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->checkSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;)V

    return-void
.end method

.method public final jsmethod_checkUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 62
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->updateRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mServerConfig:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->checkUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V

    return-void
.end method

.method public final jsmethod_config(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 54
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mConfigSetted:Z

    .line 55
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->parse(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mServerConfig:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    .line 57
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->asJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->setRawConfig(Lorg/json/JSONObject;)V

    .line 58
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->getRawConfig()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;)V

    return-void
.end method

.method public final jsmethod_resetSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 113
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->smartRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 116
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    .line 117
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 118
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;

    invoke-direct {v1, p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;-><init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lorg/json/JSONObject;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-static {v1}, Lcom/uzmap/pkg/openapi/mam/VersionManager;->resetSmartUpdate(Lcom/uzmap/pkg/openapi/mam/ResetListener;)V

    return-void
.end method

.method public final jsmethod_startSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 81
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->smartRuning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 84
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    const-string v0, "packages"

    .line 85
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->toIncPackage(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object v0

    .line 86
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 87
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;

    invoke-direct {v2, p0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lorg/json/JSONObject;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 109
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mServerConfig:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    .line 87
    invoke-static {v2, v0, p1}, Lcom/uzmap/pkg/openapi/mam/VersionManager;->startSmartUpdate(Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;Ljava/util/List;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V

    return-void
.end method

.method final noConfig()Lorg/json/JSONObject;
    .locals 3

    .line 269
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "configSetted"

    .line 271
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->mConfigSetted:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method protected onClean()V
    .locals 0

    return-void
.end method
