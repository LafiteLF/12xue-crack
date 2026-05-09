.class public Lcom/artifex/mupdf/mini/PageView;
.super Landroid/view/View;
.source "PageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;
    }
.end annotation


# instance fields
.field protected actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

.field protected bitmap:Landroid/graphics/Bitmap;

.field protected bitmapH:I

.field protected bitmapW:I

.field protected canvasH:I

.field protected canvasW:I

.field protected detector:Landroid/view/GestureDetector;

.field protected error:Z

.field protected errorPaint:Landroid/graphics/Paint;

.field protected errorPath:Landroid/graphics/Path;

.field protected hitPaint:Landroid/graphics/Paint;

.field protected hits:[Lcom/artifex/mupdf/fitz/Quad;

.field protected linkPaint:Landroid/graphics/Paint;

.field protected links:[Lcom/artifex/mupdf/fitz/Link;

.field private mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

.field protected maxScale:F

.field protected minScale:F

.field protected pageScale:F

.field protected scaleDetector:Landroid/view/ScaleGestureDetector;

.field protected scrollX:I

.field protected scrollY:I

.field protected scroller:Landroid/widget/Scroller;

.field protected showLinks:Z

.field protected viewScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 67
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    .line 69
    new-instance p2, Landroid/view/GestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/mini/PageView;->detector:Landroid/view/GestureDetector;

    .line 70
    new-instance p2, Landroid/view/ScaleGestureDetector;

    invoke-direct {p2, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object p2, p0, Lcom/artifex/mupdf/mini/PageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 71
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->pageScale:F

    .line 72
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    .line 73
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->minScale:F

    const/high16 p1, 0x40000000    # 2.0f

    .line 74
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->maxScale:F

    .line 75
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->linkPaint:Landroid/graphics/Paint;

    const/16 p2, 0x20

    const/16 v0, 0xff

    const/4 v1, 0x0

    .line 76
    invoke-virtual {p1, p2, v1, v1, v0}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 77
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->hitPaint:Landroid/graphics/Paint;

    .line 78
    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 79
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->hitPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 80
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPaint:Landroid/graphics/Paint;

    const/16 p2, 0x50

    .line 81
    invoke-virtual {p1, v0, v0, p2, p2}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 82
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 83
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 84
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPath:Landroid/graphics/Path;

    const/high16 p2, -0x3d380000    # -100.0f

    .line 85
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 86
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPath:Landroid/graphics/Path;

    const/high16 v0, 0x42c80000    # 100.0f

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 87
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPath:Landroid/graphics/Path;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 88
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->errorPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public goBackward()V
    .locals 8

    .line 293
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 294
    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    if-gtz v4, :cond_3

    .line 295
    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    if-gtz v3, :cond_2

    .line 296
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz v0, :cond_0

    .line 297
    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->goBackward()V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz v0, :cond_1

    .line 301
    invoke-interface {v0}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->onBackward()V

    :cond_1
    return-void

    .line 307
    :cond_2
    iget-object v2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v5, v0, 0xa

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget v1, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    sub-int/2addr v0, v1

    sub-int v6, v0, v4

    const/16 v7, 0x1f4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 309
    :cond_3
    iget-object v2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    const/4 v5, 0x0

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    neg-int v0, v0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v6, v0, 0xa

    const/16 v7, 0xfa

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public goForward()V
    .locals 8

    .line 316
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 317
    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    add-int v1, v4, v0

    iget v2, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    if-lt v1, v2, :cond_3

    .line 318
    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    add-int v1, v3, v0

    iget v2, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    if-lt v1, v2, :cond_2

    .line 319
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz v0, :cond_0

    .line 320
    invoke-virtual {v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->goForward()V

    .line 323
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz v0, :cond_1

    .line 324
    invoke-interface {v0}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->onForward()V

    :cond_1
    return-void

    .line 330
    :cond_2
    iget-object v2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v5, v0, 0xa

    neg-int v6, v4

    const/16 v7, 0x1f4

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 332
    :cond_3
    iget-object v2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    const/4 v5, 0x0

    mul-int/lit8 v0, v0, 0x9

    div-int/lit8 v6, v0, 0xa

    const/16 v7, 0xfa

    invoke-virtual/range {v2 .. v7}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 335
    :goto_0
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 153
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/Scroller;->forceFinished(Z)V

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 339
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    .line 340
    iget-boolean v1, v0, Lcom/artifex/mupdf/mini/PageView;->error:Z

    if-eqz v1, :cond_9

    .line 341
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 342
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->errorPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/artifex/mupdf/mini/PageView;->errorPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_6

    .line 346
    :cond_0
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 347
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrX()I

    move-result v1

    iput v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    .line 348
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    iput v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 349
    invoke-virtual/range {p0 .. p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    .line 353
    :cond_1
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    const/4 v8, 0x0

    if-gt v1, v2, :cond_2

    .line 354
    iput v8, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    sub-int/2addr v2, v1

    .line 355
    div-int/lit8 v2, v2, 0x2

    :goto_0
    move v9, v2

    goto :goto_1

    .line 357
    :cond_2
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    if-gez v1, :cond_3

    .line 358
    iput v8, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    .line 361
    :cond_3
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    iget v3, v0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    sub-int v4, v2, v3

    if-le v1, v4, :cond_4

    sub-int/2addr v2, v3

    .line 362
    iput v2, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    .line 365
    :cond_4
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    neg-int v2, v1

    goto :goto_0

    .line 369
    :goto_1
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    if-gt v1, v2, :cond_5

    .line 370
    iput v8, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    sub-int/2addr v2, v1

    .line 371
    div-int/lit8 v2, v2, 0x2

    :goto_2
    move v10, v2

    goto :goto_3

    .line 373
    :cond_5
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    if-gez v1, :cond_6

    .line 374
    iput v8, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 377
    :cond_6
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget v3, v0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    sub-int v4, v2, v3

    if-le v1, v4, :cond_7

    sub-int/2addr v2, v3

    .line 378
    iput v2, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 381
    :cond_7
    iget v1, v0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    neg-int v2, v1

    goto :goto_2

    .line 384
    :goto_3
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    add-int/2addr v2, v9

    iget v3, v0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    add-int/2addr v3, v10

    invoke-direct {v1, v9, v10, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 385
    iget-object v2, v0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, Landroid/graphics/Rect;

    check-cast v3, Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v4, v1, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 388
    iget-boolean v1, v0, Lcom/artifex/mupdf/mini/PageView;->showLinks:Z

    if-eqz v1, :cond_8

    iget-object v11, v0, Lcom/artifex/mupdf/mini/PageView;->links:[Lcom/artifex/mupdf/fitz/Link;

    if-eqz v11, :cond_8

    array-length v1, v11

    if-lez v1, :cond_8

    .line 390
    array-length v12, v11

    move v13, v8

    :goto_4
    if-ge v13, v12, :cond_8

    .line 393
    aget-object v1, v11, v13

    .line 394
    iget-object v1, v1, Lcom/artifex/mupdf/fitz/Link;->bounds:Lcom/artifex/mupdf/fitz/Rect;

    int-to-float v2, v9

    .line 395
    iget v3, v1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v4, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v3, v4

    add-float/2addr v3, v2

    int-to-float v4, v10

    iget v5, v1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v6, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v4

    iget v6, v1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v14, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v6, v14

    add-float/2addr v6, v2

    iget v1, v1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v2, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v1, v2

    add-float v14, v4, v1

    iget-object v15, v0, Lcom/artifex/mupdf/mini/PageView;->linkPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v14

    move-object v6, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 399
    :cond_8
    iget-object v1, v0, Lcom/artifex/mupdf/mini/PageView;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    if-eqz v1, :cond_9

    array-length v2, v1

    if-lez v2, :cond_9

    .line 401
    array-length v2, v1

    :goto_5
    if-ge v8, v2, :cond_9

    .line 404
    aget-object v3, v1, v8

    .line 405
    new-instance v4, Landroid/graphics/Path;

    invoke-direct {v4}, Landroid/graphics/Path;-><init>()V

    int-to-float v5, v9

    .line 406
    iget v6, v3, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v11, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v6, v11

    add-float/2addr v6, v5

    int-to-float v11, v10

    iget v12, v3, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v13, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v11

    invoke-virtual {v4, v6, v12}, Landroid/graphics/Path;->moveTo(FF)V

    .line 407
    iget v6, v3, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v12, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v6, v12

    add-float/2addr v6, v5

    iget v12, v3, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v13, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v11

    invoke-virtual {v4, v6, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 408
    iget v6, v3, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    iget v12, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v6, v12

    add-float/2addr v6, v5

    iget v12, v3, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    iget v13, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v12, v13

    add-float/2addr v12, v11

    invoke-virtual {v4, v6, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 409
    iget v6, v3, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iget v12, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    iget v3, v3, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iget v6, v0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr v3, v6

    add-float/2addr v11, v3

    invoke-virtual {v4, v5, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 410
    invoke-virtual {v4}, Landroid/graphics/Path;->close()V

    .line 411
    iget-object v3, v0, Lcom/artifex/mupdf/mini/PageView;->hitPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v4, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    return-void
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 11

    .line 239
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 240
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    const/4 v1, 0x0

    if-le p1, v0, :cond_0

    sub-int/2addr p1, v0

    move v8, p1

    goto :goto_0

    :cond_0
    move v8, v1

    .line 241
    :goto_0
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    if-le p1, v0, :cond_1

    sub-int v1, p1, v0

    :cond_1
    move v10, v1

    .line 242
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 243
    iget-object v2, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    neg-float p1, p3

    float-to-int v5, p1

    neg-float p1, p4

    float-to-int v6, p1

    const/4 v7, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v10}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 244
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    :cond_2
    return p2
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .line 161
    iget-boolean p1, p0, Lcom/artifex/mupdf/mini/PageView;->showLinks:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/artifex/mupdf/mini/PageView;->showLinks:Z

    .line 162
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 7

    .line 255
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 256
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    .line 257
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    .line 258
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result p1

    .line 259
    iget v3, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    div-float/2addr v3, v4

    .line 260
    iget v5, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    int-to-float v5, v5

    add-float/2addr v5, v2

    div-float/2addr v5, v4

    mul-float/2addr v4, p1

    .line 261
    iput v4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    .line 262
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->minScale:F

    cmpg-float v4, v4, p1

    if-gez v4, :cond_0

    .line 263
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    .line 266
    :cond_0
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->maxScale:F

    cmpl-float p1, p1, v4

    if-lez p1, :cond_1

    .line 267
    iput v4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    .line 270
    :cond_1
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr p1, v4

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->pageScale:F

    div-float/2addr p1, v4

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    .line 271
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr p1, v4

    iget v6, p0, Lcom/artifex/mupdf/mini/PageView;->pageScale:F

    div-float/2addr p1, v6

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    mul-float/2addr v3, v4

    sub-float/2addr v3, v0

    float-to-int p1, v3

    .line 272
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    mul-float/2addr v5, v4

    sub-float/2addr v5, v2

    float-to-int p1, v5

    .line 273
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 274
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 275
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    :cond_2
    return v1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1

    .line 282
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz p1, :cond_0

    .line 283
    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    invoke-virtual {p1, v0}, Lcom/artifex/mupdf/mini/DocumentActivity;->onPageViewZoomChanged(F)V

    .line 286
    :cond_0
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz p1, :cond_1

    .line 287
    iget v0, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    invoke-interface {p1, v0}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->onPageViewZoomChanged(F)V

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 228
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 229
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    float-to-int p3, p3

    add-int/2addr p1, p3

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    .line 230
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    float-to-int p3, p4

    add-int/2addr p1, p3

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 231
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    invoke-virtual {p1, p2}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 232
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    :cond_0
    return p2
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 167
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 168
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 171
    iget-boolean v1, p0, Lcom/artifex/mupdf/mini/PageView;->showLinks:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/artifex/mupdf/mini/PageView;->links:[Lcom/artifex/mupdf/fitz/Link;

    if-eqz v1, :cond_7

    .line 172
    iget v1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    if-gt v1, v4, :cond_0

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    :goto_0
    int-to-float v1, v1

    .line 173
    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget v5, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    if-gt v4, v5, :cond_1

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    :goto_1
    int-to-float v4, v4

    add-float/2addr v1, v0

    .line 174
    iget v5, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    div-float/2addr v1, v5

    add-float/2addr p1, v4

    div-float/2addr p1, v5

    .line 176
    iget-object v4, p0, Lcom/artifex/mupdf/mini/PageView;->links:[Lcom/artifex/mupdf/fitz/Link;

    .line 177
    array-length v5, v4

    move v6, v2

    :goto_2
    if-ge v6, v5, :cond_7

    .line 180
    aget-object v7, v4, v6

    .line 181
    iget-object v8, v7, Lcom/artifex/mupdf/fitz/Link;->bounds:Lcom/artifex/mupdf/fitz/Rect;

    .line 182
    iget v9, v8, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    cmpl-float v9, v1, v9

    if-ltz v9, :cond_6

    iget v9, v8, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    cmpg-float v9, v1, v9

    if-gtz v9, :cond_6

    iget v9, v8, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_6

    iget v8, v8, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    cmpg-float v8, p1, v8

    if-gtz v8, :cond_6

    .line 183
    iget-object p1, v7, Lcom/artifex/mupdf/fitz/Link;->uri:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 184
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz p1, :cond_2

    .line 185
    iget-object v1, v7, Lcom/artifex/mupdf/fitz/Link;->uri:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->gotoURI(Ljava/lang/String;)V

    .line 188
    :cond_2
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz p1, :cond_5

    .line 189
    iget-object v1, v7, Lcom/artifex/mupdf/fitz/Link;->uri:Ljava/lang/String;

    invoke-interface {p1, v1}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->gotoURI(Ljava/lang/String;)V

    goto :goto_3

    .line 191
    :cond_3
    iget p1, v7, Lcom/artifex/mupdf/fitz/Link;->page:I

    if-ltz p1, :cond_5

    .line 192
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz p1, :cond_4

    .line 193
    iget v1, v7, Lcom/artifex/mupdf/fitz/Link;->page:I

    invoke-virtual {p1, v1}, Lcom/artifex/mupdf/mini/DocumentActivity;->gotoPage(I)V

    .line 196
    :cond_4
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz p1, :cond_5

    .line 197
    iget v1, v7, Lcom/artifex/mupdf/fitz/Link;->page:I

    invoke-interface {p1, v1}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->gotoPage(I)V

    :cond_5
    :goto_3
    move v2, v3

    goto :goto_4

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_7
    :goto_4
    if-nez v2, :cond_a

    .line 208
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    div-int/lit8 p1, p1, 0x3

    int-to-float p1, p1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, p1

    cmpg-float v2, v0, p1

    if-gtz v2, :cond_8

    .line 211
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->goBackward()V

    :cond_8
    cmpl-float v2, v0, v1

    if-ltz v2, :cond_9

    .line 215
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->goForward()V

    :cond_9
    cmpl-float p1, v0, p1

    if-lez p1, :cond_a

    cmpg-float p1, v0, v1

    if-gez p1, :cond_a

    .line 218
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz p1, :cond_a

    .line 219
    invoke-virtual {p1}, Lcom/artifex/mupdf/mini/DocumentActivity;->toggleUI()V

    .line 223
    :cond_a
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return v3
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    .line 135
    iput p2, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    .line 136
    iget-object p3, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    if-eqz p3, :cond_0

    .line 137
    invoke-virtual {p3, p1, p2}, Lcom/artifex/mupdf/mini/DocumentActivity;->onPageViewSizeChanged(II)V

    .line 140
    :cond_0
    iget-object p3, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    if-eqz p3, :cond_1

    .line 141
    invoke-interface {p3, p1, p2}, Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;->onSizeChanged(II)V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->detector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->scaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public resetHits()V
    .locals 1

    const/4 v0, 0x0

    .line 129
    iput-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    .line 130
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public setActionListener(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->actionListener:Lcom/artifex/mupdf/mini/DocumentActivity;

    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;FZ[Lcom/artifex/mupdf/fitz/Link;[Lcom/artifex/mupdf/fitz/Quad;)V
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x0

    .line 112
    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/PageView;->error:Z

    .line 113
    iput-object p4, p0, Lcom/artifex/mupdf/mini/PageView;->links:[Lcom/artifex/mupdf/fitz/Link;

    .line 114
    iput-object p5, p0, Lcom/artifex/mupdf/mini/PageView;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    .line 115
    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr p1, p4

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    .line 117
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float p1, p1

    iget p4, p0, Lcom/artifex/mupdf/mini/PageView;->viewScale:F

    mul-float/2addr p1, p4

    div-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    .line 118
    iget-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->scroller:Landroid/widget/Scroller;

    const/4 p4, 0x1

    invoke-virtual {p1, p4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 119
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->pageScale:F

    cmpl-float p1, p1, p2

    if-nez p1, :cond_3

    if-eqz p3, :cond_1

    .line 120
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapW:I

    iget p4, p0, Lcom/artifex/mupdf/mini/PageView;->canvasW:I

    sub-int/2addr p1, p4

    goto :goto_0

    :cond_1
    move p1, v0

    :goto_0
    iput p1, p0, Lcom/artifex/mupdf/mini/PageView;->scrollX:I

    if-eqz p3, :cond_2

    .line 121
    iget p1, p0, Lcom/artifex/mupdf/mini/PageView;->bitmapH:I

    iget p3, p0, Lcom/artifex/mupdf/mini/PageView;->canvasH:I

    sub-int v0, p1, p3

    :cond_2
    iput v0, p0, Lcom/artifex/mupdf/mini/PageView;->scrollY:I

    .line 124
    :cond_3
    iput p2, p0, Lcom/artifex/mupdf/mini/PageView;->pageScale:F

    .line 125
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public setError()V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    const/4 v0, 0x1

    .line 100
    iput-boolean v0, p0, Lcom/artifex/mupdf/mini/PageView;->error:Z

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->links:[Lcom/artifex/mupdf/fitz/Link;

    .line 102
    iput-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->hits:[Lcom/artifex/mupdf/fitz/Quad;

    .line 103
    iput-object v0, p0, Lcom/artifex/mupdf/mini/PageView;->bitmap:Landroid/graphics/Bitmap;

    .line 104
    invoke-virtual {p0}, Lcom/artifex/mupdf/mini/PageView;->invalidate()V

    return-void
.end method

.method public setOnPageViewListener(Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/artifex/mupdf/mini/PageView;->mOnPageViewListener:Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;

    return-void
.end method
