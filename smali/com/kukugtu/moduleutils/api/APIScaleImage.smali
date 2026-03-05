.class public Lcom/kukugtu/moduleutils/api/APIScaleImage;
.super Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
.source "APIScaleImage.java"


# static fields
.field private static final CLICK_ID:Ljava/lang/String; = "clickID"

.field private static final CLICK_ID_CLOSE:Ljava/lang/String; = "clickID_close"

.field private static final CLICK_ID_DELETE:Ljava/lang/String; = "clickID_delete"

.field private static final CLICK_ID_SAVE:Ljava/lang/String; = "clickID_save"

.field private static final DEIVCE_TYPE_PAD:Ljava/lang/String; = "deviceType_pad"

.field private static final DEIVCE_TYPE_PHONE:Ljava/lang/String; = "deviceType_phone"

.field private static final DEVICE_TYPE:Ljava/lang/String; = "deviceType"

.field private static final IMAGE_PATH:Ljava/lang/String; = "imageSavePath"

.field private static final IMAGE_URL:Ljava/lang/String; = "url"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private matrix:Landroid/graphics/Matrix;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;-><init>(Lcom/uzmap/pkg/uzcore/UZWebView;)V

    return-void
.end method

.method static synthetic access$000(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    return-object p0
.end method

.method static synthetic access$002(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;)Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    return-object p1
.end method

.method static synthetic access$100(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method static synthetic access$200(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->bitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$202(Lcom/kukugtu/moduleutils/api/APIScaleImage;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->bitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$300(Lcom/kukugtu/moduleutils/api/APIScaleImage;)Landroid/graphics/Matrix;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method


# virtual methods
.method public jsmethod_dismissImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->removeViewFromCurWindow(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 246
    iput-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 247
    iput-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    .line 248
    iput-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->bitmap:Landroid/graphics/Bitmap;

    .line 249
    iput-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->matrix:Landroid/graphics/Matrix;

    const/4 v0, 0x1

    .line 250
    invoke-static {p1, v0}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method

.method public jsmethod_showImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 58
    iget-object v2, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const-string v2, "\u8bf7\u5148\u5220\u9664\u540e\u518d\u6dfb\u52a0"

    .line 59
    invoke-static {v2, v1, v3}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    :cond_0
    const-string v2, "deviceType"

    .line 62
    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "url"

    .line 63
    invoke-virtual {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 65
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->matrix:Landroid/graphics/Matrix;

    .line 66
    new-instance v5, Landroid/widget/RelativeLayout;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    iput-object v5, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 69
    new-instance v5, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    sget v6, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_topbg:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 71
    new-instance v6, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 73
    new-instance v7, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 74
    sget v8, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_rotate:I

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 75
    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 76
    new-instance v8, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;

    invoke-direct {v8, v0, v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage$1;-><init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 91
    sget v9, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_close:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    sget-object v9, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 93
    new-instance v9, Lcom/kukugtu/moduleutils/api/APIScaleImage$2;

    invoke-direct {v9, v0, v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage$2;-><init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    new-instance v9, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v9, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    sget v10, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_save:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 104
    sget-object v10, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 105
    new-instance v10, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;

    invoke-direct {v10, v0, v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage$3;-><init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    new-instance v10, Landroid/widget/ImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 127
    sget v11, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_delete:I

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 128
    sget-object v11, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 129
    new-instance v11, Lcom/kukugtu/moduleutils/api/APIScaleImage$4;

    invoke-direct {v11, v0, v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage$4;-><init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v11

    const v12, -0x3b05f17c    # -2000.4536f

    const/4 v14, -0x1

    if-eq v11, v12, :cond_2

    const v12, 0x6eb3e31f

    if-eq v11, v12, :cond_1

    goto :goto_0

    :cond_1
    const-string v11, "deviceType_phone"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_1

    :cond_2
    const-string v11, "deviceType_pad"

    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move v2, v14

    :goto_1
    const/high16 v15, 0x43200000    # 160.0f

    const/high16 v16, 0x430c0000    # 140.0f

    const/16 v13, 0x438

    const/16 v11, 0x780

    const/high16 v17, 0x42dc0000    # 110.0f

    const/high16 v18, 0x42480000    # 50.0f

    const/high16 v19, 0x42880000    # 68.0f

    if-eqz v2, :cond_5

    if-eq v2, v3, :cond_4

    goto/16 :goto_2

    .line 182
    :cond_4
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v20

    invoke-static/range {v20 .. v20}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v12, v13, v11}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->initScreen(IIII)V

    .line 183
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    const/16 v3, 0x12c

    invoke-direct {v2, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 184
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 186
    sget v2, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_rotatebg_phone:I

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 187
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float/2addr v3, v15

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v16

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xc

    .line 188
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v5, 0xe

    .line 189
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 190
    iget-object v11, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 192
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v6

    mul-float v6, v6, v17

    float-to-int v6, v6

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v11

    mul-float v11, v11, v17

    float-to-int v11, v11

    invoke-direct {v2, v6, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 193
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 194
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 195
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 196
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 199
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 200
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 201
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 202
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 204
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 205
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 206
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 207
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 208
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 211
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 212
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 213
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 148
    :cond_5
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->getInstance()Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getDisplay(Landroid/content/Context;)Landroid/util/DisplayMetrics;

    move-result-object v12

    iget v12, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v2, v3, v12, v11, v13}, Lcom/kukugtu/moduleutils/apiutils/AutoLayoutConifg;->initScreen(IIII)V

    .line 149
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    const/high16 v11, 0x43920000    # 292.0f

    mul-float/2addr v3, v11

    float-to-int v3, v3

    invoke-direct {v2, v14, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 150
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    sget v2, Lcom/kukugtu/moduleutils/R$drawable;->imagescale_rotatebg_pad:I

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 153
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v16

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float/2addr v5, v15

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 154
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xf

    .line 155
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 156
    iget-object v5, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 158
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v5

    mul-float v5, v5, v17

    float-to-int v5, v5

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v6

    mul-float v6, v6, v17

    float-to-int v6, v6

    invoke-direct {v2, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0xb

    .line 159
    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 160
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 161
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    const/high16 v5, 0x41700000    # 15.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 162
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v7, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 165
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 166
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 167
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 168
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v8, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0xb

    .line 171
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 172
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 173
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    const/high16 v5, 0x43480000    # 200.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 174
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v9, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 176
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v19

    float-to-int v3, v3

    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v5

    mul-float v5, v5, v19

    float-to-int v5, v5

    invoke-direct {v2, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 177
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateHei()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 178
    invoke-static {}, Lcom/kukugtu/moduleutils/apiutils/DisplayUtil;->getRateWid()F

    move-result v3

    mul-float v3, v3, v18

    float-to-int v3, v3

    iput v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 179
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v10, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 220
    :goto_2
    new-instance v2, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;-><init>(Landroid/content/Context;)V

    iput-object v2, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    .line 221
    invoke-virtual/range {p0 .. p0}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->context()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v2

    invoke-virtual {v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bumptech/glide/DrawableTypeRequest;->asBitmap()Lcom/bumptech/glide/BitmapTypeRequest;

    move-result-object v2

    new-instance v3, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;

    invoke-direct {v3, v0, v1}, Lcom/kukugtu/moduleutils/api/APIScaleImage$5;-><init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    invoke-virtual {v2, v3}, Lcom/bumptech/glide/BitmapTypeRequest;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 235
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 236
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    const-string v4, "#000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    .line 237
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    iget-object v4, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->zoomImageView:Lcom/kukugtu/moduleutils/apiutils/ZoomImageView;

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 239
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v2, v14, v14}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 240
    iget-object v3, v0, Lcom/kukugtu/moduleutils/api/APIScaleImage;->relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3, v2}, Lcom/kukugtu/moduleutils/api/APIScaleImage;->insertViewToCurWindow(Landroid/view/View;Landroid/widget/RelativeLayout$LayoutParams;)V

    .line 241
    invoke-static {v1, v5}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    return-void
.end method
