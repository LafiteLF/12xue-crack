.class public Ldoodle/dialog/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldoodle/dialog/ColorPickerView$OnSelectedColorListener;
    }
.end annotation


# instance fields
.field private centerRadius:F

.field private downInCircle:Z

.field private downInRect:Z

.field private highlightCenter:Z

.field private highlightCenterLittle:Z

.field private mBitmapShader:Landroid/graphics/BitmapShader;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mCircleColors:[I

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHeight:I

.field private mLinePaint:Landroid/graphics/Paint;

.field private mOnSelectedColorListener:Ldoodle/dialog/ColorPickerView$OnSelectedColorListener;

.field private mPaint:Landroid/graphics/Paint;

.field private final mRectColors:[I

.field private mRectF:Landroid/graphics/RectF;

.field private mRectPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private r:F

.field private rectBottom:F

.field private rectLeft:F

.field private rectRight:F

.field private rectShader:Landroid/graphics/Shader;

.field private rectTop:F


# direct methods
.method public constructor <init>(Landroid/content/Context;IIILdoodle/dialog/ColorPickerView$OnSelectedColorListener;)V
    .locals 6

    .line 48
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 40
    iput-boolean v0, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    .line 44
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Ldoodle/dialog/ColorPickerView;->mRectF:Landroid/graphics/RectF;

    .line 49
    iput p3, p0, Ldoodle/dialog/ColorPickerView;->mHeight:I

    .line 50
    iput p4, p0, Ldoodle/dialog/ColorPickerView;->mWidth:I

    .line 51
    invoke-virtual {p0, p3}, Ldoodle/dialog/ColorPickerView;->setMinimumHeight(I)V

    .line 52
    invoke-virtual {p0, p4}, Ldoodle/dialog/ColorPickerView;->setMinimumWidth(I)V

    const/4 p3, 0x7

    new-array p3, p3, [I

    .line 54
    fill-array-data p3, :array_0

    iput-object p3, p0, Ldoodle/dialog/ColorPickerView;->mCircleColors:[I

    .line 56
    new-instance p3, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCircleColors:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p3, v2, v2, v1, v3}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 57
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 59
    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-static {p1, v1}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p3, 0x2

    .line 61
    div-int/2addr p4, p3

    int-to-float p4, p4

    const v2, 0x3f333333    # 0.7f

    mul-float/2addr p4, v2

    iget-object v3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float/2addr v3, v4

    sub-float/2addr p4, v3

    iput p4, p0, Ldoodle/dialog/ColorPickerView;->r:F

    .line 64
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p4, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 65
    invoke-virtual {p4, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object p2, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 p4, 0x40a00000    # 5.0f

    invoke-virtual {p2, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget p2, p0, Ldoodle/dialog/ColorPickerView;->r:F

    iget-object v3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr p2, v3

    mul-float/2addr p2, v2

    iput p2, p0, Ldoodle/dialog/ColorPickerView;->centerRadius:F

    .line 70
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const-string v2, "#72A1D1"

    .line 71
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 72
    iget-object p2, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40800000    # 4.0f

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 p2, 0x3

    new-array p2, p2, [I

    const/4 v2, 0x0

    const/high16 v3, -0x1000000

    aput v3, p2, v2

    .line 75
    iget-object v2, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, p2, v0

    const/4 v2, -0x1

    aput v2, p2, p3

    iput-object p2, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    .line 76
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Ldoodle/dialog/ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    .line 77
    invoke-static {p1, p4}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result p3

    int-to-float p3, p3

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 78
    iget p2, p0, Ldoodle/dialog/ColorPickerView;->r:F

    neg-float p2, p2

    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    mul-float/2addr p3, v4

    sub-float/2addr p2, p3

    iput p2, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    .line 79
    iget p2, p0, Ldoodle/dialog/ColorPickerView;->r:F

    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    mul-float/2addr p3, v4

    add-float/2addr p2, p3

    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    .line 80
    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeMiter()F

    move-result p3

    mul-float/2addr p3, v4

    add-float/2addr p2, p3

    const/high16 p3, 0x41700000    # 15.0f

    add-float/2addr p2, p3

    iput p2, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    .line 81
    iget p2, p0, Ldoodle/dialog/ColorPickerView;->r:F

    iget-object p3, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p3

    mul-float/2addr p3, v4

    add-float/2addr p2, p3

    iput p2, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    .line 82
    iget p2, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    invoke-static {p1, v1}, Landroids/utils/Util;->dp2px(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p2, p1

    iput p2, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    .line 84
    iput-object p5, p0, Ldoodle/dialog/ColorPickerView;->mOnSelectedColorListener:Ldoodle/dialog/ColorPickerView$OnSelectedColorListener;

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private ave(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p2, p2

    mul-float/2addr p3, p2

    .line 321
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p2

    add-int/2addr p1, p2

    return p1
.end method

.method private inCenter(FFF)Z
    .locals 6

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v0, v2

    mul-double/2addr v4, v0

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr p1, v2

    cmpg-double p1, p1, v4

    if-gez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private inColorCircle(FFFF)Z
    .locals 6

    float-to-double v0, p3

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v4, v0, v2

    mul-double/2addr v4, v0

    float-to-double p3, p4

    mul-double v0, p3, v2

    mul-double/2addr v0, p3

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr p1, v2

    cmpg-double p3, p1, v4

    if-gez p3, :cond_0

    cmpl-double p1, p1, v0

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private inRect(FF)Z
    .locals 1

    .line 261
    iget v0, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    iget v0, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_0

    iget p1, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    iget p1, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private interpCircleColor([IF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p2, 0x0

    .line 273
    aget p1, p1, p2

    return p1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 276
    array-length p2, p1

    add-int/lit8 p2, p2, -0x1

    aget p1, p1, p2

    return p1

    .line 279
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    .line 284
    aget v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 285
    aget p1, p1, v0

    .line 286
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v0

    .line 287
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v2

    .line 288
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v3

    .line 289
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v1, p1, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result p1

    .line 291
    invoke-static {v0, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method private interpRectColor([IF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 305
    aget v0, p1, v0

    .line 306
    aget p1, p1, v1

    .line 307
    iget v1, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    add-float/2addr p2, v1

    goto :goto_0

    .line 309
    :cond_0
    aget v0, p1, v1

    const/4 v1, 0x2

    .line 310
    aget p1, p1, v1

    .line 311
    iget v1, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    :goto_0
    div-float/2addr p2, v1

    .line 313
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v1, v2, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v1

    .line 314
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v2

    .line 315
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result v3

    .line 316
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Ldoodle/dialog/ColorPickerView;->ave(IIF)I

    move-result p1

    .line 317
    invoke-static {v1, v2, v3, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 330
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 97
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 103
    iget v0, p0, Ldoodle/dialog/ColorPickerView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget v1, p0, Ldoodle/dialog/ColorPickerView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, -0x32

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 104
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mBitmapShader:Landroid/graphics/BitmapShader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_0

    .line 107
    :cond_0
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    :goto_0
    iget v0, p0, Ldoodle/dialog/ColorPickerView;->centerRadius:F

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 112
    iget-boolean v0, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    if-eqz v0, :cond_4

    .line 113
    :cond_1
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 114
    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 115
    iget-boolean v1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-eqz v1, :cond_2

    .line 116
    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0xff

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_1

    .line 117
    :cond_2
    iget-boolean v1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    if-eqz v1, :cond_3

    .line 118
    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v3, 0x90

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 120
    :cond_3
    :goto_1
    iget v1, p0, Ldoodle/dialog/ColorPickerView;->centerRadius:F

    iget-object v3, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v1, v3

    iget-object v3, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 120
    invoke-virtual {p1, v2, v2, v1, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 124
    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 126
    :cond_4
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mRectF:Landroid/graphics/RectF;

    iget v1, p0, Ldoodle/dialog/ColorPickerView;->r:F

    neg-float v2, v1

    neg-float v3, v1

    invoke-virtual {v0, v2, v3, v1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 128
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mRectF:Landroid/graphics/RectF;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 130
    iget-boolean v0, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    if-eqz v0, :cond_5

    .line 131
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v2, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    if-eq v0, v2, :cond_5

    .line 132
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    iget-object v2, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v2

    aput v2, v0, v1

    .line 133
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v4, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    const/4 v5, 0x0

    iget v6, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    const/4 v7, 0x0

    iget-object v8, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    const/4 v9, 0x0

    sget-object v10, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v3, v0

    invoke-direct/range {v3 .. v10}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Ldoodle/dialog/ColorPickerView;->rectShader:Landroid/graphics/Shader;

    .line 136
    :cond_5
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->rectShader:Landroid/graphics/Shader;

    if-nez v0, :cond_6

    .line 137
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    const/4 v3, 0x0

    iget v4, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    const/4 v5, 0x0

    iget-object v6, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Ldoodle/dialog/ColorPickerView;->rectShader:Landroid/graphics/Shader;

    .line 140
    :cond_6
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->rectShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 141
    iget v3, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    iget v4, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    iget v5, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    iget v6, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    iget-object v7, p0, Ldoodle/dialog/ColorPickerView;->mRectPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 142
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 143
    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    sub-float v4, v2, v0

    iget v3, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    mul-float/2addr v1, v0

    sub-float v5, v3, v1

    sub-float v6, v2, v0

    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    add-float v7, v2, v1

    iget-object v8, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 145
    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    sub-float v4, v2, v1

    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    sub-float v5, v2, v0

    iget v3, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    add-float v6, v3, v1

    sub-float v7, v2, v0

    iget-object v8, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 147
    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    add-float v4, v2, v0

    iget v3, p0, Ldoodle/dialog/ColorPickerView;->rectTop:F

    sub-float v5, v3, v1

    add-float v6, v2, v0

    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    add-float v7, v2, v1

    iget-object v8, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 149
    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectLeft:F

    sub-float v4, v2, v1

    iget v2, p0, Ldoodle/dialog/ColorPickerView;->rectBottom:F

    add-float v5, v2, v0

    iget v3, p0, Ldoodle/dialog/ColorPickerView;->rectRight:F

    add-float v6, v3, v1

    add-float v7, v2, v0

    iget-object v8, p0, Ldoodle/dialog/ColorPickerView;->mLinePaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 152
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 220
    iget p1, p0, Ldoodle/dialog/ColorPickerView;->mWidth:I

    iget p2, p0, Ldoodle/dialog/ColorPickerView;->mHeight:I

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Ldoodle/dialog/ColorPickerView;->mWidth:I

    const/4 v2, 0x2

    div-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v0, v1

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Ldoodle/dialog/ColorPickerView;->mHeight:I

    div-int/2addr v3, v2

    int-to-float v3, v3

    sub-float/2addr v1, v3

    const/high16 v3, 0x42480000    # 50.0f

    add-float/2addr v1, v3

    .line 159
    iget v3, p0, Ldoodle/dialog/ColorPickerView;->r:F

    iget-object v4, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 160
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p0, Ldoodle/dialog/ColorPickerView;->r:F

    iget-object v6, p0, Ldoodle/dialog/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v6

    div-float/2addr v6, v5

    sub-float/2addr v4, v6

    .line 159
    invoke-direct {p0, v0, v1, v3, v4}, Ldoodle/dialog/ColorPickerView;->inColorCircle(FFFF)Z

    move-result v3

    .line 161
    iget v4, p0, Ldoodle/dialog/ColorPickerView;->centerRadius:F

    invoke-direct {p0, v0, v1, v4}, Ldoodle/dialog/ColorPickerView;->inCenter(FFF)Z

    move-result v4

    .line 162
    invoke-direct {p0, v0, v1}, Ldoodle/dialog/ColorPickerView;->inRect(FF)Z

    move-result v5

    .line 164
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz p1, :cond_6

    if-eq p1, v6, :cond_0

    if-eq p1, v2, :cond_7

    goto/16 :goto_3

    .line 195
    :cond_0
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-eqz p1, :cond_1

    if-eqz v4, :cond_1

    .line 196
    iget-object p1, p0, Ldoodle/dialog/ColorPickerView;->mOnSelectedColorListener:Ldoodle/dialog/ColorPickerView$OnSelectedColorListener;

    if-eqz p1, :cond_1

    .line 197
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Ldoodle/dialog/ColorPickerView$OnSelectedColorListener;->onSelected(I)V

    .line 200
    :cond_1
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    if-eqz p1, :cond_2

    .line 201
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    .line 203
    :cond_2
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->downInRect:Z

    if-eqz p1, :cond_3

    .line 204
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->downInRect:Z

    .line 206
    :cond_3
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-eqz p1, :cond_4

    .line 207
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    .line 209
    :cond_4
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    if-eqz p1, :cond_5

    .line 210
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    .line 212
    :cond_5
    invoke-virtual {p0}, Ldoodle/dialog/ColorPickerView;->invalidate()V

    goto/16 :goto_3

    .line 166
    :cond_6
    iput-boolean v3, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    .line 167
    iput-boolean v5, p0, Ldoodle/dialog/ColorPickerView;->downInRect:Z

    .line 168
    iput-boolean v4, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    .line 170
    :cond_7
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->downInCircle:Z

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    if-eqz v3, :cond_9

    float-to-double v8, v1

    float-to-double v0, v0

    .line 171
    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    float-to-double v0, p1

    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v0, v8

    double-to-float p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_8

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 176
    :cond_8
    iput-object v2, p0, Ldoodle/dialog/ColorPickerView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 177
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mCircleColors:[I

    invoke-direct {p0, v1, p1}, Ldoodle/dialog/ColorPickerView;->interpCircleColor([IF)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 178
    :cond_9
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->downInRect:Z

    if-eqz p1, :cond_a

    if-eqz v5, :cond_a

    .line 179
    iput-object v2, p0, Ldoodle/dialog/ColorPickerView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 180
    iget-object p1, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    invoke-direct {p0, v1, v0}, Ldoodle/dialog/ColorPickerView;->interpRectColor([IF)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 182
    :cond_a
    :goto_0
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-eqz p1, :cond_b

    if-nez v4, :cond_c

    :cond_b
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    if-eqz p1, :cond_d

    if-eqz v4, :cond_d

    .line 183
    :cond_c
    iput-boolean v6, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    .line 184
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 185
    :cond_d
    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    if-nez p1, :cond_f

    iget-boolean p1, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    if-eqz p1, :cond_e

    goto :goto_1

    .line 189
    :cond_e
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    .line 190
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    goto :goto_2

    .line 186
    :cond_f
    :goto_1
    iput-boolean v7, p0, Ldoodle/dialog/ColorPickerView;->highlightCenter:Z

    .line 187
    iput-boolean v6, p0, Ldoodle/dialog/ColorPickerView;->highlightCenterLittle:Z

    .line 192
    :goto_2
    invoke-virtual {p0}, Ldoodle/dialog/ColorPickerView;->invalidate()V

    :goto_3
    return v6
.end method

.method public setColor(I)V
    .locals 2

    .line 325
    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 326
    iget-object p1, p0, Ldoodle/dialog/ColorPickerView;->mRectColors:[I

    iget-object v0, p0, Ldoodle/dialog/ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p1, v1

    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 3

    .line 91
    iput-object p1, p0, Ldoodle/dialog/ColorPickerView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    new-instance v0, Landroid/graphics/BitmapShader;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v1, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    sget-object v2, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    invoke-direct {v0, p1, v1, v2}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Ldoodle/dialog/ColorPickerView;->mBitmapShader:Landroid/graphics/BitmapShader;

    .line 93
    invoke-virtual {p0}, Ldoodle/dialog/ColorPickerView;->invalidate()V

    return-void
.end method
