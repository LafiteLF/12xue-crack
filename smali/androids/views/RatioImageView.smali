.class public Landroids/views/RatioImageView;
.super Landroid/widget/ImageView;
.source "RatioImageView.java"


# instance fields
.field private mDesiredHeight:I

.field private mDesiredWidth:I

.field private mDrawableSizeRatio:F

.field private mHeightRatio:F

.field private mIsHeightFitDrawableSizeRatio:Z

.field private mIsWidthFitDrawableSizeRatio:Z

.field private mMaxHeightWhenHeightFixDrawable:I

.field private mMaxWidthWhenWidthFixDrawable:I

.field private mWidthRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Landroids/views/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, p2, v0}, Landroids/views/RatioImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 25
    iput p1, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    const/4 p3, -0x1

    .line 29
    iput p3, p0, Landroids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    .line 30
    iput p3, p0, Landroids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    .line 33
    iput p1, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    .line 34
    iput p1, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    .line 36
    iput p3, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    .line 37
    iput p3, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    .line 49
    invoke-direct {p0, p2}, Landroids/views/RatioImageView;->init(Landroid/util/AttributeSet;)V

    .line 51
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 52
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr p2, p1

    .line 53
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    iput p2, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    :cond_0
    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    .line 62
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_is_width_fix_drawable_size_ratio:I

    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 66
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_is_height_fix_drawable_size_ratio:I

    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 68
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_max_width_when_width_fix_drawable:I

    iget v1, p0, Landroids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    .line 70
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_max_height_when_height_fix_drawable:I

    iget v1, p0, Landroids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    .line 72
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_height_to_width_ratio:I

    iget v1, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    .line 74
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_width_to_height_ratio:I

    iget v1, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    .line 76
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_width:I

    iget v1, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    .line 77
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->RatioImageView_riv_height:I

    iget v1, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    .line 79
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private onSetDrawable()V
    .locals 4

    .line 83
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 86
    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v1, :cond_1

    .line 87
    :cond_0
    iget v1, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 88
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v2

    .line 89
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v3, v0

    iput v3, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    cmpl-float v0, v1, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    cmpl-float v0, v3, v0

    if-lez v0, :cond_1

    .line 91
    invoke-virtual {p0}, Landroids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getDrawableSizeRatio()F
    .locals 1

    .line 257
    iget v0, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    return v0
.end method

.method public getHeightRatio()F
    .locals 1

    .line 253
    iget v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    return v0
.end method

.method public getWidthRatio()F
    .locals 1

    .line 249
    iget v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    return v0
.end method

.method public isIsHeightFitDrawableSizeRatio()Z
    .locals 1

    .line 245
    iget-boolean v0, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    return v0
.end method

.method public isIsWidthFitDrawableSizeRatio()Z
    .locals 1

    .line 241
    iget-boolean v0, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    return v0
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 114
    iget v0, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-lez v2, :cond_1

    .line 116
    iget-boolean v2, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-eqz v2, :cond_0

    .line 117
    iput v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    goto :goto_0

    .line 118
    :cond_0
    iget-boolean v2, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v2, :cond_1

    const/high16 v2, 0x3f800000    # 1.0f

    div-float/2addr v2, v0

    .line 119
    iput v2, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    .line 123
    :cond_1
    :goto_0
    iget v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    iget v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_2

    goto :goto_1

    .line 124
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "\u9ad8\u5ea6\u548c\u5bbd\u5ea6\u4e0d\u80fd\u540c\u65f6\u8bbe\u7f6e\u767e\u5206\u6bd4\uff01\uff01"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 127
    :cond_3
    :goto_1
    iget v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    cmpl-float v0, v0, v1

    const/high16 v2, 0x40000000    # 2.0f

    if-lez v0, :cond_7

    .line 129
    iget v0, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    if-lez v0, :cond_4

    goto :goto_2

    .line 132
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_2
    if-gtz v0, :cond_5

    .line 135
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_5
    int-to-float p1, v0

    .line 138
    iget p2, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 139
    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-eqz v1, :cond_6

    iget v1, p0, Landroids/views/RatioImageView;->mMaxWidthWhenWidthFixDrawable:I

    if-lez v1, :cond_6

    if-le p1, v1, :cond_6

    int-to-float p1, v1

    div-float/2addr p1, p2

    float-to-int v0, p1

    move p1, v1

    .line 144
    :cond_6
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 145
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 144
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 146
    :cond_7
    iget v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    .line 148
    iget v0, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    if-lez v0, :cond_8

    goto :goto_3

    .line 151
    :cond_8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    :goto_3
    if-gtz v0, :cond_9

    .line 154
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    return-void

    :cond_9
    int-to-float p1, v0

    .line 157
    iget p2, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    mul-float/2addr p1, p2

    float-to-int p1, p1

    .line 158
    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eqz v1, :cond_a

    iget v1, p0, Landroids/views/RatioImageView;->mMaxHeightWhenHeightFixDrawable:I

    if-lez v1, :cond_a

    if-le p1, v1, :cond_a

    int-to-float p1, v1

    div-float/2addr p1, p2

    float-to-int v0, p1

    move p1, v1

    .line 163
    :cond_a
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 164
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 163
    invoke-super {p0, p2, p1}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 165
    :cond_b
    iget v0, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    if-lez v0, :cond_c

    iget v1, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    if-lez v1, :cond_c

    .line 168
    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 169
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 168
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    goto :goto_4

    .line 171
    :cond_c
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    :goto_4
    return-void
.end method

.method public setHeightRatio(F)V
    .locals 2

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 220
    iget v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 222
    iput v1, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    .line 223
    iput p1, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    cmpl-float p1, p1, p1

    if-eqz p1, :cond_1

    .line 225
    :cond_0
    invoke-virtual {p0}, Landroids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 105
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 106
    invoke-direct {p0}, Landroids/views/RatioImageView;->onSetDrawable()V

    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    .line 99
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 100
    invoke-direct {p0}, Landroids/views/RatioImageView;->onSetDrawable()V

    return-void
.end method

.method public setIsFitDrawableSizeRatio(ZZ)V
    .locals 3

    const/high16 v0, -0x40800000    # -1.0f

    .line 183
    iput v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    iput v0, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    .line 184
    iget-boolean v1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 185
    iget-boolean v2, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 186
    iput-boolean p1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 187
    iput-boolean p2, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    .line 188
    invoke-virtual {p0}, Landroids/views/RatioImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    const/high16 p2, 0x3f800000    # 1.0f

    .line 190
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 191
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v0, p1

    iput v0, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    goto :goto_0

    .line 193
    :cond_0
    iput v0, p0, Landroids/views/RatioImageView;->mDrawableSizeRatio:F

    .line 195
    :goto_0
    iget-boolean p1, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    if-ne v1, p1, :cond_1

    iget-boolean p1, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    if-eq v2, p1, :cond_2

    .line 197
    :cond_1
    invoke-virtual {p0}, Landroids/views/RatioImageView;->requestLayout()V

    :cond_2
    return-void
.end method

.method public setWidthAndHeight(II)V
    .locals 2

    .line 230
    iget v0, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    .line 231
    iget v1, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    .line 232
    iput p1, p0, Landroids/views/RatioImageView;->mDesiredWidth:I

    .line 233
    iput p2, p0, Landroids/views/RatioImageView;->mDesiredHeight:I

    if-ne v0, p1, :cond_0

    if-eq v1, p2, :cond_1

    .line 235
    :cond_0
    invoke-virtual {p0}, Landroids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setWidthRatio(F)V
    .locals 2

    const/4 v0, 0x0

    .line 205
    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsHeightFitDrawableSizeRatio:Z

    iput-boolean v0, p0, Landroids/views/RatioImageView;->mIsWidthFitDrawableSizeRatio:Z

    .line 207
    iget v0, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    const/high16 v1, -0x40800000    # -1.0f

    .line 208
    iput v1, p0, Landroids/views/RatioImageView;->mHeightRatio:F

    .line 209
    iput p1, p0, Landroids/views/RatioImageView;->mWidthRatio:F

    cmpl-float p1, p1, p1

    if-nez p1, :cond_0

    cmpl-float p1, v0, v1

    if-eqz p1, :cond_1

    .line 211
    :cond_0
    invoke-virtual {p0}, Landroids/views/RatioImageView;->requestLayout()V

    :cond_1
    return-void
.end method
