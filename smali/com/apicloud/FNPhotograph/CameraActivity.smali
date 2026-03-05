.class public Lcom/apicloud/FNPhotograph/CameraActivity;
.super Landroid/app/Activity;
.source "CameraActivity.java"


# static fields
.field public static DCIM:Ljava/lang/String;

.field private static mContext:Landroid/content/Context;


# instance fields
.field private album:Z

.field private cameraMainLayout:Landroid/view/ViewGroup;

.field private cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

.field private currentCameraId:I

.field private imagePreView:Landroid/view/ViewGroup;

.field private isError:Z

.field private isSettingOpen:Z

.field private savePath:Ljava/lang/String;

.field takePhotoBtn:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/DCIM/Camera/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/FNPhotograph/CameraActivity;->DCIM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isError:Z

    .line 44
    iput v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->currentCameraId:I

    .line 341
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isSettingOpen:Z

    const/4 v0, 0x0

    .line 538
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    return-void
.end method

.method static synthetic access$002(Lcom/apicloud/FNPhotograph/CameraActivity;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isError:Z

    return p1
.end method

.method static synthetic access$100(Lcom/apicloud/FNPhotograph/CameraActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/FNPhotograph/CameraActivity;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->album:Z

    return p0
.end method

.method static synthetic access$300(Lcom/apicloud/FNPhotograph/CameraActivity;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->currentCameraId:I

    return p0
.end method

.method static synthetic access$302(Lcom/apicloud/FNPhotograph/CameraActivity;I)I
    .locals 0

    .line 39
    iput p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->currentCameraId:I

    return p1
.end method

.method static synthetic access$400(Lcom/apicloud/FNPhotograph/CameraActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->openSystemGallery()V

    return-void
.end method

.method static synthetic access$500(Lcom/apicloud/FNPhotograph/CameraActivity;)Landroid/view/ViewGroup;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public static finishActivity()V
    .locals 1

    .line 717
    sget-object v0, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 718
    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;
    .locals 5

    const-string v0, "fnphotograph_camera_footer_layout"

    .line 254
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 255
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 258
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 261
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 262
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 263
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "takePhotoBtn"

    .line 265
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 267
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->takePhotoBtn:Landroid/widget/ImageView;

    .line 268
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$5;

    invoke-direct {v2, p0, p2}, Lcom/apicloud/FNPhotograph/CameraActivity$5;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string p1, "switchCameraBtn"

    .line 277
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 278
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 279
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$6;

    invoke-direct {v2, p0, p2}, Lcom/apicloud/FNPhotograph/CameraActivity$6;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 291
    invoke-virtual {p2}, Lcom/apicloud/FNPhotograph/CameraPreview;->getFrontCameraId()I

    move-result p2

    if-gez p2, :cond_0

    const/4 p2, 0x1

    .line 292
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    const-string p1, "thumbnailImage"

    .line 295
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 297
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 299
    invoke-static {}, Lcom/apicloud/FNPhotograph/Storage;->getLatestImage()Ljava/io/File;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 302
    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 304
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V

    .line 306
    new-instance p2, Lcom/apicloud/FNPhotograph/CameraActivity$7;

    invoke-direct {p2, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$7;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method private initHeaderLayout(Landroid/view/ViewGroup;)V
    .locals 4

    const-string v0, "fnphotograph_camera_header_layout"

    .line 348
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    .line 349
    invoke-static {p0, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    .line 350
    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 352
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xa

    .line 355
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 356
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 357
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const-string p1, "flashLightSetting"

    .line 361
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 363
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v1, "flashModeBtn"

    .line 366
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 368
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 369
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$8;

    invoke-direct {v2, p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity$8;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 376
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-virtual {p0, v2, v0, p1, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V

    const-string p1, "cancelBtn"

    .line 379
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result p1

    .line 380
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 381
    new-instance v1, Lcom/apicloud/FNPhotograph/CameraActivity$9;

    invoke-direct {v1, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$9;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 390
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->getStatusBarHeight()I

    move-result p1

    .line 392
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 393
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 394
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;
    .locals 4

    .line 210
    new-instance v0, Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/high16 v1, -0x1000000

    .line 212
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 214
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v2, 0xd

    .line 217
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 218
    invoke-virtual {p1, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 221
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 225
    new-instance v1, Lcom/apicloud/FNPhotograph/CameraActivity$4;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity$4;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;)V

    invoke-virtual {p1, v1}, Lcom/apicloud/FNPhotograph/CameraPreview;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    new-instance v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;

    invoke-direct {v1}, Lcom/apicloud/FNPhotograph/FocusBoxParams;-><init>()V

    const-string v3, "#F9F900"

    .line 233
    iput-object v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->color:Ljava/lang/String;

    const/16 v3, 0x46

    .line 234
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMaxSize:I

    const/16 v3, 0x32

    .line 235
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->focusBoxMinSize:I

    const/4 v3, 0x2

    .line 236
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    iput v3, v1, Lcom/apicloud/FNPhotograph/FocusBoxParams;->strokeWidth:F

    .line 238
    new-instance v3, Lcom/apicloud/FNPhotograph/FocusRender;

    invoke-direct {v3, p0, p1, v1}, Lcom/apicloud/FNPhotograph/FocusRender;-><init>(Landroid/content/Context;Lcom/apicloud/FNPhotograph/CameraPreview;Lcom/apicloud/FNPhotograph/FocusBoxParams;)V

    .line 240
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 242
    invoke-virtual {v0, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private openSystemGallery()V
    .locals 2

    .line 682
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "image/*"

    .line 683
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.action.GET_CONTENT"

    .line 684
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 685
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public animEnterOrQuit(Landroid/view/View;)V
    .locals 9

    .line 425
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isSettingOpen:Z

    const-wide/16 v1, 0x12c

    const/16 v3, 0x28

    const/4 v4, 0x0

    const/4 v5, 0x2

    const-string v6, "translationX"

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    new-array v0, v5, [F

    .line 427
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v8

    aput v4, v0, v7

    .line 426
    invoke-static {p1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 429
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 430
    new-instance v1, Lcom/apicloud/FNPhotograph/CameraActivity$10;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity$10;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 436
    iput-boolean v8, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isSettingOpen:Z

    goto :goto_0

    :cond_0
    new-array v0, v5, [F

    aput v4, v0, v8

    .line 439
    invoke-static {v3}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v3

    int-to-float v3, v3

    aput v3, v0, v7

    .line 438
    invoke-static {p1, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 440
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 441
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 442
    invoke-virtual {p1, v8}, Landroid/view/View;->setVisibility(I)V

    .line 443
    iput-boolean v7, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isSettingOpen:Z

    :goto_0
    return-void
.end method

.method public callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 196
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 198
    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 199
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "imagePath"

    .line 200
    invoke-virtual {v0, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 203
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p2, 0x0

    .line 205
    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public clean()V
    .locals 1

    .line 689
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    if-eqz v0, :cond_0

    .line 690
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->stop()V

    const/4 v0, 0x0

    .line 691
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 692
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    :cond_0
    return-void
.end method

.method public copyImageToFs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 188
    invoke-static {p1, p2}, Lcom/apicloud/FNPhotograph/FileUtils;->copy(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public flashModeSet(Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/view/View;Landroid/view/View;Landroid/widget/ImageView;)V
    .locals 3

    const-string v0, "flashOpen"

    .line 451
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    const-string v1, "flashClose"

    .line 452
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    const-string v2, "flashAuto"

    .line 453
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 455
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 456
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 457
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 459
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$11;

    invoke-direct {v2, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/CameraActivity$11;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 470
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraActivity$12;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/CameraActivity$12;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 481
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraActivity$13;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/apicloud/FNPhotograph/CameraActivity$13;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Lcom/apicloud/FNPhotograph/CameraPreview;Landroid/widget/ImageView;Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getStatusBarHeight()I
    .locals 4

    .line 414
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "status_bar_height"

    const-string v2, "dimen"

    const-string v3, "android"

    .line 415
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    .line 417
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 3

    const-string v0, "okBtn"

    .line 637
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 638
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const-string v1, "repeatBtn"

    .line 640
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 642
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const-string v2, "cancelBtn"

    .line 644
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 645
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 647
    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$15;

    invoke-direct {v2, p0, p2}, Lcom/apicloud/FNPhotograph/CameraActivity$15;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 662
    new-instance p2, Lcom/apicloud/FNPhotograph/CameraActivity$16;

    invoke-direct {p2, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$16;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 671
    new-instance p2, Lcom/apicloud/FNPhotograph/CameraActivity$17;

    invoke-direct {p2, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$17;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const v0, 0x1020002

    .line 707
    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 708
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 709
    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    goto :goto_0

    .line 711
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 51
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 53
    sput-object p0, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    .line 55
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    .line 57
    invoke-virtual {p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity;->requestWindowFeature(I)Z

    .line 59
    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    sget-object v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "path"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->savePath:Ljava/lang/String;

    .line 60
    sget-object v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    const-string v2, "album"

    invoke-virtual {v0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->album:Z

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v2}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Camera"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->savePath:Ljava/lang/String;

    .line 67
    :cond_0
    new-instance v0, Lcom/apicloud/FNPhotograph/CameraActivity$1;

    invoke-direct {v0, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$1;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    invoke-static {v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setOnCameraFailedListener(Lcom/apicloud/FNPhotograph/OnCameraOpenFailedListener;)V

    .line 76
    new-instance v0, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    const/4 v4, 0x0

    sget-object v5, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->savePath:Ljava/lang/String;

    move-object v2, v0

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;-><init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    .line 78
    iget-boolean v2, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isError:Z

    if-eqz v2, :cond_1

    .line 79
    iput-boolean v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->isError:Z

    return-void

    .line 83
    :cond_1
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->getBackCameraId()I

    move-result v0

    iput v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->currentCameraId:I

    .line 84
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 85
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, v0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;

    move-result-object v0

    .line 86
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v1}, Lcom/apicloud/FNPhotograph/CameraActivity;->initHeaderLayout(Landroid/view/ViewGroup;)V

    .line 88
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$2;

    invoke-direct {v2, p0}, Lcom/apicloud/FNPhotograph/CameraActivity$2;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;)V

    const-wide/16 v3, 0x12c

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    new-instance v2, Lcom/apicloud/FNPhotograph/CameraActivity$3;

    invoke-direct {v2, p0, v0}, Lcom/apicloud/FNPhotograph/CameraActivity$3;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCameraEventListener(Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;)V

    .line 165
    sget-object v1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "isShowAlbum"

    invoke-virtual {v1, v2, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, "thumbnailImage"

    .line 167
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez p1, :cond_2

    const/16 p1, 0x8

    .line 171
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 173
    :cond_2
    sget-object p1, Lcom/apicloud/FNPhotograph/FNPhotograph;->uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v0, 0x0

    const-string v1, "show"

    invoke-virtual {p0, p1, v1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 698
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const/4 v0, 0x0

    .line 699
    sput-object v0, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    .line 700
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->clean()V

    const/4 v0, 0x0

    .line 701
    sput-boolean v0, Lcom/apicloud/FNPhotograph/FNPhotograph;->isOpen:Z

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->requestLayout()V

    .line 181
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public openImagePreView(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 5

    .line 589
    sget-object v0, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 593
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "fnphotograph_imagepreview_layout"

    .line 600
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 601
    sget-object v1, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    if-nez v0, :cond_2

    return-void

    :cond_2
    const/4 v0, -0x1

    .line 608
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 610
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "previewImage"

    .line 612
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 613
    iget-object v2, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    .line 614
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p2, :cond_3

    .line 617
    invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 620
    :cond_3
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge p2, v2, :cond_4

    .line 621
    new-instance p2, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;

    sget-object v2, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    new-array v0, v4, [Ljava/lang/String;

    aput-object p1, v0, v3

    invoke-virtual {p2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 623
    :cond_4
    new-instance p2, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;

    sget-object v2, Lcom/apicloud/FNPhotograph/CameraActivity;->mContext:Landroid/content/Context;

    invoke-direct {p2, v2, v0}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;-><init>(Landroid/content/Context;Landroid/widget/ImageView;)V

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v4, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-virtual {p2, v0, v2}, Lcom/apicloud/FNPhotograph/LoadBmpAsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :goto_0
    const p2, 0x1020002

    .line 627
    invoke-virtual {p0, p2}, Lcom/apicloud/FNPhotograph/CameraActivity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 628
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {p2, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 631
    iget-object p2, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreView:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/FNPhotograph/CameraActivity;->imagePreviewPerformClick(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method public switchCamera(I)V
    .locals 7

    .line 495
    invoke-virtual {p0}, Lcom/apicloud/FNPhotograph/CameraActivity;->clean()V

    .line 496
    new-instance v6, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    sget-object v3, Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;->FitToParent:Lcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;

    iget-object v5, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->savePath:Ljava/lang/String;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;-><init>(Landroid/app/Activity;ILcom/apicloud/FNPhotograph/CameraPreview$LayoutMode;ZLjava/lang/String;)V

    iput-object v6, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    .line 498
    invoke-direct {p0, v6}, Lcom/apicloud/FNPhotograph/CameraActivity;->initMainLayout(Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/ViewGroup;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    .line 499
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->initFooterLayout(Landroid/view/ViewGroup;Lcom/apicloud/FNPhotograph/CameraPreview;)Landroid/view/View;

    move-result-object p1

    .line 500
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-direct {p0, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->initHeaderLayout(Landroid/view/ViewGroup;)V

    .line 501
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraMainLayout:Landroid/view/ViewGroup;

    invoke-virtual {p0, v0}, Lcom/apicloud/FNPhotograph/CameraActivity;->setContentView(Landroid/view/View;)V

    .line 502
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/CameraActivity;->cameraView:Lcom/apicloud/FNPhotograph/ResizableCameraPreview;

    new-instance v1, Lcom/apicloud/FNPhotograph/CameraActivity$14;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/FNPhotograph/CameraActivity$14;-><init>(Lcom/apicloud/FNPhotograph/CameraActivity;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/FNPhotograph/ResizableCameraPreview;->setCameraEventListener(Lcom/apicloud/FNPhotograph/CameraPreview$CameraEventListener;)V

    return-void
.end method

.method public updateThumbailIcon(Landroid/widget/ImageView;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 324
    :cond_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x4

    .line 325
    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 327
    :try_start_0
    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p2

    const/16 v0, 0x64

    .line 329
    invoke-static {p2, v0, v0}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 333
    invoke-static {}, Lcom/apicloud/FNPhotograph/Storage;->getLatestImage()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 332
    invoke-static {v0}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    .line 334
    invoke-static {v0, p2}, Lcom/apicloud/FNPhotograph/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 335
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 337
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
