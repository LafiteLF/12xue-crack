.class public Landroids/Image/ImageLoaderConfig;
.super Ljava/lang/Object;
.source "ImageLoaderConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroids/Image/ImageLoaderConfig$ImageSetter;
    }
.end annotation


# static fields
.field private static final DEFAULT_KEY_GENERATOR:Landroids/Image/ImageCacheKeyGenerator;

.field private static sDefaultConfig:Landroids/Image/ImageLoaderConfig;

.field private static sDefaultImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;


# instance fields
.field private bitmapConfig:Landroid/graphics/Bitmap$Config;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAutoRotate:Z

.field private mCacheKeyGenerator:Landroids/Image/ImageCacheKeyGenerator;

.field private mExtractThumbnail:Z

.field private mImageCache:Landroids/Image/ImageCache;

.field private mImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

.field private mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

.field private mLoadOriginal:Z

.field private mLoadingDrawable:Landroid/graphics/drawable/Drawable;

.field private mMaxHeight:I

.field private mMaxWidth:I

.field private mNeedCache:Z

.field private mPriority:Landroids/Priority;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Landroids/Image/ImageLoaderConfig;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroids/Image/ImageLoaderConfig;-><init>(Landroids/Image/ImageCache;)V

    sput-object v0, Landroids/Image/ImageLoaderConfig;->sDefaultConfig:Landroids/Image/ImageLoaderConfig;

    .line 20
    new-instance v0, Landroids/Image/ImageLoaderConfig$ImageSetter;

    invoke-direct {v0}, Landroids/Image/ImageLoaderConfig$ImageSetter;-><init>()V

    sput-object v0, Landroids/Image/ImageLoaderConfig;->sDefaultImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    .line 21
    new-instance v0, Landroids/Image/ImageCacheKeyGenerator;

    invoke-direct {v0}, Landroids/Image/ImageCacheKeyGenerator;-><init>()V

    sput-object v0, Landroids/Image/ImageLoaderConfig;->DEFAULT_KEY_GENERATOR:Landroids/Image/ImageCacheKeyGenerator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0}, Landroids/Image/ImageLoaderConfig;-><init>(Landroids/Image/ImageCache;)V

    return-void
.end method

.method public constructor <init>(Landroids/Image/ImageCache;)V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mNeedCache:Z

    .line 38
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v0, p0, Landroids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    .line 40
    sget-object v0, Landroids/Image/ImageLoaderConfig;->sDefaultImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    iput-object v0, p0, Landroids/Image/ImageLoaderConfig;->mImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    .line 42
    sget-object v0, Landroids/Priority;->DEFAULT:Landroids/Priority;

    iput-object v0, p0, Landroids/Image/ImageLoaderConfig;->mPriority:Landroids/Priority;

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    .line 49
    sget-object v0, Landroids/Image/ImageLoaderConfig;->DEFAULT_KEY_GENERATOR:Landroids/Image/ImageCacheKeyGenerator;

    iput-object v0, p0, Landroids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Landroids/Image/ImageCacheKeyGenerator;

    .line 65
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mImageCache:Landroids/Image/ImageCache;

    return-void
.end method

.method public static getDefaultConfig()Landroids/Image/ImageLoaderConfig;
    .locals 1

    .line 145
    sget-object v0, Landroids/Image/ImageLoaderConfig;->sDefaultConfig:Landroids/Image/ImageLoaderConfig;

    return-object v0
.end method

.method public static getDefaultImageSetter()Landroids/Image/ImageLoaderConfig$ImageSetter;
    .locals 1

    .line 52
    sget-object v0, Landroids/Image/ImageLoaderConfig;->sDefaultImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    return-object v0
.end method

.method public static setDefaultConfig(Landroids/Image/ImageLoaderConfig;)V
    .locals 0

    .line 149
    sput-object p0, Landroids/Image/ImageLoaderConfig;->sDefaultConfig:Landroids/Image/ImageLoaderConfig;

    return-void
.end method

.method public static setDefaultImageSetter(Landroids/Image/ImageLoaderConfig$ImageSetter;)V
    .locals 0

    .line 56
    sput-object p0, Landroids/Image/ImageLoaderConfig;->sDefaultImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    return-void
.end method


# virtual methods
.method public clone()Landroids/Image/ImageLoaderConfig;
    .locals 2

    .line 221
    new-instance v0, Landroids/Image/ImageLoaderConfig;

    iget-object v1, p0, Landroids/Image/ImageLoaderConfig;->mImageCache:Landroids/Image/ImageCache;

    invoke-direct {v0, v1}, Landroids/Image/ImageLoaderConfig;-><init>(Landroids/Image/ImageCache;)V

    .line 222
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setAnimation(Landroid/view/animation/Animation;)V

    .line 223
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->isAutoRotate()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setAutoRotate(Z)V

    .line 224
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getBitmapConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setBitmapConfig(Landroid/graphics/Bitmap$Config;)V

    .line 225
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getImageSetter()Landroids/Image/ImageLoaderConfig$ImageSetter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setImageSetter(Landroids/Image/ImageLoaderConfig$ImageSetter;)V

    .line 226
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 227
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getLoadingDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 228
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->isLoadOriginal()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setLoadOriginal(Z)V

    .line 229
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getMaxHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setMaxHeight(I)V

    .line 230
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getMaxWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setMaxWidth(I)V

    .line 231
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getPriority()Landroids/Priority;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setPriority(Landroids/Priority;)V

    .line 232
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->isNeedCache()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setNeedCache(Z)V

    .line 233
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getImageCache()Landroids/Image/ImageCache;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setImageCache(Landroids/Image/ImageCache;)V

    .line 234
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->getCacheKeyGenerator()Landroids/Image/ImageCacheKeyGenerator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setCacheKeyGenerator(Landroids/Image/ImageCacheKeyGenerator;)V

    .line 235
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->isExtractThumbnail()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroids/Image/ImageLoaderConfig;->setExtractThumbnail(Z)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0}, Landroids/Image/ImageLoaderConfig;->clone()Landroids/Image/ImageLoaderConfig;

    move-result-object v0

    return-object v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .line 113
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getBitmapConfig()Landroid/graphics/Bitmap$Config;
    .locals 1

    .line 137
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-object v0
.end method

.method public getCacheKeyGenerator()Landroids/Image/ImageCacheKeyGenerator;
    .locals 1

    .line 244
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Landroids/Image/ImageCacheKeyGenerator;

    return-object v0
.end method

.method public getImageCache()Landroids/Image/ImageCache;
    .locals 1

    .line 162
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mImageCache:Landroids/Image/ImageCache;

    return-object v0
.end method

.method public getImageSetter()Landroids/Image/ImageLoaderConfig$ImageSetter;
    .locals 1

    .line 158
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    return-object v0
.end method

.method public getLoadFailedDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 129
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLoadingDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 121
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getMaxHeight()I
    .locals 1

    .line 78
    iget v0, p0, Landroids/Image/ImageLoaderConfig;->mMaxHeight:I

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .line 70
    iget v0, p0, Landroids/Image/ImageLoaderConfig;->mMaxWidth:I

    return v0
.end method

.method public getPriority()Landroids/Priority;
    .locals 1

    .line 170
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mPriority:Landroids/Priority;

    return-object v0
.end method

.method public isAutoRotate()Z
    .locals 1

    .line 105
    iget-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mAutoRotate:Z

    return v0
.end method

.method public isExtractThumbnail()Z
    .locals 1

    .line 178
    iget-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    return v0
.end method

.method public isLoadOriginal()Z
    .locals 1

    .line 97
    iget-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mLoadOriginal:Z

    return v0
.end method

.method public isNeedCache()Z
    .locals 1

    .line 86
    iget-object v0, p0, Landroids/Image/ImageLoaderConfig;->mImageCache:Landroids/Image/ImageCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 89
    :cond_0
    iget-boolean v0, p0, Landroids/Image/ImageLoaderConfig;->mNeedCache:Z

    return v0
.end method

.method public setAnimation(Landroid/view/animation/Animation;)V
    .locals 0

    .line 117
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mAnimation:Landroid/view/animation/Animation;

    return-void
.end method

.method public setAutoRotate(Z)V
    .locals 0

    .line 109
    iput-boolean p1, p0, Landroids/Image/ImageLoaderConfig;->mAutoRotate:Z

    return-void
.end method

.method public setBitmapConfig(Landroid/graphics/Bitmap$Config;)V
    .locals 0

    .line 141
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->bitmapConfig:Landroid/graphics/Bitmap$Config;

    return-void
.end method

.method public setCacheKeyGenerator(Landroids/Image/ImageCacheKeyGenerator;)V
    .locals 0

    .line 240
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mCacheKeyGenerator:Landroids/Image/ImageCacheKeyGenerator;

    return-void
.end method

.method public setExtractThumbnail(Z)V
    .locals 0

    .line 182
    iput-boolean p1, p0, Landroids/Image/ImageLoaderConfig;->mExtractThumbnail:Z

    return-void
.end method

.method public setImageCache(Landroids/Image/ImageCache;)V
    .locals 0

    .line 166
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mImageCache:Landroids/Image/ImageCache;

    return-void
.end method

.method public setImageSetter(Landroids/Image/ImageLoaderConfig$ImageSetter;)V
    .locals 0

    .line 154
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mImageSetter:Landroids/Image/ImageLoaderConfig$ImageSetter;

    return-void
.end method

.method public setLoadFailedDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 133
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mLoadFailedDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setLoadOriginal(Z)V
    .locals 0

    .line 101
    iput-boolean p1, p0, Landroids/Image/ImageLoaderConfig;->mLoadOriginal:Z

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 125
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mLoadingDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setMaxHeight(I)V
    .locals 0

    .line 82
    iput p1, p0, Landroids/Image/ImageLoaderConfig;->mMaxHeight:I

    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0

    .line 74
    iput p1, p0, Landroids/Image/ImageLoaderConfig;->mMaxWidth:I

    return-void
.end method

.method public setNeedCache(Z)V
    .locals 0

    .line 93
    iput-boolean p1, p0, Landroids/Image/ImageLoaderConfig;->mNeedCache:Z

    return-void
.end method

.method public setPriority(Landroids/Priority;)V
    .locals 0

    .line 174
    iput-object p1, p0, Landroids/Image/ImageLoaderConfig;->mPriority:Landroids/Priority;

    return-void
.end method
