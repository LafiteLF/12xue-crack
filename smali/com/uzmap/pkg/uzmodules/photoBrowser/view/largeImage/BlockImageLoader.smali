.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.super Ljava/lang/Object;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;,
        Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;
    }
.end annotation


# static fields
.field private static BASE_BLOCKSIZE:I = 0x0

.field public static DEBUG:Z = false

.field public static final LOAD_TYPE_BLOCK:I = 0x2

.field public static final LOAD_TYPE_INFO:I = 0x0

.field public static final LOAD_TYPE_THUMBNAIL:I = 0x1

.field static final TAG:Ljava/lang/String; = "Loader"

.field private static bitmapPool:Landroid/support/v4/util/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SynchronizedPool<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blockDataPool:Landroid/support/v4/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SimplePool<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private drawDataPool:Landroid/support/v4/util/Pools$SimplePool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$SimplePool<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

.field private onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

.field private sparseIntArray:Landroid/util/SparseIntArray;

.field private taskQueue:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 47
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->bitmapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->blockDataPool:Landroid/support/v4/util/Pools$SimplePool;

    .line 49
    new-instance v0, Landroid/support/v4/util/Pools$SimplePool;

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->drawDataPool:Landroid/support/v4/util/Pools$SimplePool;

    .line 469
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    .line 57
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->taskQueue:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;

    .line 58
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->context:Landroid/content/Context;

    .line 59
    sget v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    if-gtz v0, :cond_1

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 61
    iget v0, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    iget v1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    add-int/2addr v1, p1

    rem-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    add-int/2addr v0, p1

    sput v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    :cond_1
    return-void
.end method

.method static synthetic access$700()I
    .locals 1

    .line 39
    sget v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    return v0
.end method

.method static synthetic access$800()Landroid/graphics/Bitmap;
    .locals 1

    .line 39
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->acquireBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900()Landroid/support/v4/util/Pools$SynchronizedPool;
    .locals 1

    .line 39
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->bitmapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    return-object v0
.end method

.method private static acquireBitmap()Landroid/graphics/Bitmap;
    .locals 2

    .line 964
    sget-object v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->bitmapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    invoke-virtual {v0}, Landroid/support/v4/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 966
    sget v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            "Ljava/util/Map<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            ">;III",
            "Landroid/graphics/BitmapRegionDecoder;",
            ")",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    if-nez p2, :cond_2

    .line 599
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->blockDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v2}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    if-nez v2, :cond_0

    .line 601
    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget v4, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    invoke-direct {v3, v4, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;-><init>(II)V

    invoke-direct {v2, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;)V

    goto :goto_0

    .line 603
    :cond_0
    iget-object v3, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    if-nez v3, :cond_1

    .line 604
    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget v4, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    invoke-direct {v3, v4, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;-><init>(II)V

    iput-object v3, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    goto :goto_0

    .line 606
    :cond_1
    iget-object v3, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget v4, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    invoke-virtual {v3, v4, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    goto :goto_0

    :cond_2
    move-object/from16 v2, p2

    .line 610
    :goto_0
    iget-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    iget-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->isUnRunning(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 611
    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;

    iget-object v6, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget-object v12, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    iget-object v13, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    move-object v5, v1

    move-object v7, v2

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p7

    invoke-direct/range {v5 .. v13}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;IIILandroid/graphics/BitmapRegionDecoder;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V

    iput-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    .line 612
    iget-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->exeTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    .line 614
    :cond_3
    iget-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    move-object/from16 v3, p3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method private cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 573
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->taskQueue:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    :cond_0
    return-void
.end method

.method static dip2px(Landroid/content/Context;F)I
    .locals 0

    .line 641
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method

.method private exeTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->taskQueue:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue;->addTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    return-void
.end method

.method private getNearScale(F)I
    .locals 0

    .line 628
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 629
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getNearScale(I)I

    move-result p1

    return p1
.end method

.method private getNearScale(I)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isUnRunning(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private loadSmallDatas(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;ILjava/util/List;IIII)Ljava/util/List;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;",
            "I",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            ">;IIII)",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 472
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 473
    sget-boolean v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    const-string v4, "Loader"

    if-eqz v3, :cond_1

    .line 474
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u4e4b\u524d loadData.largeDataMap :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    if-nez v5, :cond_0

    const-string v5, "null"

    goto :goto_0

    :cond_0
    iget-object v5, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    :goto_0
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-direct {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;-><init>()V

    .line 478
    iget-object v5, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    if-eqz v5, :cond_e

    iget-object v5, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_e

    mul-int/lit8 v5, p2, 0x2

    .line 480
    div-int v6, v5, p2

    .line 482
    sget v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    mul-int v7, v7, p2

    .line 485
    div-int/lit8 v8, p4, 0x2

    .line 486
    div-int/lit8 v9, p5, 0x2

    .line 487
    div-int/lit8 v10, p6, 0x2

    .line 488
    div-int/lit8 v11, p7, 0x2

    .line 490
    iget-object v12, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 491
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_e

    .line 492
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .line 493
    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 494
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 495
    sget-boolean v15, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v15, :cond_2

    .line 496
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 p2, v12

    const-string v12, "cache add-- \u904d\u5386 largeDataMap position :"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    move-object/from16 p2, v12

    .line 499
    :goto_2
    iget-object v12, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {v0, v12}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    const/4 v12, 0x0

    .line 500
    invoke-static {v1, v12}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    .line 501
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object/from16 v12, p2

    goto :goto_1

    .line 504
    :cond_3
    iget-object v12, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v12, :cond_d

    iget v12, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    if-lt v12, v8, :cond_d

    iget v12, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    if-gt v12, v9, :cond_d

    iget v12, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    if-lt v12, v10, :cond_d

    iget v12, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    if-gt v12, v11, :cond_d

    .line 505
    iget v12, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    mul-int/2addr v12, v6

    add-int v15, v12, v6

    .line 507
    iget v1, v14, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    mul-int/2addr v1, v6

    move/from16 p4, v8

    add-int v8, v1, v6

    move/from16 p5, v1

    .line 510
    iget-object v1, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    move/from16 v16, v9

    .line 511
    iget-object v9, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    const/high16 v17, 0x3f800000    # 1.0f

    move/from16 p6, v10

    .line 514
    sget v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    int-to-float v10, v10

    mul-float v10, v10, v17

    move/from16 p7, v11

    int-to-float v11, v6

    div-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    const/16 v17, 0x0

    :goto_3
    if-ge v12, v15, :cond_c

    mul-int v11, v17, v10

    if-lt v11, v9, :cond_4

    goto/16 :goto_7

    :cond_4
    move/from16 v18, v6

    const/16 v19, 0x0

    move/from16 v6, p5

    :goto_4
    if-ge v6, v8, :cond_b

    move/from16 v20, v8

    mul-int v8, v19, v10

    if-lt v8, v1, :cond_5

    move/from16 v23, v1

    goto/16 :goto_6

    :cond_5
    move/from16 v21, v15

    .line 526
    invoke-virtual {v3, v12, v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    move-result-object v15

    move-object/from16 v22, v4

    move-object/from16 v4, p3

    invoke-interface {v4, v15}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_9

    add-int v15, v8, v10

    add-int v4, v11, v10

    if-le v15, v1, :cond_6

    move v15, v1

    :cond_6
    move/from16 v23, v1

    if-le v4, v9, :cond_7

    move v4, v9

    .line 535
    :cond_7
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->drawDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    if-nez v1, :cond_8

    .line 537
    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;-><init>()V

    :cond_8
    move/from16 v24, v9

    .line 539
    iget-object v9, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    .line 540
    iget-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    move/from16 v25, v10

    mul-int v10, v6, v7

    .line 541
    iput v10, v9, Landroid/graphics/Rect;->left:I

    mul-int v10, v12, v7

    .line 542
    iput v10, v9, Landroid/graphics/Rect;->top:I

    .line 543
    iget v10, v9, Landroid/graphics/Rect;->left:I

    sub-int v26, v15, v8

    mul-int v26, v26, v5

    add-int v10, v10, v26

    iput v10, v9, Landroid/graphics/Rect;->right:I

    .line 544
    iget v10, v9, Landroid/graphics/Rect;->top:I

    sub-int v26, v4, v11

    mul-int v26, v26, v5

    add-int v10, v10, v26

    iput v10, v9, Landroid/graphics/Rect;->bottom:I

    .line 545
    iget-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v9, v8, v11, v15, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 546
    iget-object v4, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v4, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    .line 547
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 548
    sget-boolean v4, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v4, :cond_a

    .line 549
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cache add--\u6dfb\u52a0  smallDataMap position :"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " \u5230 \u5f53\u524dcurrentScalePosition:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " src:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, "w:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " h:"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " imageRect:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " w:"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v4, v22

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    move/from16 v23, v1

    move/from16 v24, v9

    move/from16 v25, v10

    :cond_a
    move-object/from16 v4, v22

    :goto_5
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v19, v19, 0x1

    move/from16 v8, v20

    move/from16 v15, v21

    move/from16 v1, v23

    move/from16 v9, v24

    move/from16 v10, v25

    goto/16 :goto_4

    :cond_b
    move/from16 v23, v1

    move/from16 v20, v8

    :goto_6
    move/from16 v24, v9

    move/from16 v25, v10

    move/from16 v21, v15

    add-int/lit8 v12, v12, 0x1

    add-int/lit8 v17, v17, 0x1

    move/from16 v6, v18

    move/from16 v8, v20

    move/from16 v15, v21

    move/from16 v1, v23

    move/from16 v9, v24

    move/from16 v10, v25

    goto/16 :goto_3

    :cond_c
    :goto_7
    move/from16 v18, v6

    goto :goto_8

    :cond_d
    move/from16 v18, v6

    move/from16 p4, v8

    move/from16 v16, v9

    move/from16 p6, v10

    move/from16 p7, v11

    .line 555
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->remove()V

    .line 556
    invoke-direct {v0, v13}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)V

    :goto_8
    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move/from16 v8, p4

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v9, v16

    move/from16 v6, v18

    goto/16 :goto_1

    :cond_e
    return-object v2
.end method

.method private recycleBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)V
    .locals 3

    .line 588
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    const/4 v0, 0x0

    .line 589
    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    .line 590
    iget-object v1, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_0

    .line 591
    sget-object v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->bitmapPool:Landroid/support/v4/util/Pools$SynchronizedPool;

    iget-object v2, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 592
    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    .line 594
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->blockDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v0, p1}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method private recycleMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 581
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 582
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)V

    goto :goto_0

    .line 584
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private release(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)V
    .locals 2

    .line 105
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "release loadData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    const/4 v0, 0x0

    .line 109
    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    .line 110
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    .line 111
    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    return-void
.end method

.method private static sp2px(Landroid/content/Context;F)I
    .locals 0

    .line 74
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p0, p1

    return p0
.end method


# virtual methods
.method getHeight()I
    .locals 1

    .line 653
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 656
    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$300(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I

    move-result v0

    return v0
.end method

.method getWidth()I
    .locals 1

    .line 646
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 649
    :cond_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I

    move-result v0

    return v0
.end method

.method public hasLoad()Z
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    if-eqz v0, :cond_0

    .line 80
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadImageBlocks(Ljava/util/List;FLandroid/graphics/Rect;II)V
    .locals 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;",
            ">;F",
            "Landroid/graphics/Rect;",
            "II)V"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move/from16 v0, p2

    move-object/from16 v10, p3

    .line 132
    iget-object v7, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 137
    invoke-direct {v8, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getNearScale(F)I

    move-result v6

    .line 138
    iget v1, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScale:I

    .line 140
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    const/4 v4, 0x0

    .line 141
    iput-object v4, v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    .line 142
    iget-object v4, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->drawDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v4, v3}, Landroid/support/v4/util/Pools$SimplePool;->release(Ljava/lang/Object;)Z

    goto :goto_0

    .line 144
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->clear()V

    .line 146
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v2

    if-nez v2, :cond_2

    .line 147
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->isUnRunning(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 148
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    iget-object v2, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    invoke-direct {v0, v7, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V

    invoke-static {v7, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    .line 149
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->exeTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    :cond_1
    return-void

    .line 153
    :cond_2
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I

    move-result v5

    .line 154
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$300(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I

    move-result v4

    .line 155
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v19

    .line 156
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v2

    const/4 v3, 0x2

    if-nez v2, :cond_4

    .line 157
    iget-object v2, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 158
    iget-object v11, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->context:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    mul-int v14, v5, v4

    int-to-double v14, v14

    mul-double/2addr v14, v12

    .line 159
    div-int/2addr v2, v3

    div-int/2addr v11, v3

    mul-int/2addr v2, v11

    int-to-double v11, v2

    div-double/2addr v14, v11

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v2, v11

    .line 160
    invoke-direct {v8, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->getNearScale(I)I

    move-result v11

    if-ge v11, v2, :cond_3

    mul-int/lit8 v11, v11, 0x2

    .line 164
    :cond_3
    invoke-static {v7, v11}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$502(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I

    .line 165
    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;-><init>()V

    invoke-static {v7, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$402(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 167
    :cond_4
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$500(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)I

    move-result v2

    .line 168
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v11

    iget-object v11, v11, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    const/high16 v20, 0x3f800000    # 1.0f

    const/4 v15, 0x0

    if-nez v11, :cond_6

    .line 169
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v11

    iget-object v11, v11, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {v8, v11}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->isUnRunning(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 170
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v14

    new-instance v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;

    iget-object v12, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    iget-object v11, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    move-object/from16 v18, v11

    move-object v11, v13

    move-object/from16 v17, v12

    move-object v12, v7

    move-object v3, v13

    move-object/from16 v13, v19

    move/from16 p5, v1

    move-object v1, v14

    move v14, v2

    move/from16 v21, v6

    move v6, v15

    move v15, v5

    move/from16 v16, v4

    invoke-direct/range {v11 .. v18}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Landroid/graphics/BitmapRegionDecoder;IIILcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V

    iput-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    .line 171
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {v8, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->exeTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    goto/16 :goto_1

    :cond_5
    move/from16 p5, v1

    move/from16 v21, v6

    move v6, v15

    goto/16 :goto_1

    :cond_6
    move/from16 p5, v1

    move/from16 v21, v6

    move v6, v15

    .line 174
    iget-object v1, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->drawDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    if-nez v1, :cond_7

    .line 176
    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;-><init>()V

    .line 179
    :cond_7
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 180
    iget-object v3, v8, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->context:Landroid/content/Context;

    const/high16 v11, 0x42c80000    # 100.0f

    invoke-static {v3, v11}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->dip2px(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    float-to-int v3, v3

    .line 182
    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->right:I

    add-int/2addr v12, v3

    iput v12, v11, Landroid/graphics/Rect;->right:I

    .line 183
    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->top:I

    sub-int/2addr v12, v3

    iput v12, v11, Landroid/graphics/Rect;->top:I

    .line 184
    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->left:I

    sub-int/2addr v12, v3

    iput v12, v11, Landroid/graphics/Rect;->left:I

    .line 185
    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v12, v11, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v12, v3

    iput v12, v11, Landroid/graphics/Rect;->bottom:I

    .line 187
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-gez v3, :cond_8

    .line 188
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->left:I

    .line 190
    :cond_8
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-gez v3, :cond_9

    .line 191
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iput v6, v3, Landroid/graphics/Rect;->top:I

    .line 193
    :cond_9
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-le v3, v5, :cond_a

    .line 194
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iput v5, v3, Landroid/graphics/Rect;->right:I

    .line 196
    :cond_a
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-le v3, v4, :cond_b

    .line 197
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iput v4, v3, Landroid/graphics/Rect;->bottom:I

    .line 200
    :cond_b
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->left:I

    int-to-float v11, v11

    mul-float v11, v11, v20

    int-to-float v12, v2

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->left:I

    .line 201
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->right:I

    int-to-float v11, v11

    mul-float v11, v11, v20

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->right:I

    .line 202
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->top:I

    int-to-float v11, v11

    mul-float v11, v11, v20

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->top:I

    .line 203
    iget-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    iget-object v11, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    iget v11, v11, Landroid/graphics/Rect;->bottom:I

    int-to-float v11, v11

    mul-float v11, v11, v20

    div-float/2addr v11, v12

    invoke-static {v11}, Ljava/lang/Math;->abs(F)F

    move-result v11

    float-to-int v11, v11

    iput v11, v3, Landroid/graphics/Rect;->bottom:I

    .line 204
    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v3

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    .line 206
    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 209
    :goto_1
    sget-boolean v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    const-string v3, " currentScale:"

    const-string v11, "Loader"

    if-eqz v1, :cond_c

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadImageBlocks ---------- imageRect:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, " imageScale:"

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v21

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_c
    move/from16 v12, v21

    :goto_2
    if-gt v2, v12, :cond_d

    return-void

    .line 223
    :cond_d
    sget v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->BASE_BLOCKSIZE:I

    mul-int v13, v0, v12

    mul-int/2addr v0, v12

    .line 227
    div-int v1, v4, v0

    rem-int v14, v4, v0

    if-nez v14, :cond_e

    move v14, v6

    goto :goto_3

    :cond_e
    const/4 v14, 0x1

    :goto_3
    add-int/2addr v1, v14

    .line 228
    div-int v14, v5, v0

    rem-int v16, v5, v0

    if-nez v16, :cond_f

    move/from16 v16, v6

    goto :goto_4

    :cond_f
    const/16 v16, 0x1

    :goto_4
    add-int v14, v14, v16

    .line 231
    iget v6, v10, Landroid/graphics/Rect;->top:I

    div-int/2addr v6, v0

    .line 232
    iget v15, v10, Landroid/graphics/Rect;->bottom:I

    div-int/2addr v15, v0

    move/from16 v17, v2

    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v2, v0

    if-nez v2, :cond_10

    const/4 v2, 0x0

    goto :goto_5

    :cond_10
    const/4 v2, 0x1

    :goto_5
    add-int/2addr v15, v2

    .line 233
    iget v2, v10, Landroid/graphics/Rect;->left:I

    div-int/2addr v2, v0

    move/from16 v18, v4

    .line 234
    iget v4, v10, Landroid/graphics/Rect;->right:I

    div-int/2addr v4, v0

    move/from16 v21, v5

    iget v5, v10, Landroid/graphics/Rect;->right:I

    rem-int/2addr v5, v0

    if-nez v5, :cond_11

    const/4 v5, 0x0

    goto :goto_6

    :cond_11
    const/4 v5, 0x1

    :goto_6
    add-int/2addr v4, v5

    if-gez v6, :cond_12

    const/4 v6, 0x0

    :cond_12
    if-gez v2, :cond_13

    const/4 v5, 0x0

    goto :goto_7

    :cond_13
    move v5, v2

    :goto_7
    if-le v15, v1, :cond_14

    move v15, v1

    :cond_14
    if-le v4, v14, :cond_15

    move v4, v14

    :cond_15
    sub-int v2, v4, v5

    sub-int v9, v15, v6

    move/from16 v22, v13

    mul-int v13, v2, v9

    const/16 v8, 0x10

    if-gt v13, v8, :cond_24

    .line 254
    iget v8, v10, Landroid/graphics/Rect;->top:I

    rem-int/2addr v8, v0

    sub-int v8, v0, v8

    .line 255
    iget v13, v10, Landroid/graphics/Rect;->bottom:I

    rem-int/2addr v13, v0

    const v23, 0x7fffffff

    move-object/from16 v24, v11

    const/4 v11, 0x1

    if-ne v2, v11, :cond_16

    const/4 v2, 0x0

    goto :goto_8

    :cond_16
    const/4 v11, 0x2

    if-ne v2, v11, :cond_17

    .line 260
    div-int/lit8 v2, v0, 0x2

    goto :goto_8

    :cond_17
    const/4 v11, 0x3

    if-ne v2, v11, :cond_18

    .line 262
    div-int/lit8 v2, v0, 0x8

    mul-int/lit8 v2, v2, 0x7

    goto :goto_8

    :cond_18
    move/from16 v2, v23

    :goto_8
    if-le v8, v13, :cond_19

    if-le v8, v2, :cond_1a

    add-int/lit8 v2, v6, 0x1

    move v8, v2

    goto :goto_9

    :cond_19
    if-le v13, v2, :cond_1a

    add-int/lit8 v2, v15, 0x1

    move v8, v6

    goto :goto_a

    :cond_1a
    move v8, v6

    :goto_9
    move v2, v15

    .line 276
    :goto_a
    iget v11, v10, Landroid/graphics/Rect;->left:I

    rem-int/2addr v11, v0

    sub-int v11, v0, v11

    .line 277
    iget v13, v10, Landroid/graphics/Rect;->right:I

    rem-int/2addr v13, v0

    move/from16 v26, v6

    const/4 v6, 0x1

    if-ne v9, v6, :cond_1b

    const/4 v0, 0x0

    goto :goto_b

    :cond_1b
    const/4 v6, 0x2

    if-ne v9, v6, :cond_1c

    .line 282
    div-int/2addr v0, v6

    goto :goto_b

    :cond_1c
    const/4 v6, 0x3

    if-ne v9, v6, :cond_1d

    .line 284
    div-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x7

    goto :goto_b

    :cond_1d
    move/from16 v0, v23

    :goto_b
    if-le v11, v13, :cond_1e

    if-le v11, v0, :cond_1f

    goto :goto_c

    :cond_1e
    if-le v13, v0, :cond_1f

    :goto_c
    add-int/lit8 v0, v5, 0x1

    goto :goto_d

    :cond_1f
    move v0, v5

    :goto_d
    if-gez v8, :cond_20

    const/4 v8, 0x0

    :cond_20
    if-gez v0, :cond_21

    const/4 v0, 0x0

    :cond_21
    if-le v2, v1, :cond_22

    goto :goto_e

    :cond_22
    move v1, v2

    :goto_e
    if-le v4, v14, :cond_23

    goto :goto_f

    :cond_23
    move v14, v4

    :goto_f
    move v9, v1

    move v11, v8

    move v8, v0

    goto :goto_10

    :cond_24
    move/from16 v26, v6

    move-object/from16 v24, v11

    move v14, v4

    move v8, v5

    move v9, v15

    move/from16 v11, v26

    .line 318
    :goto_10
    new-instance v13, Ljava/util/LinkedList;

    invoke-direct {v13}, Ljava/util/LinkedList;-><init>()V

    .line 335
    iget-object v0, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    if-eqz v0, :cond_28

    move/from16 v0, p5

    if-eq v0, v12, :cond_28

    .line 336
    iget-object v1, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    .line 337
    iget-object v2, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    .line 338
    sget-boolean v6, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v6, :cond_25

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p5, v5

    const-string v5, "preScale:"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ds:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-float v3, v12

    mul-float v3, v3, v20

    int-to-float v5, v0

    div-float/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v6, v24

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11

    :cond_25
    move/from16 p5, v5

    move-object/from16 v6, v24

    :goto_11
    mul-int/lit8 v3, v0, 0x2

    if-ne v12, v3, :cond_26

    .line 342
    iput-object v1, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move-object/from16 v5, p0

    .line 344
    invoke-direct {v5, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    .line 345
    iput-object v2, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    .line 346
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "\u76f8\u5f53\u4e8e\u56fe\u7247\u901a\u8fc7\u624b\u52bf\u7f29\u5c0f\u4e862\u500d\uff0c\u539f\u5148\u76f8\u5bf9\u6a21\u7cca\u7684small \u5df2\u7ecf\u88ab\u5b9a\u4e49\u4e3a \u5f53\u524d\u7684\u7f29\u653e\u5ea6"

    .line 347
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_26
    const/4 v3, 0x2

    move-object/from16 v5, p0

    .line 349
    div-int/2addr v0, v3

    if-ne v12, v0, :cond_27

    .line 350
    iput-object v2, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    .line 352
    invoke-direct {v5, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    .line 353
    iput-object v1, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    .line 354
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "\u76f8\u5f53\u4e8e\u901a\u8fc7\u624b\u52bf\u653e\u5927\u4e862\u500d\uff0c\u539f\u5148\u76f8\u5bf9\u6e05\u6670\u7684large \u5df2\u7ecf\u88ab\u5b9a\u4e49\u4e3a \u5f53\u524d\u7684\u7f29\u653e\u5ea6"

    .line 355
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    .line 359
    :cond_27
    invoke-direct {v5, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    .line 360
    invoke-direct {v5, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    .line 361
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_29

    const-string v0, "\u76f8\u5bf9\u539f\u5148 \u7f29\u5c0f\u500d\u6570\u8fc7\u591a\uff0c\u653e\u5927\u500d\u6570\u8fc7\u591a\uff0c\u8fd9\u79cd\u60c5\u51b5\u662f\u76f4\u63a5\u8bbe\u7f6escale\uff0c\u901a\u8fc7\u624b\u52bf\u90fd\u4f1a\u8d70\u4e0a\u9762\u7684\u500d\u6570"

    .line 362
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_28
    move/from16 p5, v5

    move-object/from16 v6, v24

    move-object/from16 v5, p0

    .line 366
    :cond_29
    :goto_12
    iput v12, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScale:I

    .line 368
    iget-object v0, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    if-nez v0, :cond_2a

    .line 369
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    .line 374
    :cond_2a
    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-direct {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;-><init>()V

    .line 375
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 376
    iget-object v1, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    .line 377
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move/from16 v0, v26

    :goto_13
    if-ge v0, v15, :cond_2f

    move/from16 v10, p5

    :goto_14
    if-ge v10, v4, :cond_2e

    .line 380
    invoke-virtual {v3, v0, v10}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 382
    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move/from16 p4, v4

    iget-object v4, v7, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move/from16 v23, v8

    move v8, v0

    move-object/from16 v0, p0

    move/from16 v24, v11

    move-object v11, v1

    move-object v1, v3

    move/from16 v27, v17

    move/from16 v17, v15

    move-object v15, v2

    move-object/from16 v2, v20

    move/from16 v20, v9

    move-object v9, v3

    move-object v3, v4

    move/from16 v25, p4

    move v4, v12

    move/from16 v28, p5

    move/from16 p4, v12

    move-object v12, v5

    move/from16 v5, v21

    move-object/from16 p5, v11

    move/from16 v16, v14

    move/from16 v14, p4

    move-object v11, v6

    move-object/from16 p4, v13

    const/4 v13, 0x0

    move/from16 v6, v18

    move-object/from16 v29, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v0

    .line 383
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2d

    .line 385
    iget-object v1, v12, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->drawDataPool:Landroid/support/v4/util/Pools$SimplePool;

    invoke-virtual {v1}, Landroid/support/v4/util/Pools$SimplePool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    if-nez v1, :cond_2b

    .line 387
    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;-><init>()V

    .line 389
    :cond_2b
    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    mul-int v3, v10, v22

    .line 390
    iput v3, v2, Landroid/graphics/Rect;->left:I

    mul-int v3, v8, v22

    .line 391
    iput v3, v2, Landroid/graphics/Rect;->top:I

    .line 392
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 393
    iget v3, v2, Landroid/graphics/Rect;->top:I

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    mul-int/2addr v4, v14

    add-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 394
    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget-object v4, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v2, v13, v13, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 395
    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->bitmap:Landroid/graphics/Bitmap;

    .line 396
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_2c

    .line 398
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache add--  \u6dfb\u52a0  normal position :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " src:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " imageRect:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " w:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    move-object/from16 v7, p4

    goto :goto_15

    .line 400
    :cond_2d
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-direct {v0, v8, v10}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;-><init>(II)V

    move-object/from16 v7, p4

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_15
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p5

    move-object v13, v7

    move v0, v8

    move-object v3, v9

    move-object v6, v11

    move-object v5, v12

    move v12, v14

    move-object v2, v15

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v9, v20

    move/from16 v8, v23

    move/from16 v11, v24

    move/from16 v4, v25

    move/from16 v17, v27

    move/from16 p5, v28

    move-object/from16 v7, v29

    goto/16 :goto_14

    :cond_2e
    move/from16 v28, p5

    move-object/from16 p5, v1

    move/from16 v25, v4

    move-object/from16 v29, v7

    move/from16 v23, v8

    move/from16 v20, v9

    move/from16 v24, v11

    move-object v7, v13

    move/from16 v16, v14

    move/from16 v27, v17

    const/4 v13, 0x0

    move v8, v0

    move-object v9, v3

    move-object v11, v6

    move v14, v12

    move/from16 v17, v15

    move-object v15, v2

    move-object v12, v5

    add-int/lit8 v0, v8, 0x1

    move-object/from16 v10, p3

    move-object v13, v7

    move v12, v14

    move/from16 v14, v16

    move/from16 v15, v17

    move/from16 v9, v20

    move/from16 v8, v23

    move/from16 v11, v24

    move/from16 v17, v27

    move/from16 p5, v28

    move-object/from16 v7, v29

    goto/16 :goto_13

    :cond_2f
    move/from16 v28, p5

    move-object/from16 p5, v1

    move/from16 v25, v4

    move-object/from16 v29, v7

    move/from16 v23, v8

    move/from16 v20, v9

    move/from16 v24, v11

    move-object v7, v13

    move/from16 v16, v14

    move/from16 v27, v17

    const/4 v13, 0x0

    move-object v9, v3

    move-object v11, v6

    move v14, v12

    move/from16 v17, v15

    move-object v15, v2

    move-object v12, v5

    move/from16 v10, v24

    move/from16 v8, v26

    :goto_16
    if-ge v10, v8, :cond_31

    move/from16 v5, v16

    move/from16 v6, v23

    :goto_17
    if-ge v6, v5, :cond_30

    .line 416
    invoke-virtual {v9, v10, v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    move-object/from16 v4, p5

    .line 417
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-object/from16 v3, v29

    iget-object v1, v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object/from16 v16, v1

    move-object v1, v9

    move-object v13, v3

    move-object/from16 v3, v16

    move-object/from16 v16, v15

    move-object v15, v4

    move v4, v14

    move/from16 v29, v8

    move v8, v5

    move/from16 v5, v21

    move/from16 v30, v6

    move/from16 v6, v18

    move-object v12, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    add-int/lit8 v6, v30, 0x1

    move v5, v8

    move-object v7, v12

    move-object/from16 p5, v15

    move-object/from16 v15, v16

    move/from16 v8, v29

    move-object/from16 v12, p0

    move-object/from16 v29, v13

    const/4 v13, 0x0

    goto :goto_17

    :cond_30
    move-object v12, v7

    move-object/from16 v16, v15

    move-object/from16 v13, v29

    move-object/from16 v15, p5

    move/from16 v29, v8

    move v8, v5

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v15, v16

    move-object/from16 v12, p0

    move/from16 v16, v8

    move/from16 v8, v29

    move-object/from16 v29, v13

    const/4 v13, 0x0

    goto :goto_16

    :cond_31
    move-object v12, v7

    move-object/from16 v13, v29

    move/from16 v29, v8

    move/from16 v8, v16

    move-object/from16 v16, v15

    move-object/from16 v15, p5

    move/from16 v10, v17

    move/from16 v7, v20

    :goto_18
    if-ge v10, v7, :cond_33

    move/from16 v6, v23

    :goto_19
    if-ge v6, v8, :cond_32

    .line 423
    invoke-virtual {v9, v10, v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 424
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    iget-object v3, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v9

    move v4, v14

    move/from16 v5, v21

    move/from16 v20, v6

    move/from16 v6, v18

    move/from16 v31, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    add-int/lit8 v6, v20, 0x1

    move/from16 v7, v31

    goto :goto_19

    :cond_32
    move/from16 v31, v7

    add-int/lit8 v10, v10, 0x1

    goto :goto_18

    :cond_33
    move/from16 v31, v7

    move/from16 v7, v17

    move/from16 v10, v29

    :goto_1a
    if-ge v10, v7, :cond_35

    move/from16 v5, v23

    :goto_1b
    move/from16 v6, v28

    if-ge v5, v6, :cond_34

    .line 431
    invoke-virtual {v9, v10, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 432
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    iget-object v3, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v9

    move v4, v14

    move/from16 v17, v5

    move/from16 v5, v21

    move/from16 v28, v6

    move/from16 v6, v18

    move-object/from16 v20, v11

    move v11, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    add-int/lit8 v5, v17, 0x1

    move v7, v11

    move-object/from16 v11, v20

    goto :goto_1b

    :cond_34
    move/from16 v28, v6

    move-object/from16 v20, v11

    move v11, v7

    add-int/lit8 v10, v10, 0x1

    move-object/from16 v11, v20

    goto :goto_1a

    :cond_35
    move-object/from16 v20, v11

    move v11, v7

    move/from16 v10, v29

    :goto_1c
    if-ge v10, v11, :cond_37

    move/from16 v7, v25

    :goto_1d
    if-ge v7, v8, :cond_36

    .line 439
    invoke-virtual {v9, v10, v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->set(II)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 440
    invoke-interface {v15, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    iget-object v3, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    move-object/from16 v0, p0

    move-object v1, v9

    move v4, v14

    move/from16 v5, v21

    move/from16 v6, v18

    move/from16 v17, v7

    move-object/from16 v7, v19

    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->addRequestBlock(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;Ljava/util/Map;IIILandroid/graphics/BitmapRegionDecoder;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    add-int/lit8 v7, v17, 0x1

    goto :goto_1d

    :cond_36
    add-int/lit8 v10, v10, 0x1

    goto :goto_1c

    .line 444
    :cond_37
    invoke-interface {v15}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object v1, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 445
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_38

    .line 446
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preCurrentDataMap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " needShowPositions\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v9, v20

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e

    :cond_38
    move-object/from16 v9, v20

    :goto_1e
    move-object/from16 v10, p0

    move-object v3, v12

    .line 448
    invoke-direct {v10, v15}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->recycleMap(Ljava/util/Map;)V

    move-object/from16 v0, p0

    move-object v1, v13

    move v2, v14

    move/from16 v4, v29

    move v5, v11

    move/from16 v6, v28

    move/from16 v7, v25

    .line 450
    invoke-direct/range {v0 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->loadSmallDatas(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;ILjava/util/List;IIII)Ljava/util/List;

    move-result-object v0

    move-object/from16 v1, p1

    .line 451
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v16

    .line 452
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 453
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_3b

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail current scale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " startRow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v6, v29

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endRow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " startCol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v28

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " endCol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, v25

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " blockSize:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v22

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " small size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    if-nez v2, :cond_39

    const-string v2, "null"

    goto :goto_1f

    :cond_39
    iget-object v2, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->smallDataMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detail thumbnailScale:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v27

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacheStartRow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v2, v24

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacheEndRow:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, v31

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacheStartCol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, v23

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " cacheEndCol:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " draDataList.size:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail imageRect:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    iget-object v1, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v2, v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    iget-object v3, v13, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 458
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "detail \u7edf\u8ba1\u6b21\u6570 "

    .line 459
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v15, v4

    .line 460
    :goto_20
    iget-object v1, v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v15, v1, :cond_3a

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "->time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v10, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->sparseIntArray:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v15}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v15, v15, 0x1

    goto :goto_20

    .line 463
    :cond_3a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    return-void
.end method

.method public setBitmapDecoderFactory(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    if-eqz v0, :cond_0

    .line 99
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->release(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)V

    .line 101
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    return-void
.end method

.method public setOnImageLoadListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    return-void
.end method

.method public setOnLoadStateChangeListener(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    return-void
.end method

.method public stopLoad()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    if-eqz v0, :cond_1

    .line 116
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loader"

    const-string v1, "stopLoad "

    .line 117
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    .line 120
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    .line 121
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->mLoadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->currentScaleDataMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 123
    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 124
    iget-object v3, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->cancelTask(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;)V

    .line 125
    iput-object v1, v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    goto :goto_0

    :cond_1
    return-void
.end method
