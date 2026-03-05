.class Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;
.super Lcom/uzmap/pkg/openapi/mam/ResetListener;
.source "UzMAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->jsmethod_resetSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mTotalSize:J

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private final synthetic val$ret:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lorg/json/JSONObject;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 118
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/ResetListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnd(ZLjava/lang/String;)V
    .locals 7

    const/4 p1, 0x0

    .line 140
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    const/4 v0, 0x1

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v2, "finish"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 143
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v2, "reset"

    iget-wide v3, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->mTotalSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    move p1, v0

    :cond_0
    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 144
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v1, "progress"

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 145
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v1, "msg"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    :catch_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 154
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    return-void
.end method

.method public onProgress(D)V
    .locals 7

    const/4 v0, 0x0

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v2, "finish"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 129
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v2, "reset"

    iget-wide v3, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->mTotalSize:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 130
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string v2, "progress"

    invoke-virtual {v1, v2, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 131
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    const-string p2, "msg"

    const-string v1, "success"

    invoke-virtual {p1, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 135
    :catch_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->val$ret:Lorg/json/JSONObject;

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public onStart(J)V
    .locals 0

    .line 122
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$2;->mTotalSize:J

    return-void
.end method
