.class public Lk12/education/camaramodule/CameraFunctions;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "CameraFunctions.java"


# static fields
.field static final ACTIVITY_REQUEST_CODE_A:I = 0x64


# instance fields
.field private mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mediaQuality:Ljava/lang/String;

.field private time:I


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    const/16 p1, 0x1e

    .line 26
    iput p1, p0, Lk12/education/camaramodule/CameraFunctions;->time:I

    const-string p1, "middle"

    .line 27
    iput-object p1, p0, Lk12/education/camaramodule/CameraFunctions;->mediaQuality:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public jsmethod_openCamera(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 38
    iput-object p1, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v0, "time"

    .line 40
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lk12/education/camaramodule/CameraFunctions;->time:I

    const-string v1, "quality"

    .line 41
    invoke-virtual {p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk12/education/camaramodule/CameraFunctions;->mediaQuality:Ljava/lang/String;

    .line 42
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lk12/education/camaramodule/CameraFunctions;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v1

    const-class v2, Lk12/education/camaramodule/NewCameraActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 43
    iget v1, p0, Lk12/education/camaramodule/CameraFunctions;->time:I

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 44
    iget-object v0, p0, Lk12/education/camaramodule/CameraFunctions;->mediaQuality:Ljava/lang/String;

    const-string v1, "mediaQuality"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v0, 0x64

    .line 45
    invoke-virtual {p0, p1, v0}, Lk12/education/camaramodule/CameraFunctions;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    const/16 p2, 0x64

    if-ne p1, p2, :cond_0

    const-string p1, "result"

    .line 51
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 52
    iget-object p2, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz p2, :cond_0

    .line 54
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    iget-object p1, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onClean()V
    .locals 1

    .line 66
    iget-object v0, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lk12/education/camaramodule/CameraFunctions;->mJsCallback:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    :cond_0
    return-void
.end method
