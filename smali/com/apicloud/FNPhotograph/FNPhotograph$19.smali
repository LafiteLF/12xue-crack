.class Lcom/apicloud/FNPhotograph/FNPhotograph$19;
.super Ljava/lang/Object;
.source "FNPhotograph.java"

# interfaces
.implements Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/FNPhotograph/FNPhotograph;->jsmethod_openCameraView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/FNPhotograph/FNPhotograph;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1046
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$19;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$19;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public openFailed()V
    .locals 4

    .line 1050
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$19;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$002(Lcom/apicloud/FNPhotograph/FNPhotograph;Z)Z

    .line 1051
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$19;->this$0:Lcom/apicloud/FNPhotograph/FNPhotograph;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/FNPhotograph/FNPhotograph;->access$702(Lcom/apicloud/FNPhotograph/FNPhotograph;Z)Z

    .line 1052
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "eventType"

    const-string v3, "cameraError"

    .line 1054
    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "status"

    .line 1055
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1056
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/FNPhotograph$19;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v2, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1058
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
