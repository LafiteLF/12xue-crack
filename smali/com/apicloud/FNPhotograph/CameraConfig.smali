.class public Lcom/apicloud/FNPhotograph/CameraConfig;
.super Ljava/lang/Object;
.source "CameraConfig.java"


# instance fields
.field public fixed:Z

.field public fixedOn:Ljava/lang/String;

.field public orientation:Ljava/lang/String;

.field public rectH:Ljava/lang/String;

.field public rectW:Ljava/lang/String;

.field public rectX:I

.field public rectY:I

.field public useFrontCamera:Z


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "80"

    .line 11
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectW:Ljava/lang/String;

    const-string v1, "50"

    .line 12
    iput-object v1, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectH:Ljava/lang/String;

    const/4 v2, 0x0

    .line 18
    iput-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->useFrontCamera:Z

    const-string v3, "rect"

    .line 22
    invoke-virtual {p1, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "x"

    .line 24
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectX:I

    const-string v4, "y"

    .line 25
    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectY:I

    const-string v4, "w"

    .line 26
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectW:Ljava/lang/String;

    const-string v0, "h"

    .line 27
    invoke-virtual {v3, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->rectH:Ljava/lang/String;

    :cond_0
    const-string v0, "useFrontCamera"

    .line 30
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->useFrontCamera:Z

    const-string v0, "orientation"

    const-string v1, "portrait"

    .line 31
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->orientation:Ljava/lang/String;

    const-string v0, "fixedOn"

    .line 32
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->fixedOn:Ljava/lang/String;

    const-string v0, "fixed"

    .line 33
    invoke-virtual {p1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraConfig;->fixed:Z

    return-void
.end method
