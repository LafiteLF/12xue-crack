.class public Landroids/views/MaskImageView;
.super Landroid/widget/ImageView;
.source "MaskImageView.java"


# static fields
.field public static final MASK_LEVEL_BACKGROUND:I = 0x1

.field public static final MASK_LEVEL_FOREGROUND:I = 0x2


# instance fields
.field mColorFilter:Landroid/graphics/ColorFilter;

.field mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mIsIgnoreAlpha:Z

.field private mIsShowMaskOnClick:Z

.field private mLastColorFilter:Landroid/graphics/ColorFilter;

.field private mMaskColor:I

.field private mMaskLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Landroids/views/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Landroids/views/MaskImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 29
    iput-boolean p1, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    const p1, 0xffffff

    .line 30
    iput p1, p0, Landroids/views/MaskImageView;->mMaskColor:I

    const/4 p1, 0x2

    .line 32
    iput p1, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    .line 34
    new-instance p1, Landroid/graphics/ColorMatrix;

    invoke-direct {p1}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object p1, p0, Landroids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 48
    invoke-direct {p0, p2}, Landroids/views/MaskImageView;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 3

    .line 53
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kukugtu/moduleplotting/R$styleable;->MaskImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->MaskImageView_miv_is_ignore_alpha:I

    iget-boolean v2, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 58
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->MaskImageView_miv_is_show_mask_on_click:I

    iget-boolean v2, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    .line 59
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->MaskImageView_miv_mask_color:I

    iget v2, p0, Landroids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Landroids/views/MaskImageView;->mMaskColor:I

    .line 60
    sget v1, Lcom/kukugtu/moduleplotting/R$styleable;->MaskImageView_miv_mask_level:I

    iget v2, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    .line 62
    iget v1, p0, Landroids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p0, v1}, Landroids/views/MaskImageView;->setMaskColor(I)V

    .line 64
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 66
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroids/views/SelectorAttrs;->obtainsAttrs(Landroid/content/Context;Landroid/view/View;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setColorMatrix([F)V
    .locals 1

    .line 70
    iget-object v0, p0, Landroids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 71
    new-instance p1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v0, p0, Landroids/views/MaskImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {p1, v0}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object p1, p0, Landroids/views/MaskImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method private setDrawableColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 80
    iget v0, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 81
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 82
    iget-object v0, p0, Landroids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 86
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 89
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 90
    iget-object v0, p0, Landroids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    if-ne v0, p1, :cond_2

    return-void

    .line 93
    :cond_2
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 97
    :cond_3
    :goto_0
    iput-object p1, p0, Landroids/views/MaskImageView;->mLastColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 109
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    if-eqz v0, :cond_1

    .line 110
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Landroids/views/MaskImageView;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-direct {p0, v0}, Landroids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, v0}, Landroids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    .line 117
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected drawableStateChanged()V
    .locals 0

    .line 149
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 150
    invoke-virtual {p0}, Landroids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public getMaskColor()I
    .locals 1

    .line 181
    iget v0, p0, Landroids/views/MaskImageView;->mMaskColor:I

    return v0
.end method

.method public getMaskLevel()I
    .locals 1

    .line 221
    iget v0, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    return v0
.end method

.method public getShadeColor()I
    .locals 1

    .line 173
    invoke-virtual {p0}, Landroids/views/MaskImageView;->getMaskColor()I

    move-result v0

    return v0
.end method

.method public isIsIgnoreAlpha()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    return v0
.end method

.method public isIsShowMaskOnClick()Z
    .locals 1

    .line 163
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 123
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 124
    invoke-direct {p0, v0}, Landroids/views/MaskImageView;->setDrawableColorFilter(Landroid/graphics/ColorFilter;)V

    .line 125
    iget v0, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 126
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget v0, p0, Landroids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 130
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 132
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 133
    iget-boolean v0, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroids/views/MaskImageView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 135
    iget v0, p0, Landroids/views/MaskImageView;->mMaskColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 139
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setIsIgnoreAlpha(Z)V
    .locals 0

    .line 158
    iput-boolean p1, p0, Landroids/views/MaskImageView;->mIsIgnoreAlpha:Z

    .line 159
    invoke-virtual {p0}, Landroids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setIsShowMaskOnClick(Z)V
    .locals 0

    .line 167
    iput-boolean p1, p0, Landroids/views/MaskImageView;->mIsShowMaskOnClick:Z

    .line 168
    invoke-virtual {p0}, Landroids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setMaskColor(I)V
    .locals 7

    .line 206
    iput p1, p0, Landroids/views/MaskImageView;->mMaskColor:I

    .line 208
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, v0

    const v3, 0x3e19999a    # 0.15f

    mul-float/2addr v2, v3

    sub-float/2addr v0, v2

    sub-float v2, v1, v0

    const v3, 0x3f933333    # 1.15f

    mul-float/2addr v2, v3

    const/16 v3, 0x14

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v3, v5

    const/4 v5, 0x2

    aput v4, v3, v5

    const/4 v5, 0x3

    aput v4, v3, v5

    .line 212
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    const/4 v6, 0x4

    aput v5, v3, v6

    const/4 v5, 0x5

    aput v4, v3, v5

    const/4 v5, 0x6

    aput v2, v3, v5

    const/4 v5, 0x7

    aput v4, v3, v5

    const/16 v5, 0x8

    aput v4, v3, v5

    .line 213
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    mul-float/2addr v5, v0

    const/16 v6, 0x9

    aput v5, v3, v6

    const/16 v5, 0xa

    aput v4, v3, v5

    const/16 v5, 0xb

    aput v4, v3, v5

    const/16 v5, 0xc

    aput v2, v3, v5

    const/16 v2, 0xd

    aput v4, v3, v2

    .line 214
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/16 v0, 0xe

    aput p1, v3, v0

    const/16 p1, 0xf

    aput v4, v3, p1

    const/16 p1, 0x10

    aput v4, v3, p1

    const/16 p1, 0x11

    aput v4, v3, p1

    const/16 p1, 0x12

    aput v1, v3, p1

    const/16 p1, 0x13

    aput v4, v3, p1

    .line 211
    invoke-direct {p0, v3}, Landroids/views/MaskImageView;->setColorMatrix([F)V

    .line 217
    invoke-virtual {p0}, Landroids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setMaskLevel(I)V
    .locals 0

    .line 225
    iput p1, p0, Landroids/views/MaskImageView;->mMaskLevel:I

    .line 226
    invoke-virtual {p0}, Landroids/views/MaskImageView;->invalidate()V

    return-void
.end method

.method public setShadeColor(I)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Landroids/views/MaskImageView;->setMaskColor(I)V

    return-void
.end method
