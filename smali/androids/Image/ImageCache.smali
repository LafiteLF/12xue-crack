.class public Landroids/Image/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# instance fields
.field private diskLruCache:Landroids/utils/cache/DiskLruCache;

.field private mDiskCacheDir:Ljava/io/File;

.field private final mDiskCacheLock:Ljava/lang/Object;

.field private mDiskCacheMaxSize:J

.field private mMemoryCacheMaxSize:I

.field private memoryLruCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;IJ)V
    .locals 6

    .line 34
    new-instance v5, Ljava/io/File;

    const-string v0, "androidsCache"

    invoke-static {p1, v0}, Landroids/Image/ImageCache;->getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    invoke-direct/range {v0 .. v5}, Landroids/Image/ImageCache;-><init>(Landroid/content/Context;IJLjava/io/File;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IJLjava/io/File;)V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    .line 38
    iput p2, p0, Landroids/Image/ImageCache;->mMemoryCacheMaxSize:I

    .line 39
    iput-wide p3, p0, Landroids/Image/ImageCache;->mDiskCacheMaxSize:J

    .line 40
    iput-object p5, p0, Landroids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    .line 42
    invoke-direct {p0}, Landroids/Image/ImageCache;->initMemoryCache()V

    .line 43
    invoke-direct {p0}, Landroids/Image/ImageCache;->initDiskCache()V

    return-void
.end method

.method public static getDiskCacheDir(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 304
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 307
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 311
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 312
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initDiskCache()V
    .locals 6

    .line 59
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 60
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Landroids/utils/cache/DiskLruCache;->isClosed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 61
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 64
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const-string v1, "disk cache dir init failed"

    .line 67
    invoke-static {v1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;)V

    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    iget-object v1, p0, Landroids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    sget v2, Landroids/base/BaseApplication;->VERSION_CODE:I

    const/4 v3, 0x1

    iget-wide v4, p0, Landroids/Image/ImageCache;->mDiskCacheMaxSize:J

    invoke-static {v1, v2, v3, v4, v5}, Landroids/utils/cache/DiskLruCache;->open(Ljava/io/File;IIJ)Landroids/utils/cache/DiskLruCache;

    move-result-object v1

    iput-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 70
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 72
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initMemoryCache()V
    .locals 2

    .line 47
    new-instance v0, Landroids/Image/ImageCache$1;

    iget v1, p0, Landroids/Image/ImageCache;->mMemoryCacheMaxSize:I

    invoke-direct {v0, p0, v1}, Landroids/Image/ImageCache$1;-><init>(Landroids/Image/ImageCache;I)V

    iput-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    return-void
.end method


# virtual methods
.method public clearAllCache()V
    .locals 0

    .line 77
    invoke-virtual {p0}, Landroids/Image/ImageCache;->clearAllMemoryCache()V

    .line 78
    invoke-virtual {p0}, Landroids/Image/ImageCache;->clearAllDiskCache()V

    return-void
.end method

.method public clearAllDiskCache()V
    .locals 2

    .line 89
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 91
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 94
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Landroids/utils/cache/DiskLruCache;->delete()V

    .line 95
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Landroids/utils/cache/DiskLruCache;->close()V

    const/4 v1, 0x0

    .line 96
    iput-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 98
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 100
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 102
    invoke-direct {p0}, Landroids/Image/ImageCache;->initDiskCache()V

    return-void

    :catchall_0
    move-exception v1

    .line 100
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public clearAllMemoryCache()V
    .locals 1

    .line 82
    iget-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    return-void

    .line 85
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method public closeAllCache()V
    .locals 0

    .line 106
    invoke-virtual {p0}, Landroids/Image/ImageCache;->closeMemoryCache()V

    .line 107
    invoke-virtual {p0}, Landroids/Image/ImageCache;->closeDiskCache()V

    return-void
.end method

.method public closeDiskCache()V
    .locals 2

    .line 116
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 117
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 118
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 121
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Landroids/utils/cache/DiskLruCache;->close()V

    const/4 v1, 0x0

    .line 122
    iput-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 124
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 126
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public closeMemoryCache()V
    .locals 1

    .line 111
    invoke-virtual {p0}, Landroids/Image/ImageCache;->clearAllMemoryCache()V

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    return-void
.end method

.method public flushDiskCache()V
    .locals 2

    .line 256
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 257
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_0

    .line 259
    :try_start_1
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1}, Landroids/utils/cache/DiskLruCache;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 261
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroids/utils/LogUtil;->e(Ljava/lang/String;)V

    .line 264
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 229
    invoke-virtual {p0, p1}, Landroids/Image/ImageCache;->getBitmapMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 231
    invoke-virtual {p0, p1}, Landroids/Image/ImageCache;->getBitmapDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    invoke-virtual {p0, v0, p1}, Landroids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method public getBitmapDiskCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 162
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    .line 169
    :try_start_1
    iget-object v4, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroids/utils/cache/DiskLruCache;->get(Ljava/lang/String;)Landroids/utils/cache/DiskLruCache$Snapshot;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 171
    :try_start_2
    sget-object v4, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v4, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    const/4 v4, 0x1

    .line 172
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 173
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 174
    invoke-virtual {p1, v3}, Landroids/utils/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object v4

    invoke-static {v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-object p1

    :catch_0
    move-exception p1

    .line 186
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-object p1, v2

    :catch_2
    const-string v4, "getBitmapDiskCache:OutOfMemory"

    .line 177
    invoke-static {v4}, Landroids/utils/LogUtil;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v4, 0x2

    .line 180
    :try_start_4
    iput v4, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 181
    invoke-virtual {p1, v3}, Landroids/utils/cache/DiskLruCache$Snapshot;->getInputStream(I)Ljava/io/InputStream;

    move-result-object p1

    invoke-static {p1, v2, v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    monitor-exit v0

    return-object p1

    :catch_3
    move-exception p1

    .line 183
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 188
    :cond_1
    :goto_0
    monitor-exit v0

    return-object v2

    .line 164
    :cond_2
    :goto_1
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 189
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1
.end method

.method public getBitmapMemoryCache(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 1

    .line 137
    iget-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDiskCacheDir()Ljava/io/File;
    .locals 1

    .line 292
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheDir:Ljava/io/File;

    return-object v0
.end method

.method public getDiskCacheMaxSize()J
    .locals 2

    .line 279
    iget-wide v0, p0, Landroids/Image/ImageCache;->mDiskCacheMaxSize:J

    return-wide v0
.end method

.method public getMemoryCacheMaxSize()I
    .locals 1

    .line 269
    iget v0, p0, Landroids/Image/ImageCache;->mMemoryCacheMaxSize:I

    return v0
.end method

.method public getSnapshotMemoryCache()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 296
    iget-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 299
    :cond_0
    invoke-virtual {v0}, Landroid/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 0

    .line 251
    invoke-virtual {p0, p1, p2}, Landroids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0, p1, p2}, Landroids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    return-void
.end method

.method public save(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 0

    .line 246
    invoke-virtual {p0, p1, p2}, Landroids/Image/ImageCache;->saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0, p1, p2, p3}, Landroids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method public saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 193
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, p1, p2, v0}, Landroids/Image/ImageCache;->saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V

    return-void
.end method

.method public saveBitmapDiskCache(Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)V
    .locals 3

    .line 204
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 205
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    .line 209
    :cond_0
    :try_start_1
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ""

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroids/utils/cache/DiskLruCache;->edit(Ljava/lang/String;)Landroids/utils/cache/DiskLruCache$Editor;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 211
    invoke-virtual {p2, v1}, Landroids/utils/cache/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    const/16 v2, 0x5a

    .line 212
    invoke-virtual {p1, p3, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 213
    invoke-virtual {p2}, Landroids/utils/cache/DiskLruCache$Editor;->commit()V

    .line 214
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 217
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    .line 206
    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 219
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public saveBitmapMemoryCache(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1

    .line 150
    iget-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 151
    invoke-virtual {v0, p2, p1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setDiskCacheMaxSize(J)V
    .locals 2

    .line 283
    iget-object v0, p0, Landroids/Image/ImageCache;->mDiskCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 284
    :try_start_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    if-nez v1, :cond_0

    .line 285
    monitor-exit v0

    return-void

    .line 287
    :cond_0
    iget-object v1, p0, Landroids/Image/ImageCache;->diskLruCache:Landroids/utils/cache/DiskLruCache;

    invoke-virtual {v1, p1, p2}, Landroids/utils/cache/DiskLruCache;->setMaxSize(J)V

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setMemoryCacheMaxSize(I)V
    .locals 1

    .line 273
    iget-object v0, p0, Landroids/Image/ImageCache;->memoryLruCache:Landroid/util/LruCache;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p1}, Landroid/util/LruCache;->resize(I)V

    :cond_0
    return-void
.end method
