.class public Lcom/apicloud/devlop/FNImageClip/ImgClipReset;
.super Ljava/lang/Object;
.source "ImgClipReset.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public reset(Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmClipView()Lcom/apicloud/devlop/FNImageClip/ClipView;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmImageView()Landroid/widget/ImageView;

    move-result-object v1

    .line 11
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getmClipRect()Lcom/apicloud/devlop/FNImageClip/ClipRect;

    move-result-object p1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->restRect(Lcom/apicloud/devlop/FNImageClip/ClipRect;)V

    .line 14
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :cond_0
    return-void
.end method
