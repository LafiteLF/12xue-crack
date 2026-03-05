.class public Lcom/apicloud/devlop/FNImageClip/ClipView;
.super Landroid/view/View;
.source "ClipView.java"


# static fields
.field static final MIN_SIZE:I

.field public static clipHeight:I

.field public static clipWidth:I


# instance fields
.field private isCircleClip:Z

.field private isFirstDrawCircle:Z

.field private isInCircle:Z

.field private isInRect:Z

.field private isInbottom:Z

.field private isInleft:Z

.field private isInright:Z

.field private isIntop:Z

.field private mBgColor:I

.field private mBorderColor:I

.field private mBorderWidth:I

.field private mBottom:F

.field private mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

.field private mHideGrid:Z

.field private mHighDefinition:Z

.field private mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

.field private mImgView:Landroid/widget/ImageView;

.field private mLeft:F

.field private mMode:Ljava/lang/String;

.field private mPaint:Landroid/graphics/Paint;

.field private mPointX:F

.field private mPointY:F

.field private mR:F

.field private mRight:F

.field private mTop:F

.field private mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

.field private useMinHeight:Z

.field private useMinWidth:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    .line 279
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    sput v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInleft:Z

    .line 33
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInright:Z

    .line 34
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isIntop:Z

    .line 35
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInbottom:Z

    .line 36
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRect:Z

    .line 37
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInCircle:Z

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isFirstDrawCircle:Z

    .line 46
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isCircleClip:Z

    .line 194
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->useMinWidth:Z

    .line 195
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->useMinHeight:Z

    .line 199
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHideGrid:Z

    .line 57
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    .line 58
    invoke-virtual {p0, v0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 32
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInleft:Z

    .line 33
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInright:Z

    .line 34
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isIntop:Z

    .line 35
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInbottom:Z

    .line 36
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRect:Z

    .line 37
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInCircle:Z

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isFirstDrawCircle:Z

    .line 46
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isCircleClip:Z

    .line 194
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->useMinWidth:Z

    .line 195
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->useMinHeight:Z

    .line 199
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHideGrid:Z

    .line 63
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    .line 64
    invoke-virtual {p0, p2}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setDrawingCacheEnabled(Z)V

    return-void
.end method

.method private calculateClipRect()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 86
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setLeft(I)V

    .line 88
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v1

    if-gt v0, v1, :cond_2

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 91
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 92
    :cond_2
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setRight(I)V

    .line 93
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v1

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 96
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v1

    if-le v0, v1, :cond_5

    .line 97
    :cond_4
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setTop(I)V

    .line 98
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 100
    :cond_5
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v1

    if-gt v0, v1, :cond_6

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 101
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 102
    :cond_6
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setBottom(I)V

    .line 103
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 105
    :cond_7
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->setClipRect(Lcom/apicloud/devlop/FNImageClip/ClipRect;)V

    return-void
.end method

.method private drawBorder(Landroid/graphics/Canvas;)V
    .locals 8

    .line 188
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 189
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 190
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 191
    iget v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget-object v7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawBorderLines(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    .line 206
    iget v3, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v5, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sub-float v1, v3, v5

    const/high16 v2, 0x40400000    # 3.0f

    div-float/2addr v1, v2

    sub-float v10, v3, v1

    sub-float v1, v3, v5

    const/high16 v4, 0x40000000    # 2.0f

    mul-float/2addr v1, v4

    div-float/2addr v1, v2

    sub-float v15, v3, v1

    .line 208
    iget v1, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v6, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sub-float v7, v6, v1

    div-float/2addr v7, v2

    add-float/2addr v7, v1

    sub-float/2addr v6, v1

    mul-float/2addr v6, v4

    div-float/2addr v6, v2

    add-float v19, v1, v6

    .line 211
    iget-boolean v1, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHideGrid:Z

    if-nez v1, :cond_0

    .line 212
    iget-object v6, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v7

    move v4, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 213
    iget v1, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v2, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget-object v3, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v16, p1

    move/from16 v17, v19

    move/from16 v18, v1

    move/from16 v20, v2

    move-object/from16 v21, v3

    invoke-virtual/range {v16 .. v21}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 214
    iget v7, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v9, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget-object v11, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    move v8, v10

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 215
    iget v12, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v14, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget-object v1, v0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move v13, v15

    move-object/from16 v16, v1

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;)V
    .locals 8

    .line 147
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 148
    iget-boolean v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isFirstDrawCircle:Z

    if-eqz v1, :cond_0

    .line 149
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 151
    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mR:F

    .line 153
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    .line 155
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v2, v1

    iput v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    const/4 v1, 0x0

    .line 156
    iput-boolean v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isFirstDrawCircle:Z

    .line 158
    :cond_0
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    iget v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    iget v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mR:F

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 159
    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 160
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 161
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 163
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v0

    int-to-float v5, v0

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 164
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 165
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 167
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    iget v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mR:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 168
    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mR:F

    sub-float v1, p1, v0

    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    add-float/2addr p1, v0

    .line 169
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 170
    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    sub-float v1, p1, v0

    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    add-float/2addr p1, v0

    .line 171
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    return-void
.end method

.method private drawClipRect(Landroid/graphics/Canvas;)V
    .locals 14

    .line 175
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 176
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 177
    iget v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget-object v7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 179
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 180
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 181
    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget-object v7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 182
    iget v9, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v10, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v0

    int-to-float v11, v0

    iget v12, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget-object v13, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 183
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v0

    int-to-float v4, v0

    iget v5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget-object v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 184
    iget v9, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v0

    int-to-float v10, v0

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getHeight()I

    move-result v0

    int-to-float v11, v0

    iget-object v12, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPaint:Landroid/graphics/Paint;

    const/4 v8, 0x0

    move-object v7, p1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private imgMatrixValues()V
    .locals 10

    .line 136
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 139
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 140
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/ClipRect;

    const/4 v3, 0x2

    aget v4, v2, v3

    float-to-int v4, v4

    const/4 v5, 0x5

    aget v6, v2, v5

    float-to-int v6, v6

    aget v3, v2, v3

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v7

    int-to-float v7, v7

    const/4 v8, 0x0

    aget v9, v2, v8

    mul-float/2addr v7, v9

    add-float/2addr v3, v7

    float-to-int v3, v3

    aget v5, v2, v5

    .line 142
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    aget v2, v2, v8

    mul-float/2addr v1, v2

    add-float/2addr v5, v1

    float-to-int v1, v5

    invoke-direct {v0, v4, v6, v3, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;-><init>(IIII)V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImageRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 143
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->calculateClipRect()V

    return-void
.end method

.method private isInBottom(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 250
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 251
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 252
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sget v2, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isInCircle(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 270
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 271
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 272
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    sub-float/2addr p1, v4

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v0, v4

    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mR:F

    float-to-double v4, p1

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isInLeft(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 220
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 221
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 222
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sget v2, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isInRight(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 230
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 231
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 232
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v2, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isInTop(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 240
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 241
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 242
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sget v2, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    cmpl-float v1, v0, v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ltz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v5, v5

    add-float/2addr v4, v5

    cmpg-float v0, v0, v4

    if-gtz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    sub-float/2addr v1, v4

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_2

    move v1, v2

    goto :goto_2

    :cond_2
    move v1, v3

    :goto_2
    and-int/2addr v0, v1

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v4, v4

    add-float/2addr v1, v4

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_3

    move p1, v2

    goto :goto_3

    :cond_3
    move p1, v3

    :goto_3
    and-int/2addr p1, v0

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v3
.end method

.method private isMoveClipRect(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 260
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 261
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 262
    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sget v2, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v3, v2

    add-float/2addr v1, v3

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    int-to-float v3, v2

    sub-float/2addr v1, v3

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    int-to-float v1, v2

    add-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    int-to-float v1, v2

    sub-float/2addr v0, v1

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private setClipRect()V
    .locals 2

    .line 425
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHighDefinition:Z

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setLeft(I)V

    .line 427
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setTop(I)V

    .line 428
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setRight(I)V

    .line 429
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->setBottom(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getmBottom()F
    .locals 1

    .line 458
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    return v0
.end method

.method public getmLeft()F
    .locals 1

    .line 434
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    return v0
.end method

.method public getmRight()F
    .locals 1

    .line 442
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    return v0
.end method

.method public getmTop()F
    .locals 1

    .line 450
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    return v0
.end method

.method public initParams(Lcom/apicloud/devlop/FNImageClip/ClipRect;Landroid/widget/ImageView;IIILjava/lang/String;ZZ)V
    .locals 1

    .line 70
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 71
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 72
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 73
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 74
    iput p3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBgColor:I

    .line 75
    iput p4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderColor:I

    .line 76
    iput p5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBorderWidth:I

    .line 77
    iput-object p6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    .line 78
    iput-boolean p7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isCircleClip:Z

    .line 79
    iput-boolean p8, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHighDefinition:Z

    .line 80
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 81
    iput-object p2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mImgView:Landroid/widget/ImageView;

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 120
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHighDefinition:Z

    if-eqz v0, :cond_0

    .line 121
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->imgMatrixValues()V

    .line 123
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isCircleClip:Z

    if-eqz v0, :cond_1

    .line 124
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->drawCircle(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 126
    :cond_1
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->drawClipRect(Landroid/graphics/Canvas;)V

    .line 127
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->drawBorder(Landroid/graphics/Canvas;)V

    .line 128
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->drawBorderLines(Landroid/graphics/Canvas;)V

    .line 131
    :goto_0
    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipWidth:I

    .line 132
    iget p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sub-float/2addr p1, v0

    float-to-int p1, p1

    sput p1, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipHeight:I

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    .line 285
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const-string v1, "image"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_17

    if-eq v0, v2, :cond_16

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto/16 :goto_8

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInleft:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 318
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 321
    iput v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 323
    :cond_1
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v6, v5

    sub-float v6, v4, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_2

    int-to-float v0, v5

    sub-float/2addr v4, v0

    .line 324
    iput v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 327
    :cond_2
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setClipRect()V

    .line 328
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto :goto_0

    :cond_3
    return v3

    .line 333
    :cond_4
    :goto_0
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isIntop:Z

    if-eqz v0, :cond_8

    .line 334
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 335
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_5

    .line 337
    iput v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 339
    :cond_5
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v6, v5

    sub-float v6, v4, v6

    cmpl-float v0, v0, v6

    if-ltz v0, :cond_6

    int-to-float v0, v5

    sub-float/2addr v4, v0

    .line 340
    iput v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 342
    :cond_6
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setClipRect()V

    .line 343
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto :goto_1

    :cond_7
    return v3

    .line 348
    :cond_8
    :goto_1
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInright:Z

    if-eqz v0, :cond_c

    .line 349
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 350
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 351
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_9

    .line 352
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 354
    :cond_9
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v6, v5

    sub-float/2addr v4, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_a

    int-to-float v4, v5

    add-float/2addr v0, v4

    .line 355
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 357
    :cond_a
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setClipRect()V

    .line 358
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto :goto_2

    :cond_b
    return v3

    .line 363
    :cond_c
    :goto_2
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInbottom:Z

    if-eqz v0, :cond_10

    .line 364
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    .line 365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 366
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-lez v0, :cond_d

    .line 367
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 369
    :cond_d
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    sget v5, Lcom/apicloud/devlop/FNImageClip/ClipView;->MIN_SIZE:I

    int-to-float v6, v5

    sub-float/2addr v4, v6

    cmpl-float v4, v0, v4

    if-ltz v4, :cond_e

    int-to-float v4, v5

    add-float/2addr v0, v4

    .line 370
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 372
    :cond_e
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setClipRect()V

    .line 373
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto :goto_3

    :cond_f
    return v3

    .line 378
    :cond_10
    :goto_3
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRect:Z

    if-eqz v0, :cond_14

    .line 379
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 380
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    iget v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    sub-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    .line 381
    iget v5, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    iget v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    sub-float/2addr v5, v6

    div-float/2addr v5, v4

    .line 382
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    sub-float/2addr v4, v0

    .line 383
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    add-float/2addr v6, v0

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    sub-float/2addr v0, v5

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    add-float/2addr v7, v5

    cmpl-float v5, v4, v2

    if-ltz v5, :cond_11

    .line 386
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getWidth()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, v6, v5

    if-gtz v5, :cond_11

    .line 387
    iput v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 388
    iput v6, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    :cond_11
    cmpl-float v2, v0, v2

    if-ltz v2, :cond_12

    .line 390
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->getHeight()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v7, v2

    if-gtz v2, :cond_12

    .line 391
    iput v7, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 392
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 394
    :cond_12
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->setClipRect()V

    .line 395
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto :goto_4

    :cond_13
    return v3

    .line 400
    :cond_14
    :goto_4
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInCircle:Z

    if-eqz v0, :cond_20

    .line 401
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    .line 402
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointX:F

    .line 403
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mPointY:F

    .line 404
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    goto/16 :goto_8

    :cond_15
    return v3

    .line 411
    :cond_16
    iput-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInleft:Z

    .line 412
    iput-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInright:Z

    .line 413
    iput-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isIntop:Z

    .line 414
    iput-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInbottom:Z

    .line 415
    iput-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRect:Z

    .line 417
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 287
    :cond_17
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInLeft(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRight(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInTop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 288
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInBottom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_19

    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isMoveClipRect(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_18

    goto :goto_5

    :cond_18
    move v0, v3

    goto :goto_6

    :cond_19
    :goto_5
    move v0, v2

    .line 291
    :goto_6
    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mMode:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto :goto_7

    :cond_1a
    move v3, v0

    .line 294
    :goto_7
    iget-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isCircleClip:Z

    if-nez v0, :cond_1f

    .line 295
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInLeft(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 296
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInleft:Z

    .line 298
    :cond_1b
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInTop(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 299
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isIntop:Z

    .line 301
    :cond_1c
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRight(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 302
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInright:Z

    .line 304
    :cond_1d
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInBottom(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 305
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInbottom:Z

    .line 307
    :cond_1e
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isMoveClipRect(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 308
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInRect:Z

    goto :goto_8

    .line 311
    :cond_1f
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInCircle(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_20

    .line 312
    iput-boolean v2, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isInCircle:Z

    :cond_20
    :goto_8
    return v3
.end method

.method public restRect(Lcom/apicloud/devlop/FNImageClip/ClipRect;)V
    .locals 1

    .line 109
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    .line 110
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    .line 111
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    .line 112
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    .line 113
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    const/4 p1, 0x1

    .line 114
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->isFirstDrawCircle:Z

    .line 115
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/ClipView;->invalidate()V

    return-void
.end method

.method public setHideGrid(Z)V
    .locals 0

    .line 202
    iput-boolean p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mHideGrid:Z

    return-void
.end method

.method public setImgTouchListener(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V
    .locals 0

    .line 472
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTounchListener:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    return-void
.end method

.method public setmBottom(F)V
    .locals 0

    .line 462
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    return-void
.end method

.method public setmLeft(F)V
    .locals 0

    .line 438
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    return-void
.end method

.method public setmRight(F)V
    .locals 0

    .line 446
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    return-void
.end method

.method public setmTop(F)V
    .locals 0

    .line 454
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 467
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ClipView [mLeft="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mLeft:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mRight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mRight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mTop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mTop:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mBottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/ClipView;->mBottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
