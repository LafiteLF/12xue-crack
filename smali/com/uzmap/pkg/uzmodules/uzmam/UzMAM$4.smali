.class Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;
.super Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;
.source "UzMAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->checkSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private final synthetic val$server:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$server:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 184
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(ILjava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 212
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    .line 214
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "msg"

    .line 215
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "statusCode"

    .line 216
    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 217
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p2, 0x0

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 219
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onResult(Ljava/util/List;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 187
    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    .line 188
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    .line 189
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p1, :cond_1

    .line 192
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/openapi/IncPackage;

    .line 193
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string v3, "incNo"

    .line 194
    iget v4, v1, Lcom/uzmap/pkg/openapi/IncPackage;->version:I

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "silent"

    .line 195
    iget-boolean v4, v1, Lcom/uzmap/pkg/openapi/IncPackage;->silent:Z

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v3, "extra"

    .line 196
    iget-object v4, v1, Lcom/uzmap/pkg/openapi/IncPackage;->extra:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "url"

    .line 197
    iget-object v4, v1, Lcom/uzmap/pkg/openapi/IncPackage;->url:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v3, "index"

    .line 198
    iget v1, v1, Lcom/uzmap/pkg/openapi/IncPackage;->index:I

    invoke-virtual {v2, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 199
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_1
    :goto_1
    const-string p1, "packages"

    .line 202
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "config"

    .line 203
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$server:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$server:Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/ServerConfig;->getRawConfig()Lorg/json/JSONObject;

    move-result-object v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->noConfig()Lorg/json/JSONObject;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 207
    :goto_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$4;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
