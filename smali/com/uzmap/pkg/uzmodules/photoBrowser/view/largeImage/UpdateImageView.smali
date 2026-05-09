.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;
.super Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;
.source "UpdateImageView.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/ILargeImageView;


# instance fields
.field private defaultDrawable:Landroid/graphics/drawable/Drawable;

.field private drawDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;",
            ">;"
        }
    .end annotation
.end field

.field private imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

.field private isAttachedWindow:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mDrawableHeight:I

.field private mDrawableWidth:I

.field private mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

.field private mLevel:I

.field private mOffsetX:F

.field private mOffsetY:F

.field private mScale:F

.field private onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private tempImageRect:Landroid/graphics/Rect;

.field private tempVisibilityRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 122
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isAttachedWindow:Z

    .line 309
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->tempVisibilityRect:Landroid/graphics/Rect;

    .line 310
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->tempImageRect:Landroid/graphics/Rect;

    .line 367
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->drawDataList:Ljava/util/List;

    .line 52
    new-instance p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-direct {p2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    .line 53
    invoke-virtual {p2, p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setOnImageLoadListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;)V

    return-void
.end method

.method private notifyInvalidate()V
    .locals 0

    .line 306
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->postInvalidateOnAnimation(Landroid/view/View;)V

    return-void
.end method

.method private resizeFromDrawable()V
    .locals 3

    .line 106
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 108
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gez v1, :cond_0

    .line 109
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    .line 110
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    if-gez v0, :cond_1

    .line 111
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    .line 112
    :cond_1
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    if-ne v1, v2, :cond_2

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    if-eq v0, v2, :cond_3

    .line 113
    :cond_2
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    .line 114
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    .line 115
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->requestLayout()V

    :cond_3
    return-void
.end method

.method private updateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-ne v0, p1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 237
    :goto_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 238
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez v0, :cond_2

    .line 239
    iget-boolean v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isAttachedWindow:Z

    if-eqz v3, :cond_2

    .line 240
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto :goto_1

    :cond_1
    move v0, v2

    .line 244
    :cond_2
    :goto_1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_6

    .line 247
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 251
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getDrawableState()[I

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    if-eqz v0, :cond_4

    goto :goto_2

    .line 256
    :cond_4
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isAttachedWindow:Z

    if-eqz v0, :cond_5

    .line 257
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v1

    .line 258
    :cond_5
    invoke-virtual {p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 260
    :goto_2
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mLevel:I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 261
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    .line 262
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    goto :goto_3

    :cond_6
    const/4 p1, -0x1

    .line 268
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    :goto_3
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->drawableStateChanged()V

    .line 275
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_0
    return-void
.end method

.method public getImageHeight()I
    .locals 1

    .line 93
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getImageWidth()I
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOnImageLoadListener()Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    return-object v0
.end method

.method public getScale()F
    .locals 1

    .line 68
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    return v0
.end method

.method public hasLoad()Z
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz v0, :cond_2

    .line 148
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    return v1

    .line 151
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->hasLoad()Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 126
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->onAttachedToWindow()V

    const/4 v0, 0x1

    .line 127
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isAttachedWindow:Z

    .line 128
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getVisibility()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    invoke-virtual {v1, v0, v3}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method

.method public onBlockImageLoadFinished()V
    .locals 1

    .line 371
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->notifyInvalidate()V

    .line 372
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 373
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onBlockImageLoadFinished()V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 135
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->onDetachedFromWindow()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->isAttachedWindow:Z

    .line 137
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->stopLoad()V

    .line 138
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 139
    invoke-virtual {v1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 315
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->onDraw(Landroid/graphics/Canvas;)V

    .line 316
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getWidth()I

    move-result v4

    .line 317
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getHeight()I

    move-result v6

    if-nez v4, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 322
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    float-to-int v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    float-to-int v2, v2

    int-to-float v3, v4

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v5, v6

    mul-float/2addr v5, v4

    float-to-int v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 323
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_1

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz v0, :cond_6

    .line 325
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->tempVisibilityRect:Landroid/graphics/Rect;

    .line 326
    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getVisibilityRect(Landroid/graphics/Rect;)V

    .line 327
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    int-to-float v7, v4

    mul-float/2addr v1, v7

    .line 328
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v2, v1

    .line 333
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->tempImageRect:Landroid/graphics/Rect;

    .line 334
    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->left:I

    .line 335
    iget v1, v0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->top:I

    .line 336
    iget v1, v0, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v8

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iput v1, v3, Landroid/graphics/Rect;->right:I

    .line 337
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float v0, v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    sub-float/2addr v0, v1

    mul-float/2addr v0, v8

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v3, Landroid/graphics/Rect;->bottom:I

    .line 340
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->hasLoad()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getHeight()I

    move-result v2

    mul-int/2addr v1, v2

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    mul-int/2addr v2, v0

    if-le v1, v2, :cond_3

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->drawDataList:Ljava/util/List;

    move v2, v8

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->loadImageBlocks(Ljava/util/List;FLandroid/graphics/Rect;II)V

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->drawDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_6

    const/high16 v1, 0x3f800000    # 1.0f

    .line 347
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    mul-float/2addr v0, v7

    float-to-int v0, v0

    sub-int/2addr v6, v0

    .line 348
    div-int/lit8 v6, v6, 0x2

    .line 349
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    float-to-int v2, v2

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    float-to-int v3, v3

    add-int/2addr v3, v6

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    mul-float/2addr v7, v4

    float-to-int v5, v7

    int-to-float v0, v0

    mul-float/2addr v0, v4

    float-to-int v0, v0

    invoke-virtual {v1, v2, v3, v5, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 350
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 353
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 354
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->drawDataList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    .line 355
    iget-object v3, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    .line 356
    iget v4, v3, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->left:I

    .line 357
    iget v4, v3, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->top:I

    .line 358
    iget v4, v3, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->right:I

    .line 359
    iget v4, v3, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float/2addr v4, v8

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    float-to-double v6, v6

    add-double/2addr v4, v6

    double-to-int v4, v4

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 360
    iget-object v4, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v2, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 362
    :cond_5
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method public onLoadFail(Ljava/lang/Exception;)V
    .locals 1

    .line 389
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 390
    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadFail(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public onLoadImageSize(II)V
    .locals 1

    .line 379
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    .line 380
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    .line 381
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->notifyInvalidate()V

    .line 382
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_0

    .line 383
    invoke-interface {v0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadImageSize(II)V

    :cond_0
    return-void
.end method

.method protected onUpdateWindow(Landroid/graphics/Rect;)V
    .locals 0

    .line 300
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->hasLoad()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->notifyInvalidate()V

    :cond_0
    return-void
.end method

.method public setImage(I)V
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 199
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 204
    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 174
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    .line 176
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 178
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    .line 179
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->defaultDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_0

    .line 181
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onLoadImageSize(II)V

    .line 183
    :cond_0
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    invoke-virtual {p2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setBitmapDecoderFactory(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;)V

    .line 184
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->invalidate()V

    return-void
.end method

.method public setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V
    .locals 0

    const/4 p2, 0x0

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    const/4 v0, 0x0

    .line 214
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 215
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    const/4 v0, 0x0

    .line 216
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    .line 217
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    .line 218
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 219
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    .line 220
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    .line 221
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->updateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    invoke-virtual {p0, v2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onLoadImageSize(II)V

    .line 223
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableWidth:I

    if-ne v0, p1, :cond_0

    iget p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawableHeight:I

    if-eq v1, p1, :cond_1

    .line 224
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->requestLayout()V

    .line 226
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->invalidate()V

    :cond_2
    return-void
.end method

.method public setOnImageLoadListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    return-void
.end method

.method public setOnLoadStateChangeListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->imageBlockLoader:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->setOnLoadStateChangeListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V

    :cond_0
    return-void
.end method

.method public setScale(F)V
    .locals 0

    .line 62
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    .line 63
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->notifyInvalidate()V

    return-void
.end method

.method public setScale(FFF)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mScale:F

    .line 78
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetX:F

    .line 79
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mOffsetY:F

    .line 80
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->notifyInvalidate()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->setSelected(Z)V

    .line 102
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->resizeFromDrawable()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 2

    .line 291
    invoke-super {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->setVisibility(I)V

    .line 292
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateImageView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 293
    :goto_0
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :cond_1
    return-void
.end method
