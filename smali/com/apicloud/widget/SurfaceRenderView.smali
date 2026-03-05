.class public Lcom/apicloud/widget/SurfaceRenderView;
.super Landroid/view/SurfaceView;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/apicloud/widget/IRenderView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;,
        Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;
    }
.end annotation


# instance fields
.field private mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

.field private mSurfaceCallback:Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-direct {p0, p1}, Lcom/apicloud/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    invoke-direct {p0, p1}, Lcom/apicloud/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    invoke-direct {p0, p1}, Lcom/apicloud/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 60
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    invoke-direct {p0, p1}, Lcom/apicloud/widget/SurfaceRenderView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 1

    .line 65
    new-instance p1, Lcom/apicloud/widget/MeasureHelper;

    invoke-direct {p1, p0}, Lcom/apicloud/widget/MeasureHelper;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    .line 66
    new-instance p1, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;

    invoke-direct {p1, p0}, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;-><init>(Lcom/apicloud/widget/SurfaceRenderView;)V

    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;

    .line 67
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 69
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->setType(I)V

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 269
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 270
    const-class v0, Lcom/apicloud/widget/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 276
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 277
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 278
    const-class v0, Lcom/apicloud/widget/SurfaceRenderView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->doMeasure(II)V

    .line 116
    iget-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {p1}, Lcom/apicloud/widget/MeasureHelper;->getMeasuredWidth()I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {p2}, Lcom/apicloud/widget/MeasureHelper;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/widget/SurfaceRenderView;->setMeasuredDimension(II)V

    return-void
.end method

.method public release()V
    .locals 0

    return-void
.end method

.method public removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mSurfaceCallback:Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V

    return-void
.end method

.method public setAspectRatio(I)V
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/MeasureHelper;->setAspectRatio(I)V

    .line 110
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->requestLayout()V

    return-void
.end method

.method public setVideoRotation(I)V
    .locals 2

    .line 104
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SurfaceView doesn\'t support rotation ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!\n"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setVideoSampleAspectRatio(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 97
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->setVideoSampleAspectRatio(II)V

    .line 98
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setVideoSize(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 88
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView;->mMeasureHelper:Lcom/apicloud/widget/MeasureHelper;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/widget/MeasureHelper;->setVideoSize(II)V

    .line 89
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 90
    invoke-virtual {p0}, Lcom/apicloud/widget/SurfaceRenderView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public shouldWaitForResize()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
