.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;
.super Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadBlockTask"
.end annotation


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

.field private volatile clipImageRect:Landroid/graphics/Rect;

.field private decoder:Landroid/graphics/BitmapRegionDecoder;

.field private imageHeight:I

.field private imageWidth:I

.field private onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

.field private position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

.field private scale:I

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;IIILandroid/graphics/BitmapRegionDecoder;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 0

    .line 858
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;-><init>()V

    .line 859
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 860
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    .line 861
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 862
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->imageWidth:I

    .line 863
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->imageHeight:I

    .line 864
    iput-object p6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 865
    iput-object p7, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 866
    iput-object p8, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 867
    sget-boolean p2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz p2, :cond_0

    .line 868
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "start LoadBlockTask position:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " currentScale:"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Loader"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 7

    .line 883
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    const-string v1, " "

    const-string v2, "Loader"

    if-eqz v0, :cond_0

    .line 884
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doInBackground\uff1a"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->access$700()I

    move-result v0

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    mul-int/2addr v0, v3

    .line 887
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->col:I

    mul-int/2addr v3, v0

    add-int v4, v3, v0

    .line 889
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->row:I

    mul-int/2addr v5, v0

    add-int/2addr v0, v5

    .line 891
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->imageWidth:I

    if-le v4, v6, :cond_1

    move v4, v6

    .line 894
    :cond_1
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->imageHeight:I

    if-le v0, v6, :cond_2

    move v0, v6

    .line 897
    :cond_2
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v3, v5, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->clipImageRect:Landroid/graphics/Rect;

    .line 899
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 900
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_3

    .line 901
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->access$800()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 902
    iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x1

    .line 903
    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 905
    :cond_3
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    iput v3, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 907
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->clipImageRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 914
    sget-boolean v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 915
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-virtual {v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->clipImageRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    :cond_4
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->throwable:Ljava/lang/Throwable;

    .line 917
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 911
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 912
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->throwable:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method protected onCancelled()V
    .locals 3

    .line 923
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onCancelled()V

    .line 924
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 925
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->access$900()Landroid/support/v4/util/Pools$SynchronizedPool;

    move-result-object v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/support/v4/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 926
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    .line 928
    :cond_0
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 929
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 930
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 931
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 932
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    .line 933
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 934
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled LoadBlockTask position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currentScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected onPostExecute()V
    .locals 6

    .line 940
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPostExecute()V

    .line 941
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 942
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finish LoadBlockTask position:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currentScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitmap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    .line 945
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 946
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->bitmap:Landroid/graphics/Bitmap;

    iput-object v3, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    .line 947
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->clipImageRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v3

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->clipImageRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    iget v5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->scale:I

    div-int/2addr v4, v5

    invoke-virtual {v0, v2, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 948
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_2

    .line 949
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onBlockImageLoadFinished()V

    .line 952
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    .line 953
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->throwable:Ljava/lang/Throwable;

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v3, v4, v2, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadFinished(ILjava/lang/Object;ZLjava/lang/Throwable;)V

    .line 955
    :cond_4
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 956
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->blockData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 957
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 958
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 959
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 875
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPreExecute()V

    .line 876
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 877
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadBlockTask;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadStart(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
