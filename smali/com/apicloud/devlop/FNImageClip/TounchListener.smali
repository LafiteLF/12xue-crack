.class public Lcom/apicloud/devlop/FNImageClip/TounchListener;
.super Ljava/lang/Object;
.source "TounchListener.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;
    }
.end annotation


# static fields
.field private static final DRAG:I = 0x1

.field private static final ZOOM:I = 0x2


# instance fields
.field private isScal:Z

.field private mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

.field private mCurrentClickTime:J

.field private mCurrentMaritx:Landroid/graphics/Matrix;

.field private mImageScalH:F

.field private mImageScalW:F

.field private mImgView:Landroid/widget/ImageView;

.field private mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mMode:I

.field private mSingleClickTime:J

.field private mStartDis:F

.field private mStartPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;Lcom/apicloud/devlop/FNImageClip/ClipRect;)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartPoint:Landroid/graphics/PointF;

    .line 22
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    .line 23
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartDis:F

    .line 134
    iput-boolean v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isScal:Z

    .line 33
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    .line 34
    iput-object p2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    .line 36
    new-instance p2, Lcom/apicloud/devlop/FNImageClip/TounchListener$1;

    invoke-direct {p2, p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$1;-><init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V

    const-wide/16 v0, 0x12c

    invoke-virtual {p1, p2, v0, v1}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static distance(Landroid/view/MotionEvent;)F
    .locals 4

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 357
    invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    sub-float/2addr v0, p0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 361
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getRealHeight(Landroid/widget/ImageView;Landroid/graphics/Matrix;)F
    .locals 1

    .line 230
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 232
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 233
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    aget p2, v0, p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private getRealWidth(Landroid/widget/ImageView;Landroid/graphics/Matrix;)F
    .locals 1

    .line 223
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 225
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 226
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    int-to-float p1, p1

    const/4 p2, 0x0

    aget p2, v0, p2

    mul-float/2addr p1, p2

    return p1
.end method

.method private isDoubleClick()Z
    .locals 6

    .line 339
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentClickTime:J

    .line 340
    iget-wide v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mSingleClickTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v0, 0x0

    .line 341
    iput-wide v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mSingleClickTime:J

    const/4 v0, 0x1

    return v0

    .line 344
    :cond_0
    iput-wide v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mSingleClickTime:J

    const/4 v0, 0x0

    return v0
.end method

.method private isMove(FF)Z
    .locals 6

    .line 286
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x9

    new-array v3, v2, [F

    .line 289
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 291
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 292
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->setValues([F)V

    new-array v2, v2, [F

    .line 295
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 296
    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 297
    invoke-virtual {v4, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 298
    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 299
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 300
    sget-object p1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 301
    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->getValues([F)V

    .line 302
    new-instance p1, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;

    invoke-direct {p1, p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;-><init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V

    const/4 p2, 0x2

    .line 303
    aget p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setLeft(F)V

    const/4 p2, 0x5

    .line 304
    aget p2, v3, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setTop(F)V

    .line 305
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getLeft()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    const/4 v2, 0x0

    aget v4, v3, v2

    mul-float/2addr v0, v4

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setRight(F)V

    .line 306
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getTop()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    aget v1, v3, v2

    mul-float/2addr v0, v1

    add-float/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setBottom(F)V

    .line 308
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClipRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getLeft()F

    move-result p2

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 312
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getRight()F

    move-result p2

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    .line 313
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getTop()F

    move-result p2

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p2, p2, v0

    if-gez p2, :cond_0

    .line 314
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getBottom()F

    move-result p1

    iget-object p2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v2
.end method

.method private isZoom(FFF)Z
    .locals 5

    .line 237
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 238
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 239
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u56fe\u7247  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 241
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 243
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 244
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->setValues([F)V

    .line 245
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 246
    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 248
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 249
    new-instance p1, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;

    invoke-direct {p1, p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;-><init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V

    const/4 p2, 0x2

    .line 250
    aget p2, v2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setLeft(F)V

    const/4 p2, 0x5

    .line 251
    aget p2, v2, p2

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setTop(F)V

    .line 252
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getLeft()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    aget v3, v2, v0

    mul-float/2addr p3, v3

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setRight(F)V

    .line 253
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getTop()F

    move-result p2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    aget v1, v2, v0

    mul-float/2addr p3, v1

    add-float/2addr p2, p3

    invoke-virtual {p1, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setBottom(F)V

    .line 255
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageState:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    sget-object p2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClipRect:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getLeft()F

    move-result p2

    iget-object p3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {p3}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    .line 259
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getRight()F

    move-result p2

    iget-object p3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {p3}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_0

    .line 260
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getTop()F

    move-result p2

    iget-object p3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {p3}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result p3

    int-to-float p3, p3

    cmpg-float p2, p2, p3

    if-gez p2, :cond_0

    .line 261
    invoke-virtual {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getBottom()F

    move-result p1

    iget-object p2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {p2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method private onDoubleClick()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 332
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 333
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 334
    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 335
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method private onDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 122
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isDoubleClick()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->onDoubleClick()V

    :cond_0
    const/4 v0, 0x1

    .line 125
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    .line 126
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    sget-object v1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 127
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 128
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/PointF;->set(FF)V

    .line 129
    invoke-direct {p0, p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->onMove(Landroid/view/MotionEvent;)V

    return-void
.end method

.method private onMove(Landroid/view/MotionEvent;)V
    .locals 5

    .line 136
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    .line 148
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v1

    .line 153
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 155
    invoke-direct {p0, v0, p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isMove(FF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 156
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    .line 159
    :cond_0
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 160
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 165
    invoke-static {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 167
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartDis:F

    div-float/2addr p1, v0

    .line 169
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    div-int/2addr v0, v2

    int-to-float v0, v0

    .line 170
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    div-int/2addr v3, v2

    int-to-float v2, v3

    .line 172
    iget-boolean v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isScal:Z

    if-eqz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, p1, v3

    if-gez v3, :cond_3

    .line 174
    iget v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalW:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipWidth:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-ltz v3, :cond_2

    iget v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalH:F

    sget v4, Lcom/apicloud/devlop/FNImageClip/ClipView;->clipHeight:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    :cond_2
    return-void

    .line 181
    :cond_3
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    invoke-virtual {v3, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 183
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    if-eqz v3, :cond_4

    .line 184
    invoke-direct {p0, p1, v0, v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isZoom(FFF)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 185
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    goto :goto_0

    .line 188
    :cond_4
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v3, p1, p1, v0, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 189
    iput-boolean v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->isScal:Z

    .line 190
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->getRealWidth(Landroid/widget/ImageView;Landroid/graphics/Matrix;)F

    move-result p1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalW:F

    .line 191
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-direct {p0, p1, v0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->getRealHeight(Landroid/widget/ImageView;Landroid/graphics/Matrix;)F

    move-result p1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalH:F

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u7f29\u653e\u540e\u7684\u5bbd\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalW:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "  \u9ad8\uff1a "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImageScalH:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "TAG"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return-void
.end method

.method private onPointerDown(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x2

    .line 322
    iput v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    .line 323
    invoke-static {p1}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->distance(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mStartDis:F

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 325
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mCurrentMaritx:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public doReset()V
    .locals 8

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mClipRect left: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "debug"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipRect right: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipRect top: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mClipRect bottom: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 87
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v1}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v2

    sub-int/2addr v1, v2

    .line 89
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->getCurrentImageState()Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;

    move-result-object v2

    .line 90
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    iget-object v4, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v4}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v4

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    const/4 v4, 0x0

    if-ltz v3, :cond_0

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    .line 92
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    iget-object v6, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v6}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 95
    :cond_0
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v5}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_1

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v5, v0

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v5}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getRight()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 101
    :cond_1
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v5}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v5, v1

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_2

    .line 102
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    iget-object v6, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v6}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    neg-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 106
    :cond_2
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v5}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v5, v1

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_3

    .line 107
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    iget-object v5, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v5}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getBottom()I

    move-result v5

    int-to-float v5, v5

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v6

    sub-float/2addr v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 111
    :cond_3
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v5

    sub-float/2addr v3, v5

    int-to-float v0, v0

    cmpg-float v3, v3, v0

    const/high16 v5, 0x40000000    # 2.0f

    if-gez v3, :cond_4

    .line 112
    iget-object v3, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v6

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v7

    sub-float/2addr v6, v7

    sub-float/2addr v0, v6

    div-float/2addr v0, v5

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v6

    sub-float/2addr v0, v6

    iget-object v6, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v6}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getLeft()I

    move-result v6

    int-to-float v6, v6

    add-float/2addr v0, v6

    invoke-virtual {v3, v0, v4}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 115
    :cond_4
    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v0

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    sub-float/2addr v0, v3

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 116
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v3

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v6

    sub-float/2addr v3, v6

    sub-float/2addr v1, v3

    div-float/2addr v1, v5

    invoke-static {v2}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F

    move-result v2

    sub-float/2addr v1, v2

    iget-object v2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mInitialRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    invoke-virtual {v2}, Lcom/apicloud/devlop/FNImageClip/ClipRect;->getTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    :cond_5
    return-void
.end method

.method public getCurrentImageState()Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;
    .locals 7

    .line 270
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    .line 271
    iget-object v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const/16 v2, 0x9

    new-array v2, v2, [F

    .line 274
    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->getValues([F)V

    .line 276
    new-instance v0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;

    invoke-direct {v0, p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;-><init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V

    const/4 v3, 0x2

    .line 277
    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setLeft(F)V

    const/4 v3, 0x5

    .line 278
    aget v3, v2, v3

    invoke-virtual {v0, v3}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setTop(F)V

    .line 279
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getLeft()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    const/4 v5, 0x0

    aget v6, v2, v5

    mul-float/2addr v4, v6

    add-float/2addr v3, v4

    invoke-virtual {v0, v3}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setRight(F)V

    .line 280
    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->getTop()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    aget v2, v2, v5

    mul-float/2addr v1, v2

    add-float/2addr v3, v1

    invoke-virtual {v0, v3}, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->setBottom(F)V

    return-object v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 50
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 p2, 0x6

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    goto :goto_0

    .line 68
    :cond_1
    invoke-direct {p0, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->onPointerDown(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->onMove(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 58
    :cond_3
    iput v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMode:I

    .line 60
    invoke-virtual {p0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->doReset()V

    goto :goto_0

    .line 52
    :cond_4
    invoke-direct {p0, p2}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->onDown(Landroid/view/MotionEvent;)V

    .line 71
    :goto_0
    iget-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mImgView:Landroid/widget/ImageView;

    iget-object p2, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return v0
.end method

.method public setClipRect(Lcom/apicloud/devlop/FNImageClip/ClipRect;)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener;->mClipRect:Lcom/apicloud/devlop/FNImageClip/ClipRect;

    return-void
.end method
