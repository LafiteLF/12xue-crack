.class public Lcom/apicloud/FNPhotograph/ResizableCameraPreview;
.super Lcom/apicloud/FNPhotograph/CameraPreview;
.source "ResizableCameraPreview.java"


# static fields
.field private static DEBUGGING:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "ResizableCameraPreviewSample"


# instance fields
.field private mPictureH:I

.field private mPictureW:I

.field private mPreviewH:I

.field private mPreviewW:I

.field private useAdvanceFeature:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;ZLjava/lang/String;)V
    .locals 2

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/FNPhotograph/CameraPreview;-><init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->useAdvanceFeature:Z

    const/16 p2, 0x780

    .line 46
    iput p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewW:I

    const/16 p3, 0x438

    .line 47
    iput p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewH:I

    .line 49
    iput p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureW:I

    .line 50
    iput p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureH:I

    .line 28
    iput-object p5, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSavePath:Ljava/lang/String;

    if-eqz p4, :cond_0

    .line 30
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    .line 31
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    :goto_0
    if-ge p1, p3, :cond_0

    .line 33
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/hardware/Camera$Size;

    .line 34
    new-instance p5, Landroid/hardware/Camera$Size;

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, p4, Landroid/hardware/Camera$Size;->height:I

    iget p4, p4, Landroid/hardware/Camera$Size;->width:I

    invoke-direct {p5, v0, v1, p4}, Landroid/hardware/Camera$Size;-><init>(Landroid/hardware/Camera;II)V

    .line 35
    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getSupportPictureSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSizeList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportPreviewSize()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    return-object v0
.end method

.method public getSupportedPreivewSizes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/Camera$Size;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    return-object v0
.end method

.method public matchPictureSize(II)Landroid/hardware/Camera$Size;
    .locals 3

    .line 118
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 119
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne p1, v2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne p2, v2, :cond_0

    return-object v1

    .line 123
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSizeList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public matchPreviewSize(II)Landroid/hardware/Camera$Size;
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Camera$Size;

    .line 110
    iget v2, v1, Landroid/hardware/Camera$Size;->width:I

    if-ne p1, v2, :cond_0

    iget v2, v1, Landroid/hardware/Camera$Size;->height:I

    if-ne p2, v2, :cond_0

    return-object v1

    .line 114
    :cond_1
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    return-object p1
.end method

.method public setCustomPictureResolution(II)V
    .locals 0

    .line 59
    iput p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureW:I

    .line 60
    iput p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureH:I

    return-void
.end method

.method public setCustomPrevieResolution(II)V
    .locals 0

    .line 54
    iput p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewW:I

    .line 55
    iput p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewH:I

    return-void
.end method

.method public setPreviewSize(III)V
    .locals 5

    .line 144
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 146
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    .line 147
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->isPortrait()Z

    move-result v1

    .line 149
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSizeList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/Camera$Size;

    .line 150
    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 151
    sget-boolean v3, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->DEBUGGING:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested Preview Size - w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p1, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ResizableCameraPreviewSample"

    invoke-static {v4, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 153
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 154
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->adjustSurfaceLayoutSize(Landroid/hardware/Camera$Size;ZII)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 156
    iput-boolean p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    return-void

    .line 160
    :cond_1
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    .line 162
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 164
    iget-object p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mActivity:Landroid/app/Activity;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to satart preview: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    const/4 p1, 0x0

    .line 166
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    return-void
.end method

.method public setUseAdvanceFeature(Z)V
    .locals 0

    .line 43
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->useAdvanceFeature:Z

    return-void
.end method

.method public startPreview()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 5

    .line 65
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->stopPreview()V

    .line 67
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->isPortrait()Z

    move-result p2

    .line 70
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    const-string v1, "ResizableCameraPreviewSample"

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->useAdvanceFeature:Z

    if-nez v0, :cond_1

    .line 71
    invoke-virtual {p0, p2, p3, p4}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->determinePreviewSize(ZII)Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 72
    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->determinePictureSize(Landroid/hardware/Camera$Size;)Landroid/hardware/Camera$Size;

    move-result-object v2

    .line 73
    sget-boolean v3, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->DEBUGGING:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Desired Preview Size - w: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", h: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :cond_0
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 75
    iput-object v2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 77
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->adjustSurfaceLayoutSize(Landroid/hardware/Camera$Size;ZII)Z

    move-result p3

    iput-boolean p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    .line 78
    iget-boolean p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    if-eqz p3, :cond_2

    return-void

    .line 83
    :cond_1
    iget p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewW:I

    iget p4, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewH:I

    invoke-virtual {p0, p3, p4}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->matchPreviewSize(II)Landroid/hardware/Camera$Size;

    move-result-object p3

    .line 84
    iget p4, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureW:I

    iget v0, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureH:I

    invoke-virtual {p0, p4, v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->matchPictureSize(II)Landroid/hardware/Camera$Size;

    move-result-object p4

    .line 86
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 87
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/FNPhotograph/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 88
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/apicloud/FNPhotograph/ViewUtil;->getScreenWidth(Landroid/content/Context;)I

    move-result v2

    iget v3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewW:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewH:I

    div-int/2addr v2, v3

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 90
    iput-object p3, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPreviewSize:Landroid/hardware/Camera$Size;

    .line 91
    iput-object p4, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mPictureSize:Landroid/hardware/Camera$Size;

    .line 93
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->requestLayout()V

    .line 96
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->configureCameraParameters(Landroid/hardware/Camera$Parameters;Z)V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mSurfaceConfiguring:Z

    .line 100
    :try_start_0
    iget-object p1, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {p1}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 102
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->mActivity:Landroid/app/Activity;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Failed to start preview: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p2, p3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/Toast;->show()V

    .line 103
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
