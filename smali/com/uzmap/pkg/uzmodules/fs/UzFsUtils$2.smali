.class Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;
.super Ljava/lang/Thread;
.source "UzFsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->jsmethod_copyTo(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 423
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "status"

    .line 426
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "oldPath"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 427
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "newPath"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 429
    :try_start_0
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v4, v1, v2, v5}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$000(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v1

    .line 430
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$100(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 431
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$100(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 433
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 435
    :try_start_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$200(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v4, "msg"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 436
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$100(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 437
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$100(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils$2;->this$0:Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;->access$200(Lcom/uzmap/pkg/uzmodules/fs/UzFsUtils;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    .line 440
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
