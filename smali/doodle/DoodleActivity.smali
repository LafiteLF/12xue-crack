.class public Ldoodle/DoodleActivity;
.super Landroid/app/Activity;
.source "DoodleActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/DoodleActivity$DoodelViewWrapper;
    }
.end annotation


# static fields
.field public static final DEFAULT_BITMAP_SIZE:I = 0x50

.field public static final DEFAULT_COPY_SIZE:I = 0x14

.field public static final DEFAULT_TEXT_SIZE:I = 0x11

.field public static final KEY_IMAGE_PATH:Ljava/lang/String; = "key_image_path"

.field public static final KEY_PARAMS:Ljava/lang/String; = "key_doodle_params"

.field public static final RESULT_ERROR:I = -0x6f

.field public static final TAG:Ljava/lang/String; = "Doodle"


# instance fields
.field private mBtnColor:Landroid/view/View;

.field private mBtnHidePanel:Landroid/view/View;

.field private mDoodle:Ldoodle/core/IDoodle;

.field private mDoodleParams:Ldoodle/DoodleParams;

.field private mDoodleView:Ldoodle/DoodleView;

.field private mEditSizeSeekBar:Landroid/widget/SeekBar;

.field private mFrameLayout:Landroid/widget/FrameLayout;

.field private mHideDelayRunnable:Ljava/lang/Runnable;

.field private mImagePath:Ljava/lang/String;

.field private mPaintSizeView:Landroid/widget/TextView;

.field private mPenSizeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ldoodle/core/IDoodlePen;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateAnimator:Landroid/animation/ValueAnimator;

.field private mSelectedTextEditContainer:Landroid/view/View;

.field private mSettingsPanel:Landroid/view/View;

.field private mShowDelayRunnable:Ljava/lang/Runnable;

.field private mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

.field private mViewHideAnimation:Landroid/view/animation/AlphaAnimation;

.field private mViewShowAnimation:Landroid/view/animation/AlphaAnimation;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldoodle/DoodleActivity;->mPenSizeMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Ldoodle/DoodleActivity;)Ldoodle/DoodleParams;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    return-object p0
.end method

.method static synthetic access$100(Ldoodle/DoodleActivity;)Ldoodle/DoodleView;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    return-object p0
.end method

.method static synthetic access$1000(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mHideDelayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1200(Ldoodle/DoodleActivity;)Ljava/lang/Runnable;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mShowDelayRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$1300(Ldoodle/DoodleActivity;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ldoodle/DoodleActivity;->hideView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1400(Ldoodle/DoodleActivity;Landroid/view/View;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Ldoodle/DoodleActivity;->showView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$1500(Ldoodle/DoodleActivity;)Landroid/widget/TextView;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mPaintSizeView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$1600(Ldoodle/DoodleActivity;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mBtnColor:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Ldoodle/DoodleActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mEditSizeSeekBar:Landroid/widget/SeekBar;

    return-object p0
.end method

.method static synthetic access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    return-object p0
.end method

.method static synthetic access$400(Ldoodle/DoodleActivity;)Ljava/util/Map;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mPenSizeMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Ldoodle/DoodleActivity;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mSelectedTextEditContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$600(Ldoodle/DoodleActivity;Ldoodle/DoodleText;FF)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ldoodle/DoodleActivity;->createDoodleText(Ldoodle/DoodleText;FF)V

    return-void
.end method

.method static synthetic access$700(Ldoodle/DoodleActivity;Ldoodle/DoodleBitmap;FF)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2, p3}, Ldoodle/DoodleActivity;->createDoodleBitmap(Ldoodle/DoodleBitmap;FF)V

    return-void
.end method

.method static synthetic access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    return-object p0
.end method

.method static synthetic access$900(Ldoodle/DoodleActivity;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Ldoodle/DoodleActivity;->mBtnHidePanel:Landroid/view/View;

    return-object p0
.end method

.method private createDoodleBitmap(Ldoodle/DoodleBitmap;FF)V
    .locals 1

    .line 321
    new-instance v0, Ldoodle/DoodleActivity$4;

    invoke-direct {v0, p0, p1, p2, p3}, Ldoodle/DoodleActivity$4;-><init>(Ldoodle/DoodleActivity;Ldoodle/DoodleBitmap;FF)V

    invoke-static {p0, v0}, Ldoodle/dialog/DialogController;->showSelectImageDialog(Landroid/app/Activity;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)Landroid/app/Dialog;

    return-void
.end method

.method private createDoodleText(Ldoodle/DoodleText;FF)V
    .locals 3

    .line 293
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    move-object v1, v0

    goto :goto_0

    .line 297
    :cond_1
    invoke-virtual {p1}, Ldoodle/DoodleText;->getText()Ljava/lang/String;

    move-result-object v1

    :goto_0
    new-instance v2, Ldoodle/DoodleActivity$3;

    invoke-direct {v2, p0, p1, p2, p3}, Ldoodle/DoodleActivity$3;-><init>(Ldoodle/DoodleActivity;Ldoodle/DoodleText;FF)V

    invoke-static {p0, v1, v2, v0}, Ldoodle/dialog/DialogController;->showInputTextDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    if-nez p1, :cond_2

    .line 315
    iget-object p1, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    iget-object p2, p0, Ldoodle/DoodleActivity;->mHideDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method private hideView(Landroid/view/View;)V
    .locals 1

    .line 626
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 629
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 630
    iget-object v0, p0, Ldoodle/DoodleActivity;->mViewHideAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/16 v0, 0x8

    .line 631
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private initView()V
    .locals 5

    .line 346
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->btn_undo:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleActivity$5;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$5;-><init>(Ldoodle/DoodleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 364
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_edit_container:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleActivity;->mSelectedTextEditContainer:Landroid/view/View;

    .line 366
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_panel:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    .line 368
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_hide_panel:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleActivity;->mBtnHidePanel:Landroid/view/View;

    .line 370
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->paint_size_text:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ldoodle/DoodleActivity;->mPaintSizeView:Landroid/widget/TextView;

    .line 372
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->btn_set_color:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ldoodle/DoodleActivity;->mBtnColor:Landroid/view/View;

    .line 373
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_seekbar_size:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Ldoodle/DoodleActivity;->mEditSizeSeekBar:Landroid/widget/SeekBar;

    .line 374
    new-instance v1, Ldoodle/DoodleActivity$6;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$6;-><init>(Ldoodle/DoodleActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 399
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    new-instance v1, Ldoodle/DoodleActivity$7;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$7;-><init>(Ldoodle/DoodleActivity;)V

    invoke-virtual {v0, v1}, Ldoodle/DoodleView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 428
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_txt_title:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleActivity$8;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$8;-><init>(Ldoodle/DoodleActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 446
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Ldoodle/DoodleActivity;->mViewShowAnimation:Landroid/view/animation/AlphaAnimation;

    const-wide/16 v3, 0x96

    .line 447
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 448
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iput-object v0, p0, Ldoodle/DoodleActivity;->mViewHideAnimation:Landroid/view/animation/AlphaAnimation;

    .line 449
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 450
    new-instance v0, Ldoodle/DoodleActivity$9;

    invoke-direct {v0, p0}, Ldoodle/DoodleActivity$9;-><init>(Ldoodle/DoodleActivity;)V

    iput-object v0, p0, Ldoodle/DoodleActivity;->mHideDelayRunnable:Ljava/lang/Runnable;

    .line 456
    new-instance v0, Ldoodle/DoodleActivity$10;

    invoke-direct {v0, p0}, Ldoodle/DoodleActivity$10;-><init>(Ldoodle/DoodleActivity;)V

    iput-object v0, p0, Ldoodle/DoodleActivity;->mShowDelayRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private showView(Landroid/view/View;)V
    .locals 1

    .line 616
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 620
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 621
    iget-object v0, p0, Ldoodle/DoodleActivity;->mViewShowAnimation:Landroid/view/animation/AlphaAnimation;

    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x0

    .line 622
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ldoodle/DoodleParams;I)V
    .locals 2

    .line 72
    new-instance v0, Landroid/content/Intent;

    const-class v1, Ldoodle/DoodleActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "key_doodle_params"

    .line 73
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    invoke-virtual {p0, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/String;I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 100
    new-instance v0, Ldoodle/DoodleParams;

    invoke-direct {v0}, Ldoodle/DoodleParams;-><init>()V

    .line 101
    iput-object p1, v0, Ldoodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 102
    invoke-static {p0, v0, p2}, Ldoodle/DoodleActivity;->startActivityForResult(Landroid/app/Activity;Ldoodle/DoodleParams;I)V

    return-void
.end method

.method public static startActivityForResult(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    new-instance v0, Ldoodle/DoodleParams;

    invoke-direct {v0}, Ldoodle/DoodleParams;-><init>()V

    .line 89
    iput-object p1, v0, Ldoodle/DoodleParams;->mImagePath:Ljava/lang/String;

    .line 90
    iput-object p2, v0, Ldoodle/DoodleParams;->mSavePath:Ljava/lang/String;

    .line 91
    iput-boolean p3, v0, Ldoodle/DoodleParams;->mSavePathIsDir:Z

    .line 92
    invoke-static {p0, v0, p4}, Ldoodle/DoodleActivity;->startActivityForResult(Landroid/app/Activity;Ldoodle/DoodleParams;I)V

    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 612
    sget v0, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_back:I

    invoke-virtual {p0, v0}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->performClick()Z

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 466
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_hand:I

    if-ne v0, v1, :cond_0

    .line 467
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodlePen;->BRUSH:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    goto/16 :goto_3

    .line 468
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_copy:I

    if-ne v0, v1, :cond_1

    .line 469
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodlePen;->COPY:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    goto/16 :goto_3

    .line 470
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_eraser:I

    if-ne v0, v1, :cond_2

    .line 471
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodlePen;->ERASER:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    goto/16 :goto_3

    .line 472
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_text:I

    if-ne v0, v1, :cond_3

    .line 473
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodlePen;->TEXT:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    goto/16 :goto_3

    .line 474
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_pen_bitmap:I

    if-ne v0, v1, :cond_4

    .line 475
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodlePen;->BITMAP:Ldoodle/DoodlePen;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setPen(Ldoodle/core/IDoodlePen;)V

    goto/16 :goto_3

    .line 476
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_brush_edit:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_5

    .line 477
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEditMode()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->setEditMode(Z)V

    goto/16 :goto_3

    .line 478
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_undo:I

    if-ne v0, v1, :cond_6

    .line 479
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->undo()Z

    goto/16 :goto_3

    .line 480
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_redo:I

    if-ne v0, v1, :cond_7

    .line 481
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->redo()Z

    goto/16 :goto_3

    .line 482
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_zoomer:I

    if-ne v0, v1, :cond_8

    .line 483
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {p1}, Ldoodle/DoodleView;->isEnableZoomer()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Ldoodle/DoodleView;->enableZoomer(Z)V

    goto/16 :goto_3

    .line 484
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_set_color_container:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v1, :cond_e

    .line 486
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object p1

    instance-of p1, p1, Ldoodle/DoodleColor;

    if-eqz p1, :cond_9

    .line 487
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object p1

    move-object v4, p1

    check-cast v4, Ldoodle/DoodleColor;

    :cond_9
    if-nez v4, :cond_a

    return-void

    .line 492
    :cond_a
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 493
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleParams$DialogType;->COLOR_PICKER:Ldoodle/DoodleParams$DialogType;

    invoke-interface {p1, p0, v0, v1}, Ldoodle/DoodleParams$DialogInterceptor;->onShow(Landroid/app/Activity;Ldoodle/core/IDoodle;Ldoodle/DoodleParams$DialogType;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 494
    :cond_b
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object p1

    iget p1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_c

    goto :goto_0

    :cond_c
    move v2, v3

    :goto_0
    if-eqz v2, :cond_d

    const p1, 0x1030011

    goto :goto_1

    :cond_d
    const p1, 0x1030010

    .line 501
    :goto_1
    new-instance v0, Ldoodle/dialog/ColorPickerDialog;

    new-instance v1, Ldoodle/DoodleActivity$11;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$11;-><init>(Ldoodle/DoodleActivity;)V

    invoke-direct {v0, p0, v1, p1}, Ldoodle/dialog/ColorPickerDialog;-><init>(Landroid/content/Context;Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;I)V

    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    iget-object v1, p0, Ldoodle/DoodleActivity;->mBtnColor:Landroid/view/View;

    .line 530
    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {v2}, Ldoodle/DoodleView;->getWidth()I

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {v3}, Ldoodle/DoodleView;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Ldoodle/dialog/ColorPickerDialog;->show(Ldoodle/core/IDoodle;Landroid/graphics/drawable/Drawable;I)V

    goto/16 :goto_3

    .line 532
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_hide_panel:I

    if-ne v0, v1, :cond_10

    .line 533
    iget-object v0, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    iget-object v1, p0, Ldoodle/DoodleActivity;->mHideDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 534
    iget-object v0, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    iget-object v1, p0, Ldoodle/DoodleActivity;->mShowDelayRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 535
    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result v0

    xor-int/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 536
    iget-object p1, p0, Ldoodle/DoodleActivity;->mBtnHidePanel:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isSelected()Z

    move-result p1

    if-nez p1, :cond_f

    .line 537
    iget-object p1, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    invoke-direct {p0, p1}, Ldoodle/DoodleActivity;->showView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 539
    :cond_f
    iget-object p1, p0, Ldoodle/DoodleActivity;->mSettingsPanel:Landroid/view/View;

    invoke-direct {p0, p1}, Ldoodle/DoodleActivity;->hideView(Landroid/view/View;)V

    goto/16 :goto_3

    .line 541
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_finish:I

    if-ne v0, v1, :cond_11

    .line 542
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->save()V

    goto/16 :goto_3

    .line 543
    :cond_11
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_back:I

    if-ne v0, v1, :cond_15

    .line 544
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getAllItem()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getAllItem()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_12

    goto :goto_2

    .line 548
    :cond_12
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 549
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v1, Ldoodle/DoodleParams$DialogType;->SAVE:Ldoodle/DoodleParams$DialogType;

    invoke-interface {p1, p0, v0, v1}, Ldoodle/DoodleParams$DialogInterceptor;->onShow(Landroid/app/Activity;Ldoodle/core/IDoodle;Ldoodle/DoodleParams$DialogType;)Z

    move-result p1

    if-nez p1, :cond_24

    .line 550
    :cond_13
    sget p1, Lcom/kukugtu/moduleplotting/R$string;->doodle_saving_picture:I

    invoke-virtual {p0, p1}, Ldoodle/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ldoodle/DoodleActivity$12;

    invoke-direct {v0, p0}, Ldoodle/DoodleActivity$12;-><init>(Ldoodle/DoodleActivity;)V

    new-instance v1, Ldoodle/DoodleActivity$13;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$13;-><init>(Ldoodle/DoodleActivity;)V

    invoke-static {p0, p1, v4, v0, v1}, Ldoodle/dialog/DialogController;->showEnterCancelDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    goto/16 :goto_3

    .line 545
    :cond_14
    :goto_2
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->finish()V

    return-void

    .line 562
    :cond_15
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_btn_rotate:I

    if-ne v0, v1, :cond_18

    .line 564
    iget-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    if-nez p1, :cond_16

    .line 565
    new-instance p1, Landroid/animation/ValueAnimator;

    invoke-direct {p1}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    .line 566
    new-instance v0, Ldoodle/DoodleActivity$14;

    invoke-direct {v0, p0}, Ldoodle/DoodleActivity$14;-><init>(Ldoodle/DoodleActivity;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 573
    iget-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 575
    :cond_16
    iget-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_17

    return-void

    .line 578
    :cond_17
    iget-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getDoodleRotation()I

    move-result v1

    aput v1, v0, v3

    iget-object v1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    invoke-interface {v1}, Ldoodle/core/IDoodle;->getDoodleRotation()I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    aput v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 579
    iget-object p1, p0, Ldoodle/DoodleActivity;->mRotateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto/16 :goto_3

    .line 580
    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_edit:I

    if-ne v0, v1, :cond_1a

    .line 581
    iget-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Ldoodle/DoodleText;

    const/high16 v0, -0x40800000    # -1.0f

    if-eqz p1, :cond_19

    .line 582
    iget-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Ldoodle/DoodleText;

    invoke-direct {p0, p1, v0, v0}, Ldoodle/DoodleActivity;->createDoodleText(Ldoodle/DoodleText;FF)V

    goto/16 :goto_3

    .line 583
    :cond_19
    iget-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    instance-of p1, p1, Ldoodle/DoodleBitmap;

    if-eqz p1, :cond_24

    .line 584
    iget-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    check-cast p1, Ldoodle/DoodleBitmap;

    invoke-direct {p0, p1, v0, v0}, Ldoodle/DoodleActivity;->createDoodleBitmap(Ldoodle/DoodleBitmap;FF)V

    goto/16 :goto_3

    .line 586
    :cond_1a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_remove:I

    if-ne v0, v1, :cond_1b

    .line 587
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->removeItem(Ldoodle/core/IDoodleItem;)V

    .line 588
    iget-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {p1, v4}, Ldoodle/DoodleOnTouchGestureListener;->setSelectedItem(Ldoodle/core/IDoodleSelectableItem;)V

    goto/16 :goto_3

    .line 589
    :cond_1b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_top:I

    if-ne v0, v1, :cond_1c

    .line 590
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->topItem(Ldoodle/core/IDoodleItem;)V

    goto/16 :goto_3

    .line 591
    :cond_1c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->doodle_selectable_bottom:I

    if-ne v0, v1, :cond_1d

    .line 592
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->bottomItem(Ldoodle/core/IDoodleItem;)V

    goto/16 :goto_3

    .line 593
    :cond_1d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_hand_write:I

    if-ne v0, v1, :cond_1e

    .line 594
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->HAND_WRITE:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 595
    :cond_1e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_arrow:I

    if-ne v0, v1, :cond_1f

    .line 596
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->ARROW:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 597
    :cond_1f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_line:I

    if-ne v0, v1, :cond_20

    .line 598
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->LINE:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 599
    :cond_20
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_circle:I

    if-ne v0, v1, :cond_21

    .line 600
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->HOLLOW_CIRCLE:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 601
    :cond_21
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_circle:I

    if-ne v0, v1, :cond_22

    .line 602
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->FILL_CIRCLE:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 603
    :cond_22
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->btn_holl_rect:I

    if-ne v0, v1, :cond_23

    .line 604
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->HOLLOW_RECT:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    goto :goto_3

    .line 605
    :cond_23
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sget v0, Lcom/kukugtu/moduleplotting/R$id;->btn_fill_rect:I

    if-ne p1, v0, :cond_24

    .line 606
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    sget-object v0, Ldoodle/DoodleShape;->FILL_RECT:Ldoodle/DoodleShape;

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setShape(Ldoodle/core/IDoodleShape;)V

    :cond_24
    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 147
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 148
    invoke-static {p0, p1, v0}, Landroids/utils/StatusBarUtil;->setStatusBarTranslucent(Landroid/app/Activity;ZZ)V

    .line 149
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    if-nez v0, :cond_0

    .line 150
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_doodle_params"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Ldoodle/DoodleParams;

    iput-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    .line 152
    :cond_0
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    const-string v1, "TAG"

    if-nez v0, :cond_1

    const-string p1, "mDoodleParams is null!"

    .line 153
    invoke-static {v1, p1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->finish()V

    return-void

    .line 158
    :cond_1
    iget-object v0, v0, Ldoodle/DoodleParams;->mImagePath:Ljava/lang/String;

    iput-object v0, p0, Ldoodle/DoodleActivity;->mImagePath:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string p1, "mImagePath is null!"

    .line 160
    invoke-static {v1, p1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->finish()V

    return-void

    .line 164
    :cond_2
    invoke-static {v1, v0}, Landroids/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    iget-boolean v0, v0, Ldoodle/DoodleParams;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 166
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x400

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    .line 168
    :cond_3
    iget-object v0, p0, Ldoodle/DoodleActivity;->mImagePath:Ljava/lang/String;

    invoke-static {v0, p0}, Landroids/utils/ImageUtils;->createBitmapFromPath(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v5

    if-nez v5, :cond_4

    const-string p1, "bitmap is null!"

    .line 170
    invoke-static {v1, p1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Ldoodle/DoodleActivity;->finish()V

    return-void

    .line 175
    :cond_4
    invoke-virtual {p0, p1}, Ldoodle/DoodleActivity;->requestWindowFeature(I)Z

    .line 176
    sget p1, Lcom/kukugtu/moduleplotting/R$layout;->doodle_layout:I

    invoke-virtual {p0, p1}, Ldoodle/DoodleActivity;->setContentView(I)V

    .line 177
    sget p1, Lcom/kukugtu/moduleplotting/R$id;->doodle_container:I

    invoke-virtual {p0, p1}, Ldoodle/DoodleActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Ldoodle/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 179
    new-instance p1, Ldoodle/DoodleActivity$DoodelViewWrapper;

    new-instance v6, Ldoodle/DoodleActivity$1;

    invoke-direct {v6, p0}, Ldoodle/DoodleActivity$1;-><init>(Ldoodle/DoodleActivity;)V

    const/4 v7, 0x0

    move-object v2, p1

    move-object v3, p0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Ldoodle/DoodleActivity$DoodelViewWrapper;-><init>(Ldoodle/DoodleActivity;Landroid/content/Context;Landroid/graphics/Bitmap;Ldoodle/IDoodleListener;Ldoodle/core/IDoodleTouchDetector;)V

    iput-object p1, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    iput-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    .line 252
    new-instance p1, Ldoodle/DoodleOnTouchGestureListener;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    new-instance v1, Ldoodle/DoodleActivity$2;

    invoke-direct {v1, p0}, Ldoodle/DoodleActivity$2;-><init>(Ldoodle/DoodleActivity;)V

    invoke-direct {p1, v0, v1}, Ldoodle/DoodleOnTouchGestureListener;-><init>(Ldoodle/DoodleView;Ldoodle/DoodleOnTouchGestureListener$ISelectionListener;)V

    iput-object p1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    .line 280
    new-instance p1, Ldoodle/DoodleTouchDetector;

    invoke-virtual {p0}, Ldoodle/DoodleActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleActivity;->mTouchGestureListener:Ldoodle/DoodleOnTouchGestureListener;

    invoke-direct {p1, v0, v1}, Ldoodle/DoodleTouchDetector;-><init>(Landroid/content/Context;Landroids/TouchGestureDetector$IOnTouchGestureListener;)V

    .line 281
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    invoke-virtual {v0, p1}, Ldoodle/DoodleView;->setDefaultTouchDetector(Ldoodle/core/IDoodleTouchDetector;)V

    .line 283
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    iget-boolean v0, v0, Ldoodle/DoodleParams;->mIsDrawableOutside:Z

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setIsDrawableOutside(Z)V

    .line 284
    iget-object p1, p0, Ldoodle/DoodleActivity;->mFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleView:Ldoodle/DoodleView;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 285
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    iget v0, v0, Ldoodle/DoodleParams;->mMinScale:F

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setDoodleMinScale(F)V

    .line 286
    iget-object p1, p0, Ldoodle/DoodleActivity;->mDoodle:Ldoodle/core/IDoodle;

    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    iget v0, v0, Ldoodle/DoodleParams;->mMaxScale:F

    invoke-interface {p1, v0}, Ldoodle/core/IDoodle;->setDoodleMaxScale(F)V

    .line 288
    invoke-direct {p0}, Ldoodle/DoodleActivity;->initView()V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0

    .line 141
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V

    const-string p2, "key_doodle_params"

    .line 142
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ldoodle/DoodleParams;

    iput-object p1, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    iget-object v0, p0, Ldoodle/DoodleActivity;->mDoodleParams:Ldoodle/DoodleParams;

    const-string v1, "key_doodle_params"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
