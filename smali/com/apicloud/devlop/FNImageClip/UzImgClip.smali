.class public Lcom/apicloud/devlop/FNImageClip/UzImgClip;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "UzImgClip.java"


# static fields
.field public static mHighDefinition:Z


# instance fields
.field private mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 15
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method


# virtual methods
.method public jsmethod_close(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 36
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmClipLayout()Landroid/widget/FrameLayout;

    move-result-object p1

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    if-eqz p1, :cond_0

    .line 40
    invoke-virtual {p0, p1}, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->removeViewFromCurWindow(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    const-string v0, "highDefinition"

    .line 19
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mHighDefinition:Z

    .line 21
    :cond_0
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    if-nez v0, :cond_1

    .line 22
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->context()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1, p1, p0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;-><init>(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    .line 23
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->open()V

    :cond_1
    return-void
.end method

.method public jsmethod_reset(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 32
    new-instance p1, Lcom/apicloud/devlop/FNImageClip/ImgClipReset;

    invoke-direct {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipReset;-><init>()V

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    invoke-virtual {p1, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipReset;->reset(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;)V

    return-void
.end method

.method public jsmethod_save(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 28
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;

    invoke-direct {v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;-><init>()V

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->mImgClipOpen:Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/UzImgClip;->context()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v0, v1, v2, p1, p0}, Lcom/apicloud/devlop/FNImageClip/ImgClipSave;->save(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/apicloud/devlop/FNImageClip/UzImgClip;)V

    return-void
.end method
