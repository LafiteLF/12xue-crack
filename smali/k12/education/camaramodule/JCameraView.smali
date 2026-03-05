.class public Lk12/education/camaramodule/JCameraView;
.super Landroid/widget/FrameLayout;
.source "JCameraView.java"

# interfaces
.implements Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;
.implements Landroid/view/SurfaceHolder$Callback;
.implements Lk12/education/camaramodule/view/CameraView;


# static fields
.field public static final BUTTON_STATE_BOTH:I = 0x103

.field public static final BUTTON_STATE_ONLY_CAPTURE:I = 0x101

.field public static final BUTTON_STATE_ONLY_RECORDER:I = 0x102

.field public static final MEDIA_QUALITY_DESPAIR:I = 0x30d40

.field public static final MEDIA_QUALITY_FUNNY:I = 0x61a80

.field public static final MEDIA_QUALITY_HIGH:I = 0x1e8480

.field public static final MEDIA_QUALITY_LOW:I = 0x124f80

.field public static final MEDIA_QUALITY_MIDDLE:I = 0x186a00

.field public static final MEDIA_QUALITY_POOR:I = 0xc3500

.field public static final MEDIA_QUALITY_SORRY:I = 0x13880

.field public static final TYPE_DEFAULT:I = 0x4

.field private static final TYPE_FLASH_AUTO:I = 0x21

.field private static final TYPE_FLASH_OFF:I = 0x23

.field private static final TYPE_FLASH_ON:I = 0x22

.field public static final TYPE_PICTURE:I = 0x1

.field public static final TYPE_SHORT:I = 0x3

.field public static final TYPE_VIDEO:I = 0x2


# instance fields
.field private captureBitmap:Landroid/graphics/Bitmap;

.field private duration:I

.field private errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstTouch:Z

.field private firstTouchLength:F

.field private iconLeft:I

.field private iconMargin:I

.field private iconRight:I

.field private iconSize:I

.field private iconSrc:I

.field private jCameraLisenter:Lk12/education/camaramodule/listener/JCameraListener;

.field private layout_width:I

.field private leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

.field private mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

.field private mContext:Landroid/content/Context;

.field private mFlashLamp:Landroid/widget/ImageView;

.field private mFoucsView:Lk12/education/camaramodule/FoucsView;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private mPhoto:Landroid/widget/ImageView;

.field private mSwitchCamera:Landroid/widget/ImageView;

.field private mVideoView:Landroid/widget/VideoView;

.field private machine:Lk12/education/camaramodule/state/CameraMachine;

.field private rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

.field private screenProp:F

.field private type_flash:I

.field private videoUrl:Ljava/lang/String;

.field private zoomGradient:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 118
    invoke-direct {p0, p1, v0}, Lk12/education/camaramodule/JCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 122
    invoke-direct {p0, p1, p2, v0}, Lk12/education/camaramodule/JCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 126
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 v0, 0x23

    .line 58
    iput v0, p0, Lk12/education/camaramodule/JCameraView;->type_flash:I

    const/4 v0, 0x0

    .line 96
    iput v0, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    const/4 v1, 0x0

    .line 104
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->iconSize:I

    .line 105
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->iconMargin:I

    .line 106
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->iconSrc:I

    .line 107
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->iconLeft:I

    .line 108
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->iconRight:I

    .line 109
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->duration:I

    .line 112
    iput v1, p0, Lk12/education/camaramodule/JCameraView;->zoomGradient:I

    const/4 v2, 0x1

    .line 114
    iput-boolean v2, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    .line 115
    iput v0, p0, Lk12/education/camaramodule/JCameraView;->firstTouchLength:F

    .line 127
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v0, Lk12/education/camaramodule/R$styleable;->JCameraView:[I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 130
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_iconSize:I

    .line 131
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/4 v0, 0x2

    const/high16 v2, 0x420c0000    # 35.0f

    .line 130
    invoke-static {v0, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->iconSize:I

    .line 132
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_iconMargin:I

    .line 133
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 v2, 0x41700000    # 15.0f

    .line 132
    invoke-static {v0, v2, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->iconMargin:I

    .line 134
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_iconSrc:I

    sget p3, Lk12/education/camaramodule/R$drawable;->mo_cameramodule_ic_camera:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->iconSrc:I

    .line 135
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_iconLeft:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->iconLeft:I

    .line 136
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_iconRight:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->iconRight:I

    .line 137
    sget p2, Lk12/education/camaramodule/R$styleable;->JCameraView_duration_max:I

    const/16 p3, 0x2710

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lk12/education/camaramodule/JCameraView;->duration:I

    .line 138
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 139
    invoke-direct {p0}, Lk12/education/camaramodule/JCameraView;->initData()V

    .line 140
    invoke-direct {p0}, Lk12/education/camaramodule/JCameraView;->initView()V

    return-void
.end method

.method static synthetic access$000(Lk12/education/camaramodule/JCameraView;)Landroid/widget/VideoView;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    return-object p0
.end method

.method static synthetic access$100(Lk12/education/camaramodule/JCameraView;)F
    .locals 0

    .line 47
    iget p0, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    return p0
.end method

.method static synthetic access$1000(Lk12/education/camaramodule/JCameraView;)Landroid/media/MediaPlayer;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$1002(Lk12/education/camaramodule/JCameraView;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 47
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p1
.end method

.method static synthetic access$1100(Lk12/education/camaramodule/JCameraView;FF)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lk12/education/camaramodule/JCameraView;->updateVideoViewSize(FF)V

    return-void
.end method

.method static synthetic access$200(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/state/CameraMachine;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    return-object p0
.end method

.method static synthetic access$300(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$400(Lk12/education/camaramodule/JCameraView;)Landroid/widget/ImageView;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$500(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/CaptureLayout;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    return-object p0
.end method

.method static synthetic access$600(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ErrorListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    return-object p0
.end method

.method static synthetic access$700(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ClickListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$800(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/listener/ClickListener;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-object p0
.end method

.method static synthetic access$900(Lk12/education/camaramodule/JCameraView;)Lk12/education/camaramodule/FoucsView;
    .locals 0

    .line 47
    iget-object p0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    return-object p0
.end method

.method private initData()V
    .locals 2

    .line 144
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lk12/education/camaramodule/util/ScreenUtils;->getScreenWidth(Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lk12/education/camaramodule/JCameraView;->layout_width:I

    int-to-float v0, v0

    const/high16 v1, 0x41800000    # 16.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 146
    iput v0, p0, Lk12/education/camaramodule/JCameraView;->zoomGradient:I

    .line 147
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "zoom = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lk12/education/camaramodule/JCameraView;->zoomGradient:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 148
    new-instance v0, Lk12/education/camaramodule/state/CameraMachine;

    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p0, p0}, Lk12/education/camaramodule/state/CameraMachine;-><init>(Landroid/content/Context;Lk12/education/camaramodule/view/CameraView;Lk12/education/camaramodule/CameraInterface$CameraOpenOverCallback;)V

    iput-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    return-void
.end method

.method private initView()V
    .locals 4

    const/4 v0, 0x0

    .line 152
    invoke-virtual {p0, v0}, Lk12/education/camaramodule/JCameraView;->setWillNotDraw(Z)V

    .line 153
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lk12/education/camaramodule/R$layout;->mo_cameramodule_camera_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 154
    sget v1, Lk12/education/camaramodule/R$id;->video_preview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/VideoView;

    iput-object v1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    .line 155
    sget v1, Lk12/education/camaramodule/R$id;->image_photo:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    .line 156
    sget v1, Lk12/education/camaramodule/R$id;->image_switch:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lk12/education/camaramodule/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    .line 157
    iget v2, p0, Lk12/education/camaramodule/JCameraView;->iconSrc:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    sget v1, Lk12/education/camaramodule/R$id;->image_flash:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    .line 159
    invoke-direct {p0}, Lk12/education/camaramodule/JCameraView;->setFlashRes()V

    .line 169
    sget v1, Lk12/education/camaramodule/R$id;->capture_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lk12/education/camaramodule/CaptureLayout;

    iput-object v1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    .line 170
    iget v2, p0, Lk12/education/camaramodule/JCameraView;->duration:I

    invoke-virtual {v1, v2}, Lk12/education/camaramodule/CaptureLayout;->setDuration(I)V

    .line 171
    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    iget v2, p0, Lk12/education/camaramodule/JCameraView;->iconLeft:I

    iget v3, p0, Lk12/education/camaramodule/JCameraView;->iconRight:I

    invoke-virtual {v1, v2, v3}, Lk12/education/camaramodule/CaptureLayout;->setIconSrc(II)V

    .line 172
    sget v1, Lk12/education/camaramodule/R$id;->fouce_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lk12/education/camaramodule/FoucsView;

    iput-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    .line 173
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 175
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    new-instance v1, Lk12/education/camaramodule/JCameraView$1;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$1;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    new-instance v1, Lk12/education/camaramodule/JCameraView$2;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$2;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureLayout;->setCaptureLisenter(Lk12/education/camaramodule/listener/CaptureListener;)V

    .line 229
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    new-instance v1, Lk12/education/camaramodule/JCameraView$3;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$3;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureLayout;->setTypeLisenter(Lk12/education/camaramodule/listener/TypeListener;)V

    .line 249
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    new-instance v1, Lk12/education/camaramodule/JCameraView$4;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$4;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureLayout;->setLeftClickListener(Lk12/education/camaramodule/listener/ClickListener;)V

    .line 257
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    new-instance v1, Lk12/education/camaramodule/JCameraView$5;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$5;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CaptureLayout;->setRightClickListener(Lk12/education/camaramodule/listener/ClickListener;)V

    return-void
.end method

.method private setFlashRes()V
    .locals 2

    .line 583
    iget v0, p0, Lk12/education/camaramodule/JCameraView;->type_flash:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 593
    :pswitch_0
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lk12/education/camaramodule/R$drawable;->mo_cameramodule_flash_off:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 594
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    const-string v1, "off"

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->flash(Ljava/lang/String;)V

    goto :goto_0

    .line 589
    :pswitch_1
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lk12/education/camaramodule/R$drawable;->mo_cameramodule_flash_on:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 590
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    const-string v1, "on"

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->flash(Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :pswitch_2
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    sget v1, Lk12/education/camaramodule/R$drawable;->mo_cameramodule_flash_auto:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 586
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->flash(Ljava/lang/String;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFocusViewWidthAnimation(FF)V
    .locals 2

    .line 370
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    new-instance v1, Lk12/education/camaramodule/JCameraView$7;

    invoke-direct {v1, p0}, Lk12/education/camaramodule/JCameraView$7;-><init>(Lk12/education/camaramodule/JCameraView;)V

    invoke-virtual {v0, p1, p2, v1}, Lk12/education/camaramodule/state/CameraMachine;->foucs(FFLk12/education/camaramodule/CameraInterface$FocusCallback;)V

    return-void
.end method

.method private updateVideoViewSize(FF)V
    .locals 1

    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    div-float/2addr p2, p1

    .line 381
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->getWidth()I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p2, p1

    float-to-int p1, p2

    .line 382
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 383
    iput p1, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 384
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1, p2}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cameraHasOpened()V
    .locals 3

    .line 279
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    invoke-virtual {v0, v1, v2}, Lk12/education/camaramodule/CameraInterface;->doStartPreview(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public confirmState(I)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->stopVideo()V

    .line 449
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    invoke-virtual {p1, v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    .line 451
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->jCameraLisenter:Lk12/education/camaramodule/listener/JCameraListener;

    if-eqz p1, :cond_2

    .line 452
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->videoUrl:Ljava/lang/String;

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->firstFrame:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0, v1}, Lk12/education/camaramodule/listener/JCameraListener;->recordSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 456
    :cond_1
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 457
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->jCameraLisenter:Lk12/education/camaramodule/listener/JCameraListener;

    if-eqz p1, :cond_2

    .line 458
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->captureBitmap:Landroid/graphics/Bitmap;

    invoke-interface {p1, v0}, Lk12/education/camaramodule/listener/JCameraListener;->captureSuccess(Landroid/graphics/Bitmap;)V

    .line 466
    :cond_2
    :goto_0
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->resetCaptureLayout()V

    return-void
.end method

.method public handlerFoucs(FF)Z
    .locals 3

    .line 546
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0}, Lk12/education/camaramodule/CaptureLayout;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    .line 549
    :cond_0
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/FoucsView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 551
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {p1}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result p1

    div-int/2addr p1, v1

    int-to-float p1, p1

    .line 553
    :cond_1
    iget v0, p0, Lk12/education/camaramodule/JCameraView;->layout_width:I

    iget-object v2, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v2}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 554
    iget p1, p0, Lk12/education/camaramodule/JCameraView;->layout_width:I

    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p1, v0

    int-to-float p1, p1

    .line 556
    :cond_2
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_3

    .line 557
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {p2}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result p2

    div-int/2addr p2, v1

    int-to-float p2, p2

    .line 559
    :cond_3
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0}, Lk12/education/camaramodule/CaptureLayout;->getTop()I

    move-result v0

    iget-object v2, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v2}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_4

    .line 560
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p2}, Lk12/education/camaramodule/CaptureLayout;->getTop()I

    move-result p2

    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v0

    div-int/2addr v0, v1

    sub-int/2addr p2, v0

    int-to-float p2, p2

    .line 562
    :cond_4
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v2

    div-int/2addr v2, v1

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/FoucsView;->setX(F)V

    .line 563
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {p1}, Lk12/education/camaramodule/FoucsView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v0, v0

    sub-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lk12/education/camaramodule/FoucsView;->setY(F)V

    .line 564
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    new-array p2, v1, [F

    fill-array-data p2, :array_0

    const-string v0, "scaleX"

    invoke-static {p1, v0, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 565
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    new-array v0, v1, [F

    fill-array-data v0, :array_1

    const-string v1, "scaleY"

    invoke-static {p2, v1, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    .line 566
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    const/4 v1, 0x7

    new-array v1, v1, [F

    fill-array-data v1, :array_2

    const-string v2, "alpha"

    invoke-static {v0, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 567
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 568
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    const-wide/16 p1, 0x190

    .line 569
    invoke-virtual {v1, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 570
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    const/4 p1, 0x1

    return p1

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f19999a    # 0.6f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
        0x3ecccccd    # 0.4f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 269
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 270
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/widget/VideoView;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    .line 271
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {p2}, Landroid/widget/VideoView;->getMeasuredHeight()I

    move-result p2

    int-to-float p2, p2

    .line 272
    iget v0, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 273
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    div-float/2addr v0, p1

    iput v0, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "JCameraView onPause"

    .line 293
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->stopVideo()V

    const/4 v0, 0x1

    .line 295
    invoke-virtual {p0, v0}, Lk12/education/camaramodule/JCameraView;->resetState(I)V

    .line 296
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CameraInterface;->isPreview(Z)V

    .line 297
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CameraInterface;->unregisterSensorManager(Landroid/content/Context;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    const-string v0, "JCameraView onResume"

    .line 284
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    const/4 v0, 0x4

    .line 285
    invoke-virtual {p0, v0}, Lk12/education/camaramodule/JCameraView;->resetState(I)V

    .line 286
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lk12/education/camaramodule/CameraInterface;->registerSensorManager(Landroid/content/Context;)V

    .line 287
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    iget-object v2, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    invoke-virtual {v0, v1, v2}, Lk12/education/camaramodule/CameraInterface;->setSwitchView(Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    .line 288
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v1}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget v2, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    invoke-virtual {v0, v1, v2}, Lk12/education/camaramodule/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 325
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 337
    iput-boolean v2, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    .line 339
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    .line 344
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 345
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v1, v4

    float-to-double v4, v1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 347
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-float/2addr v3, p1

    float-to-double v8, v3

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    double-to-float p1, v3

    .line 350
    iget-boolean v1, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    if-eqz v1, :cond_2

    .line 351
    iput p1, p0, Lk12/education/camaramodule/JCameraView;->firstTouchLength:F

    .line 352
    iput-boolean v0, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    .line 354
    :cond_2
    iget v0, p0, Lk12/education/camaramodule/JCameraView;->firstTouchLength:F

    sub-float v1, p1, v0

    float-to-int v1, v1

    iget v3, p0, Lk12/education/camaramodule/JCameraView;->zoomGradient:I

    div-int/2addr v1, v3

    if-eqz v1, :cond_6

    .line 355
    iput-boolean v2, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    .line 356
    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    sub-float/2addr p1, v0

    const/16 v0, 0x91

    invoke-virtual {v1, p1, v0}, Lk12/education/camaramodule/state/CameraMachine;->zoom(FI)V

    goto :goto_0

    .line 362
    :cond_3
    iput-boolean v2, p0, Lk12/education/camaramodule/JCameraView;->firstTouch:Z

    goto :goto_0

    .line 327
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v2, :cond_5

    .line 329
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    invoke-direct {p0, v0, v3}, Lk12/education/camaramodule/JCameraView;->setFocusViewWidthAnimation(FF)V

    .line 331
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ne p1, v1, :cond_6

    const-string p1, "CJT"

    const-string v0, "ACTION_DOWN = 2"

    .line 332
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_0
    return v2
.end method

.method public playVideo(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 485
    iput-object p2, p0, Lk12/education/camaramodule/JCameraView;->videoUrl:Ljava/lang/String;

    .line 486
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->firstFrame:Landroid/graphics/Bitmap;

    .line 487
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lk12/education/camaramodule/JCameraView$8;

    invoke-direct {v0, p0, p2}, Lk12/education/camaramodule/JCameraView$8;-><init>(Lk12/education/camaramodule/JCameraView;Ljava/lang/String;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 521
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public resetState(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v2, -0x1

    if-eq p1, v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 436
    :cond_0
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 424
    :cond_1
    invoke-virtual {p0}, Lk12/education/camaramodule/JCameraView;->stopVideo()V

    .line 426
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->videoUrl:Ljava/lang/String;

    invoke-static {p1}, Lk12/education/camaramodule/util/FileUtil;->deleteFile(Ljava/lang/String;)Z

    .line 427
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/VideoView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 428
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->machine:Lk12/education/camaramodule/state/CameraMachine;

    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mVideoView:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget v1, p0, Lk12/education/camaramodule/JCameraView;->screenProp:F

    invoke-virtual {p1, v0, v1}, Lk12/education/camaramodule/state/CameraMachine;->start(Landroid/view/SurfaceHolder;F)V

    goto :goto_0

    .line 431
    :cond_2
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 439
    :goto_0
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mSwitchCamera:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 440
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mFlashLamp:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->resetCaptureLayout()V

    return-void
.end method

.method public setErrorLisenter(Lk12/education/camaramodule/listener/ErrorListener;)V
    .locals 1

    .line 406
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->errorLisenter:Lk12/education/camaramodule/listener/ErrorListener;

    .line 407
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CameraInterface;->setErrorLinsenter(Lk12/education/camaramodule/listener/ErrorListener;)V

    return-void
.end method

.method public setFeatures(I)V
    .locals 1

    .line 412
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CaptureLayout;->setButtonFeatures(I)V

    return-void
.end method

.method public setJCameraLisenter(Lk12/education/camaramodule/listener/JCameraListener;)V
    .locals 0

    .line 398
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->jCameraLisenter:Lk12/education/camaramodule/listener/JCameraListener;

    return-void
.end method

.method public setLeftClickListener(Lk12/education/camaramodule/listener/ClickListener;)V
    .locals 0

    .line 575
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->leftClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-void
.end method

.method public setMediaQuality(I)V
    .locals 1

    .line 417
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CameraInterface;->setMediaQuality(I)V

    return-void
.end method

.method public setRightClickListener(Lk12/education/camaramodule/listener/ClickListener;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->rightClickListener:Lk12/education/camaramodule/listener/ClickListener;

    return-void
.end method

.method public setSaveVideoPath(Ljava/lang/String;)V
    .locals 1

    .line 393
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CameraInterface;->setSaveVideoPath(Ljava/lang/String;)V

    return-void
.end method

.method public setTip(Ljava/lang/String;)V
    .locals 1

    .line 535
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CaptureLayout;->setTip(Ljava/lang/String;)V

    return-void
.end method

.method public setVideoTime(I)V
    .locals 1

    .line 602
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {v0, p1}, Lk12/education/camaramodule/CaptureLayout;->setDuration(I)V

    return-void
.end method

.method public showPicture(Landroid/graphics/Bitmap;Z)V
    .locals 1

    if-eqz p2, :cond_0

    .line 472
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    .line 474
    :cond_0
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 476
    :goto_0
    iput-object p1, p0, Lk12/education/camaramodule/JCameraView;->captureBitmap:Landroid/graphics/Bitmap;

    .line 477
    iget-object p2, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 478
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mPhoto:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startAlphaAnimation()V

    .line 480
    iget-object p1, p0, Lk12/education/camaramodule/JCameraView;->mCaptureLayout:Lk12/education/camaramodule/CaptureLayout;

    invoke-virtual {p1}, Lk12/education/camaramodule/CaptureLayout;->startTypeBtnAnimator()V

    return-void
.end method

.method public startPreviewCallback()V
    .locals 2

    const-string v0, "startPreviewCallback"

    .line 540
    invoke-static {v0}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 541
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v0}, Lk12/education/camaramodule/FoucsView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lk12/education/camaramodule/JCameraView;->mFoucsView:Lk12/education/camaramodule/FoucsView;

    invoke-virtual {v1}, Lk12/education/camaramodule/FoucsView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lk12/education/camaramodule/JCameraView;->handlerFoucs(FF)Z

    return-void
.end method

.method public stopVideo()V
    .locals 1

    .line 526
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 528
    iget-object v0, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 529
    iput-object v0, p0, Lk12/education/camaramodule/JCameraView;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "JCameraView SurfaceCreated"

    .line 303
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 304
    new-instance p1, Lk12/education/camaramodule/JCameraView$6;

    invoke-direct {p1, p0}, Lk12/education/camaramodule/JCameraView$6;-><init>(Lk12/education/camaramodule/JCameraView;)V

    .line 309
    invoke-virtual {p1}, Lk12/education/camaramodule/JCameraView$6;->start()V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    const-string p1, "JCameraView SurfaceDestroyed"

    .line 318
    invoke-static {p1}, Lk12/education/camaramodule/util/LogUtil;->i(Ljava/lang/String;)V

    .line 319
    invoke-static {}, Lk12/education/camaramodule/CameraInterface;->getInstance()Lk12/education/camaramodule/CameraInterface;

    move-result-object p1

    invoke-virtual {p1}, Lk12/education/camaramodule/CameraInterface;->doDestroyCamera()V

    return-void
.end method
