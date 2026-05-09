.class public Lcom/apicloud/widget/TextureRenderView;
.super Landroid/view/TextureView;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/apicloud/widget/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;,
        Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TextureRenderView"


# instance fields
.field private lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

.field private mMediaPlayerCode:I

.field private mSurfaceCallback:Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    .line 44
    invoke-direct {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    .line 49
    invoke-direct {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    .line 54
    invoke-direct {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 59
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    .line 123
    iput p2, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    .line 60
    invoke-direct {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 0

    .line 64
    new-instance p1, Lcom/apicloud/widget/MeasureHelper;

    invoke-direct {p1, p0}, Lcom/apicloud/widget/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    .line 65
    new-instance p1, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;

    invoke-direct {p1, p0}, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView;->mSurfaceCallback:Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;

    .line 66
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mSurfaceCallback:Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public getCurrentMediaPlayerCode()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    return v0
.end method

.method public getLastSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getSurfaceHolder()Lcom/apicloud/widget/IRenderView$ISurfaceHolder;
    .locals 1

    .line 148
    new-instance v0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    invoke-direct {v0, p0}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 81
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    const-string v0, "TextureRenderView"

    const-string v1, "onDetachedFromWindow"

    .line 82
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 327
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 328
    const-class v0, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    .line 333
    invoke-super {p0, p1}, Landroid/view/TextureView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 334
    const-class v0, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->doMeasure(II)V

    .line 120
    iget-object p1, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {p1}, Lcom/apicloud/widget/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {p2}, Lcom/apicloud/widget/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/widget/TextureRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 206
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 207
    invoke-virtual {p0}, Lcom/apicloud/widget/TextureRenderView;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mSurfaceCallback:Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->setOwnSurfaceTexture(Z)V

    goto :goto_0

    .line 211
    :cond_0
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mSurfaceCallback:Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/MeasureHelper;->setAspectRatio(I)V

    .line 114
    invoke-virtual {p0}, Lcom/apicloud/widget/TextureRenderView;->requestLayout()V

    return-void
.end method

.method public setCurrentMediaPlayerCode(I)V
    .locals 0

    .line 126
    iput p1, p0, Lcom/apicloud/widget/TextureRenderView;->mMediaPlayerCode:I

    return-void
.end method

.method public setLastSurfaceTexture(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView;->lastSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/MeasureHelper;->setVideoRotation(I)V

    int-to-float p1, p1

    .line 108
    invoke-virtual {p0, p1}, Lcom/apicloud/widget/TextureRenderView;->setRotation(F)V

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 100
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 101
    invoke-virtual {p0}, Lcom/apicloud/widget/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 92
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->setVideoSize(II)V

    .line 93
    invoke-virtual {p0}, Lcom/apicloud/widget/TextureRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
