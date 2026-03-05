.class public Lcom/apicloud/glide/load/resource/gif/GifDrawableResource;
.super Lcom/apicloud/glide/load/resource/drawable/DrawableResource;
.source "GifDrawableResource.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/load/resource/drawable/DrawableResource<",
        "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/load/resource/gif/GifDrawable;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/apicloud/glide/load/resource/drawable/DrawableResource;-><init>(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public getSize()I
    .locals 2

    .line 16
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/glide/load/resource/gif/GifDrawable;->getData()[B

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/apicloud/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v1, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v1}, Lcom/apicloud/glide/load/resource/gif/GifDrawable;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/glide/load/resource/gif/GifDrawable;->stop()V

    .line 22
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/gif/GifDrawableResource;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/glide/load/resource/gif/GifDrawable;->recycle()V

    return-void
.end method
