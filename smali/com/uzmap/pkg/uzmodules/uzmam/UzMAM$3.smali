.class Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;
.super Lcom/uzmap/pkg/openapi/mam/UpdateCallback;
.source "UzMAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->checkUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/openapi/mam/ServerRewriter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 161
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/UpdateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/uzmap/pkg/openapi/mam/Results;)V
    .locals 4

    const/4 v0, 0x0

    .line 164
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setUpdateRuning(Z)V

    .line 165
    invoke-virtual {p1}, Lcom/uzmap/pkg/openapi/mam/Results;->success()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object p1, p1, Lcom/uzmap/pkg/openapi/mam/Results;->data:Ljava/lang/String;

    invoke-virtual {v0, p1, v1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Ljava/lang/String;ZZ)V

    goto :goto_2

    .line 168
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "msg"

    .line 170
    iget-object v3, p1, Lcom/uzmap/pkg/openapi/mam/Results;->data:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "statusCode"

    .line 171
    iget v3, p1, Lcom/uzmap/pkg/openapi/mam/Results;->statusCode:I

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "code"

    .line 172
    iget p1, p1, Lcom/uzmap/pkg/openapi/mam/Results;->statusCode:I

    const/16 v3, 0x191

    if-ne p1, v3, :cond_1

    const-string p1, "auth"

    goto :goto_0

    :cond_1
    const-string p1, "fail"

    :goto_0
    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 174
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 176
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    :goto_2
    return-void
.end method
