.class public Landroids/views/BitmapScrollPicker;
.super Landroids/views/ScrollPickerView;
.source "BitmapScrollPicker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroids/views/ScrollPickerView<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# static fields
.field public static final DRAW_MODE_CENTER:I = 0x2

.field public static final DRAW_MODE_FULL:I = 0x1

.field public static final DRAW_MODE_SPECIFIED_SIZE:I = 0x3


# instance fields
.field private mDrawMode:I

.field private mMaxScale:F

.field private mMeasureHeight:I

.field private mMeasureWidth:I

.field private mMinScale:F

.field private mRect1:Landroid/graphics/Rect;

.field private mRect2:Landroid/graphics/Rect;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mSpecifiedSizeHeight:I

.field private mSpecifiedSizeRect:Landroid/graphics/Rect;

.field private mSpecifiedSizeWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Landroids/views/BitmapScrollPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Landroids/views/ScrollPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x2

    .line 38
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 41
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    .line 42
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    const/4 p1, -0x1

    .line 255
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 256
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 52
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    .line 53
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    .line 54
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    .line 55
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    .line 57
    invoke-direct {p0, p2}, Landroids/views/BitmapScrollPicker;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 62
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker:[I

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 64
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_mode:I

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    .line 66
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_width:I

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 68
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker_spv_draw_bitmap_height:I

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v0

    iput v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 70
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker_spv_min_scale:I

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    .line 71
    sget v0, Lcom/kukugtu/moduleplotting/R$styleable;->BitmapScrollPicker_spv_max_scale:I

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    .line 72
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_0
    return-void
.end method

.method private scale(Landroid/graphics/Rect;IIF)V
    .locals 4

    .line 177
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    return-void

    .line 183
    :cond_0
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    cmpl-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    .line 185
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    .line 186
    iget p4, p1, Landroid/graphics/Rect;->left:I

    int-to-float p4, p4

    add-float/2addr p4, p2

    float-to-int p4, p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 187
    iget p4, p1, Landroid/graphics/Rect;->right:I

    int-to-float p4, p4

    sub-float/2addr p4, p2

    float-to-int p2, p4

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 188
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 189
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float/2addr p2, p3

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_1
    const/4 v0, 0x1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    if-nez p2, :cond_3

    int-to-float p2, p3

    .line 205
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p3

    sub-float p3, p2, p3

    div-float/2addr p3, p2

    .line 206
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p4, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v0, p4

    mul-float/2addr v0, p3

    add-float/2addr p4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    sub-float/2addr p2, p4

    div-float/2addr p2, v1

    .line 207
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    iget v2, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p3

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr v0, p3

    sub-float/2addr p4, v0

    div-float/2addr p4, v1

    goto/16 :goto_2

    .line 209
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    .line 210
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v3, 0x0

    if-ne p2, v2, :cond_5

    cmpg-float v2, p4, v3

    if-ltz v2, :cond_6

    :cond_5
    if-ne p2, v0, :cond_7

    cmpl-float p2, p4, v3

    if-lez p2, :cond_7

    .line 197
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p4

    int-to-float p4, p4

    mul-float/2addr p3, p4

    sub-float/2addr p2, p3

    div-float/2addr p2, v1

    .line 198
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    :goto_1
    int-to-float v0, v0

    mul-float/2addr p4, v0

    sub-float/2addr p3, p4

    div-float p4, p3, v1

    goto :goto_2

    .line 200
    :cond_7
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    int-to-float p3, p3

    div-float/2addr p2, p3

    .line 201
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    iget p4, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v0, p4

    mul-float/2addr v0, p2

    add-float/2addr p4, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p4, v0

    sub-float/2addr p3, p4

    div-float/2addr p3, v1

    .line 202
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    iget v2, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    sub-float/2addr v2, v0

    mul-float/2addr v2, p2

    add-float/2addr v0, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float/2addr v0, p2

    sub-float/2addr p4, v0

    div-float/2addr p4, v1

    move p2, p3

    .line 213
    :goto_2
    iget p3, p1, Landroid/graphics/Rect;->left:I

    int-to-float p3, p3

    add-float/2addr p3, p2

    float-to-int p3, p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 214
    iget p3, p1, Landroid/graphics/Rect;->right:I

    int-to-float p3, p3

    sub-float/2addr p3, p2

    float-to-int p2, p3

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 215
    iget p2, p1, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    add-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 216
    iget p2, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    sub-float/2addr p2, p4

    float-to-int p2, p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void
.end method


# virtual methods
.method public drawItem(Landroid/graphics/Canvas;Ljava/util/List;IIFF)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;IIFF)V"
        }
    .end annotation

    .line 115
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getItemSize()I

    move-result v0

    .line 116
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 118
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->right:I

    .line 119
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p3, Landroid/graphics/Rect;->bottom:I

    .line 126
    iget p3, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    const/4 p3, 0x0

    .line 128
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 129
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    float-to-int v3, p6

    add-int/2addr v3, p3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 130
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float v3, v0

    add-float/2addr p6, v3

    int-to-float p3, p3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    iput p3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_0

    .line 132
    :cond_0
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    float-to-int v3, p6

    add-int/2addr v3, p3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 133
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float v3, v0

    add-float/2addr p6, v3

    int-to-float p3, p3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    .line 135
    :goto_0
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 136
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Landroids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 137
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_4

    :cond_1
    const/4 v2, 0x3

    if-ne p3, v2, :cond_3

    .line 139
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 140
    iget p3, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    sub-int p3, v0, p3

    div-int/lit8 p3, p3, 0x2

    .line 142
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    float-to-int p6, p6

    add-int/2addr p6, p3

    iput p6, v2, Landroid/graphics/Rect;->left:I

    .line 143
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    add-int/2addr p6, v2

    iput p6, p3, Landroid/graphics/Rect;->right:I

    goto :goto_1

    .line 145
    :cond_2
    iget p3, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    sub-int p3, v0, p3

    div-int/lit8 p3, p3, 0x2

    .line 147
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    float-to-int p6, p6

    add-int/2addr p6, p3

    iput p6, v2, Landroid/graphics/Rect;->top:I

    .line 148
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    add-int/2addr p6, v2

    iput p6, p3, Landroid/graphics/Rect;->bottom:I

    .line 150
    :goto_1
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 151
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Landroids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 152
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 154
    :cond_3
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p3

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz p3, :cond_4

    .line 155
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    int-to-float v3, v0

    .line 156
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    goto :goto_2

    .line 158
    :cond_4
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    mul-float/2addr p3, v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr p3, v3

    int-to-float v3, v0

    .line 159
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    :goto_2
    int-to-float v4, v4

    mul-float/2addr v4, p3

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    float-to-int p3, v3

    .line 161
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 162
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float p3, p3

    add-float v3, p6, p3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 163
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float v3, v0

    add-float/2addr p6, v3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    iput p3, v2, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 166
    :cond_5
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float p3, p3

    add-float v3, p6, p3

    float-to-int v3, v3

    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 167
    iget-object v2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    int-to-float v3, v0

    add-float/2addr p6, v3

    sub-float/2addr p6, p3

    float-to-int p3, p6

    iput p3, v2, Landroid/graphics/Rect;->bottom:I

    .line 169
    :goto_3
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    iget-object p6, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    invoke-virtual {p3, p6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 170
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-direct {p0, p3, p4, v0, p5}, Landroids/views/BitmapScrollPicker;->scale(Landroid/graphics/Rect;IIF)V

    .line 171
    iget-object p3, p0, Landroids/views/BitmapScrollPicker;->mRect1:Landroid/graphics/Rect;

    iget-object p4, p0, Landroids/views/BitmapScrollPicker;->mRectTemp:Landroid/graphics/Rect;

    invoke-virtual {p1, p2, p3, p4, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_4
    return-void
.end method

.method public getDrawMode()I
    .locals 1

    .line 277
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 297
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 293
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 78
    invoke-super {p0, p1, p2, p3, p4}, Landroids/views/ScrollPickerView;->onSizeChanged(IIII)V

    .line 79
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    .line 80
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    .line 82
    iget p2, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 p3, 0x1

    if-ne p2, p3, :cond_1

    .line 83
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 84
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 85
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p2, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 87
    :cond_0
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 88
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p2, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_1
    const/4 p3, 0x3

    if-ne p2, p3, :cond_3

    .line 91
    iget p2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_2

    .line 92
    iget p2, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput p2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 93
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 95
    :cond_2
    iget p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    iget p2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    invoke-virtual {p0, p1, p2}, Landroids/views/BitmapScrollPicker;->setDrawModeSpecifiedSize(II)V

    goto :goto_1

    .line 98
    :cond_3
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 99
    iget p1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getItemWidth()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    .line 101
    :cond_4
    iget p1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getItemHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 103
    :goto_0
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 104
    iget-object p2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 p3, p3, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->top:I

    .line 105
    iget-object p2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 107
    :cond_5
    iget-object p2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 p3, p3, 0x2

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->left:I

    .line 108
    iget-object p2, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget p3, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 p3, p3, 0x2

    add-int/2addr p3, p1

    iput p3, p2, Landroid/graphics/Rect;->right:I

    :goto_1
    return-void
.end method

.method public setDrawMode(I)V
    .locals 2

    .line 227
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getItemWidth()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 230
    :cond_0
    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->getItemHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 232
    :goto_0
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mDrawMode:I

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 234
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 236
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 238
    :cond_1
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 239
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v0, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    iput v0, p1, Landroid/graphics/Rect;->right:I

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    goto :goto_1

    .line 244
    :cond_3
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 245
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->top:I

    .line 246
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_1

    .line 248
    :cond_4
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->left:I

    .line 249
    iget-object p1, p0, Landroids/views/BitmapScrollPicker;->mRect2:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v0

    iput v1, p1, Landroid/graphics/Rect;->right:I

    .line 252
    :goto_1
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method

.method public setDrawModeSpecifiedSize(II)V
    .locals 2

    .line 259
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->top:I

    .line 261
    iget-object v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureHeight:I

    sub-int/2addr v1, p2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p2

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    .line 263
    :cond_0
    iget-object v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/graphics/Rect;->left:I

    .line 264
    iget-object v0, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeRect:Landroid/graphics/Rect;

    iget v1, p0, Landroids/views/BitmapScrollPicker;->mMeasureWidth:I

    sub-int/2addr v1, p1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/graphics/Rect;->right:I

    .line 266
    :goto_0
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeWidth:I

    .line 267
    iput p2, p0, Landroids/views/BitmapScrollPicker;->mSpecifiedSizeHeight:I

    .line 268
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method

.method public setItemScale(FF)V
    .locals 0

    .line 287
    iput p1, p0, Landroids/views/BitmapScrollPicker;->mMinScale:F

    .line 288
    iput p2, p0, Landroids/views/BitmapScrollPicker;->mMaxScale:F

    .line 289
    invoke-virtual {p0}, Landroids/views/BitmapScrollPicker;->invalidate()V

    return-void
.end method
