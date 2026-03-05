.class public Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;
.super Ljava/lang/Object;
.source "ImgClipOpen.java"


# instance fields
.field private mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

.field private mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

.field private mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

.field private mContext:Landroid/app/Activity;

.field private mH:I

.field private mImageView:Landroid/widget/ImageView;

.field private mImgBitmap:Landroid/graphics/Bitmap;

.field private mIsCircle:Z

.field private mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

.field private mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

.field private mSavePath:Ljava/lang/String;

.field private mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

.field private mW:I

.field private mX:I

.field private mY:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mIsCircle:Z

    .line 45
    invoke-static {}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->getInstance()Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    .line 46
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    .line 47
    iput-object p2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 48
    iput-object p3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    return-void
.end method

.method private createLayoutParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 3

    .line 223
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mW:I

    iget v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mH:I

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 224
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v1, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->x(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v1

    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mX:I

    .line 225
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v1, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->y(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result p1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mY:I

    .line 226
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mX:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    return-object v0
.end method

.method private getClipRectBottom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 1

    .line 171
    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectTop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 172
    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getImgViewHeight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getClipRectLeft(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 2

    .line 157
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mW:I

    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getImgViewWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-double p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private getClipRectRight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 1

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectLeft(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getImgViewWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result p1

    add-int/2addr v0, p1

    return v0
.end method

.method private getClipRectTop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 2

    .line 166
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mH:I

    invoke-direct {p0, p1, p2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getImgViewHeight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result p1

    sub-int/2addr v0, p1

    int-to-double p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1
.end method

.method private getImgViewHeight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 12

    .line 200
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I

    move-result v0

    .line 201
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v1, p1, v2, v3}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result p1

    .line 202
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 203
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    if-gt v1, v0, :cond_0

    if-gt p2, p1, :cond_0

    int-to-double p1, p1

    mul-double/2addr p1, v2

    int-to-double v1, v1

    mul-double/2addr p1, v1

    int-to-double v0, v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1

    :cond_0
    if-gt v1, v0, :cond_1

    if-le p2, p1, :cond_1

    return p1

    :cond_1
    if-le v1, v0, :cond_2

    if-gt p2, p1, :cond_2

    int-to-double p1, p1

    mul-double/2addr p1, v2

    int-to-double v1, v1

    mul-double/2addr p1, v1

    int-to-double v0, v0

    div-double/2addr p1, v0

    double-to-int p1, p1

    return p1

    :cond_2
    if-le v1, v0, :cond_4

    if-le p2, p1, :cond_4

    int-to-double v4, v1

    mul-double/2addr v4, v2

    int-to-double v6, p2

    div-double v8, v4, v6

    int-to-double v0, v0

    mul-double/2addr v2, v0

    int-to-double v10, p1

    div-double/2addr v2, v10

    cmpl-double p2, v8, v2

    if-lez p2, :cond_3

    div-double/2addr v4, v0

    div-double/2addr v6, v4

    double-to-int p1, v6

    :cond_3
    return p1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method private getImgViewWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I
    .locals 12

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 179
    :cond_0
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1, p1, v2}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I

    move-result v1

    .line 180
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v2, p1, v3, v4}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result p1

    .line 181
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 182
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    if-gt v2, v1, :cond_1

    if-gt p2, p1, :cond_1

    return v1

    :cond_1
    if-gt v2, v1, :cond_2

    if-le p2, p1, :cond_2

    return v2

    :cond_2
    if-le v2, v1, :cond_3

    if-gt p2, p1, :cond_3

    return v1

    :cond_3
    if-le v2, v1, :cond_5

    if-le p2, p1, :cond_5

    int-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double v6, v2, v4

    int-to-double v8, p2

    div-double/2addr v6, v8

    int-to-double v10, v1

    mul-double/2addr v10, v4

    int-to-double p1, p1

    div-double/2addr v10, p1

    cmpl-double v0, v6, v10

    if-lez v0, :cond_4

    return v1

    :cond_4
    mul-double/2addr v8, v4

    div-double/2addr v8, p1

    div-double/2addr v2, v8

    double-to-int p1, v2

    return p1

    :cond_5
    return v0
.end method

.method private initBackground(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 2

    .line 83
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->isColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->bgColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result p1

    .line 85
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->setBackgroundColor(I)V

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->bg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 88
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    if-eqz p1, :cond_1

    .line 90
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    invoke-virtual {p1, v0}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private initClipLayout()V
    .locals 3

    const-string v0, "mo_fnimgclip"

    .line 76
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 77
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    .line 78
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->setModuleContext(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method private initClipView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 14

    const-string v0, "imgClipView"

    .line 124
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    invoke-virtual {v1, v0}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/apicloud/devlop/FNImageClip/ClipView;

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

    .line 126
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->w(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;)I

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mW:I

    .line 127
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0, p1, v1, v2}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->h(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)I

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mH:I

    .line 128
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mW:I

    sput v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipWidth:I

    .line 129
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mH:I

    sput v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipHeight:I

    .line 130
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectLeft(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectRight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 134
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectTop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v2

    .line 136
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectBottom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v3

    .line 138
    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v4, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->layerColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v8

    .line 139
    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v4, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->borderColor(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v9

    .line 140
    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v4, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->borderWidth(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v10

    .line 141
    new-instance v4, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    .line 142
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1, v4}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->clipRect(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/apicloud/devlop/FNImageClip/ClipRect;)Lcom/apicloud/devlop/FNImageClip/ClipRect;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 143
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->mode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v11

    .line 144
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->isCircle(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mIsCircle:Z

    const-string v0, "destPath"

    .line 145
    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mSavePath:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v1, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->imageBg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 148
    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

    iget-object v6, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget-object v7, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    iget-boolean v12, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mIsCircle:Z

    const/4 v13, 0x0

    invoke-virtual/range {v5 .. v13}, Lcom/apicloud/devlop/FNImageClip/ClipView;->initParams(Lcom/apicloud/devlop/FNImageClip/ClipRect;Landroid/widget/ImageView;IIILjava/lang/String;ZZ)V

    .line 149
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    if-eqz v0, :cond_0

    .line 150
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

    invoke-virtual {v1, v0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setImgTouchListener(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

    const/4 v1, 0x0

    const-string v2, "isHideGrid"

    invoke-virtual {p1, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setHideGrid(Z)V

    return-void
.end method

.method private initImageView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 5

    const-string v0, "imgView"

    .line 97
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v0

    .line 98
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    invoke-virtual {v1, v0}, Lcom/apicloud/devlop/FNImageClip/ClipLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    .line 99
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 102
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->img(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    .line 103
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->mode(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "clip"

    .line 105
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectLeft(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v1}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectRight(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectTop(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v2

    .line 110
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v3}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->getClipRectBottom(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;)I

    move-result v3

    .line 112
    new-instance v4, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-direct {v4, v0, v2, v1, v3}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    .line 113
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    invoke-virtual {v0, p1, v4}, Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;->clipRect(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Lcom/apicloud/devlop/FNImageClip/ClipRect;)Lcom/apicloud/devlop/FNImageClip/ClipRect;

    move-result-object p1

    .line 116
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/TounchListener;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    invoke-direct {v0, v1, p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;-><init>(Landroid/widget/ImageView;Lcom/apicloud/devlop/FNImageClip/ClipRect;)V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    .line 117
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getSavePath()Ljava/lang/String;
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mSavePath:Ljava/lang/String;

    return-object v0
.end method

.method public getmClipLayout()Landroid/widget/FrameLayout;
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    return-object v0
.end method

.method public getmClipRect()Lcom/apicloud/devlop/FNImageClip/ClipRect;
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    return-object v0
.end method

.method public getmClipView()Lcom/apicloud/devlop/FNImageClip/ClipView;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipView:Lcom/apicloud/devlop/FNImageClip/ClipView;

    return-object v0
.end method

.method public getmContext()Landroid/app/Activity;
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mContext:Landroid/app/Activity;

    return-object v0
.end method

.method public getmH()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mH:I

    return v0
.end method

.method public getmImageView()Landroid/widget/ImageView;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getmImgBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mImgBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getmJsParmasUtil()Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mJsParmasUtil:Lcom/apicloud/devlop/FNImageClip/JsParmasUtil;

    return-object v0
.end method

.method public getmModuleContext()Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object v0
.end method

.method public getmMoude()Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    return-object v0
.end method

.method public getmW()I
    .locals 1

    .line 275
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mW:I

    return v0
.end method

.method public getmX()I
    .locals 1

    .line 267
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mX:I

    return v0
.end method

.method public getmY()I
    .locals 1

    .line 271
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mY:I

    return v0
.end method

.method public isCircle()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mIsCircle:Z

    return v0
.end method

.method public open()V
    .locals 5

    .line 52
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->initClipLayout()V

    .line 53
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->initBackground(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 54
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->initImageView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    .line 55
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->initClipView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    const-string v0, "debug"

    const-string v1, "===> initClipView"

    .line 57
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->createLayoutParams(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)Landroid/widget/RelativeLayout$LayoutParams;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v2, "fixedOn"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v3, "fixed"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 62
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mMoude:Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;

    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ImgClipOpen;->mClipLayout:Lcom/apicloud/devlop/FNImageClip/ClipLayout;

    invoke-virtual {v3, v4, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModule;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    return-void
.end method

.method public openCallBack(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 3

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 69
    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 71
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method
