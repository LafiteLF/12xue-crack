.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;
.super Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadThumbnailTask"
.end annotation


# instance fields
.field private volatile bitmap:Landroid/graphics/Bitmap;

.field private decoder:Landroid/graphics/BitmapRegionDecoder;

.field private imageHeight:I

.field private imageWidth:I

.field private loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

.field private onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

.field private scale:I

.field private volatile throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Landroid/graphics/BitmapRegionDecoder;IIILcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 0

    .line 983
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;-><init>()V

    .line 984
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 985
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->scale:I

    .line 986
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->imageWidth:I

    .line 987
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->imageHeight:I

    .line 988
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 989
    iput-object p6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 990
    iput-object p7, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 991
    sget-boolean p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 992
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "LoadThumbnailTask LoadThumbnailTask thumbnailScale:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Loader"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 6

    .line 1005
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1006
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->scale:I

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1008
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    new-instance v2, Landroid/graphics/Rect;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->imageWidth:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->imageHeight:I

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v1, v2, v0}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1014
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1015
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->throwable:Ljava/lang/Throwable;

    goto :goto_0

    :catch_1
    move-exception v0

    .line 1011
    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 1012
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->throwable:Ljava/lang/Throwable;

    :goto_0
    return-void
.end method

.method protected onCancelled()V
    .locals 2

    .line 1021
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onCancelled()V

    const/4 v0, 0x0

    .line 1022
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 1023
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 1024
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 1025
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 1026
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCancelled LoadThumbnailTask thumbnailScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPostExecute()V
    .locals 5

    .line 1033
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPostExecute()V

    .line 1034
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 1035
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LoadThumbnailTask bitmap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " currentScale:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->scale:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bitW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " bitH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

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

    .line 1037
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;

    .line 1038
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1040
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    invoke-direct {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;-><init>()V

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$402(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    .line 1042
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;

    move-result-object v0

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->bitmap:Landroid/graphics/Bitmap;

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->bitmap:Landroid/graphics/Bitmap;

    .line 1043
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    if-eqz v0, :cond_3

    .line 1044
    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onBlockImageLoadFinished()V

    .line 1047
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_5

    .line 1048
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->throwable:Ljava/lang/Throwable;

    const/4 v3, 0x1

    if-nez v2, :cond_4

    move v2, v3

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    :goto_1
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->throwable:Ljava/lang/Throwable;

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadFinished(ILjava/lang/Object;ZLjava/lang/Throwable;)V

    .line 1050
    :cond_5
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 1051
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 1052
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->loadData:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 1053
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 997
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPreExecute()V

    .line 998
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadThumbnailTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 999
    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadStart(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
