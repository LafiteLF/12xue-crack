.class public Lcom/apicloud/devlop/FNImageClip/ClipLayout;
.super Landroid/widget/FrameLayout;
.source "ClipLayout.java"


# instance fields
.field private mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 1

    .line 30
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 31
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->openCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public openCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 35
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 37
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 38
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 40
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setModuleContext(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method
