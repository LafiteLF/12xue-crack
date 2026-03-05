.class Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;
.super Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;
.source "UzMAM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->jsmethod_startSmartUpdate(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private final synthetic val$ret:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;Lorg/json/JSONObject;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 87
    invoke-direct {p0}, Lcom/uzmap/pkg/openapi/mam/SmartUpdateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(ZLjava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    .line 107
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM;->setSmartRuning(Z)V

    return-void
.end method

.method public onStart(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/IncPackage;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStatusChange(IIIDLjava/lang/String;)V
    .locals 2

    .line 95
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const-string v0, "total"

    invoke-virtual {p1, v0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const-string p2, "current"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 98
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const-string p2, "progress"

    double-to-int p3, p4

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 99
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const-string p2, "msg"

    invoke-virtual {p1, p2, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :catch_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzmam/UzMAM$1;->val$ret:Lorg/json/JSONObject;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
