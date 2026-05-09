.class Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;
.super Lcom/uzmap/pkg/openapi/mam/ServerRewriter;
.source "ServerConfig.java"


# instance fields
.field private mEncrypt:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

.field private mIncNoReport:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

.field private mRawConfig:Lorg/json/JSONObject;

.field private mSmartUpdate:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter;-><init>()V

    return-void
.end method

.method static parse(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;
    .locals 8

    const-string v0, "encrypt"

    .line 63
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "checkSmartUpdate"

    .line 64
    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "incNoReport"

    .line 65
    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    if-nez p0, :cond_0

    return-object v2

    .line 69
    :cond_0
    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    invoke-direct {v3}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;-><init>()V

    if-eqz v0, :cond_1

    const-string v4, "key"

    .line 71
    invoke-virtual {v0, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "iv"

    .line 72
    invoke-virtual {v0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    .line 74
    new-instance v5, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    invoke-direct {v5}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;-><init>()V

    .line 75
    invoke-virtual {v5, v4}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->setKey(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v5, v0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;->setIV(Ljava/lang/String;)V

    .line 77
    invoke-virtual {v3, v5}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->setEncrypt(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;)V

    :cond_1
    const-string v0, "header"

    const-string v4, "param"

    const-string v5, "url"

    if-eqz v1, :cond_5

    .line 81
    new-instance v6, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    invoke-direct {v6}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;-><init>()V

    .line 82
    invoke-virtual {v1, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 84
    invoke-virtual {v6, v7}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;->setUrl(Ljava/lang/String;)V

    .line 86
    :cond_2
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 88
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v7

    .line 89
    invoke-virtual {v6, v7}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;->setParam(Ljava/util/Map;)V

    .line 91
    :cond_3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 93
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v1

    .line 94
    invoke-virtual {v6, v1}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;->setHeader(Ljava/util/Map;)V

    .line 96
    :cond_4
    invoke-virtual {v3, v6}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->setSmartUpdate(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;)V

    :cond_5
    if-eqz p0, :cond_9

    .line 99
    new-instance v1, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    invoke-direct {v1}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;-><init>()V

    .line 100
    invoke-virtual {p0, v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 102
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->setUrl(Ljava/lang/String;)V

    .line 104
    :cond_6
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 106
    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->setParam(Ljava/util/Map;)V

    .line 109
    :cond_7
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-eqz p0, :cond_8

    .line 111
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->toMap(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object p0

    .line 112
    invoke-virtual {v1, p0}, Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;->setHeader(Ljava/util/Map;)V

    .line 114
    :cond_8
    invoke-virtual {v3, v1}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->setIncNoReport(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;)V

    :cond_9
    return-object v3
.end method

.method private static toMap(Lorg/json/JSONObject;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    invoke-virtual {p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 122
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 123
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    .line 124
    invoke-virtual {p0, v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 126
    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic getEncrypt()Lcom/deepe/b/e/b$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->getEncrypt()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    move-result-object v0

    return-object v0
.end method

.method public getEncrypt()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mEncrypt:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    return-object v0
.end method

.method public bridge synthetic getIncNoReport()Lcom/deepe/b/e/b$b;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->getIncNoReport()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    move-result-object v0

    return-object v0
.end method

.method public getIncNoReport()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mIncNoReport:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    return-object v0
.end method

.method final getRawConfig()Lorg/json/JSONObject;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mRawConfig:Lorg/json/JSONObject;

    return-object v0
.end method

.method public bridge synthetic getSmartUpdate()Lcom/deepe/b/e/b$c;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->getSmartUpdate()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    move-result-object v0

    return-object v0
.end method

.method public getSmartUpdate()Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mSmartUpdate:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    return-object v0
.end method

.method info()Ljava/lang/String;
    .locals 4

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SmartUpdate "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mSmartUpdate:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", IncNoReport"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mIncNoReport:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", Encrypt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mEncrypt:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method final setEncrypt(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mEncrypt:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SEncrypt;

    return-void
.end method

.method final setIncNoReport(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mIncNoReport:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SIncNoReport;

    return-void
.end method

.method final setRawConfig(Lorg/json/JSONObject;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mRawConfig:Lorg/json/JSONObject;

    return-void
.end method

.method final setSmartUpdate(Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->mSmartUpdate:Lcom/uzmap/pkg/openapi/mam/ServerRewriter$SSmartUpdate;

    return-void
.end method
