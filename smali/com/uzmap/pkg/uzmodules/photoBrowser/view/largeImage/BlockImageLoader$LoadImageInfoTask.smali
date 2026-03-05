.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;
.super Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LoadImageInfoTask"
.end annotation


# instance fields
.field private volatile decoder:Landroid/graphics/BitmapRegionDecoder;

.field private volatile e:Ljava/lang/Exception;

.field private volatile imageHeight:I

.field private imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

.field private volatile imageWidth:I

.field private mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

.field private onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

.field private onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;)V
    .locals 0

    .line 774
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;-><init>()V

    .line 775
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 776
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$600(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    .line 777
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 778
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 779
    sget-boolean p1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz p1, :cond_0

    .line 780
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start LoadImageInfoTask:imageW:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageWidth:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " imageH:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageHeight:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Loader"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected doInBackground()V
    .locals 2

    .line 796
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;->made()Landroid/graphics/BitmapRegionDecoder;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    .line 797
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageWidth:I

    .line 798
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageHeight:I

    .line 799
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loader"

    const-string v1, "LoadImageInfoTask doInBackground"

    .line 800
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 803
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 804
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    :cond_0
    :goto_0
    return-void
.end method

.method protected onCancelled()V
    .locals 2

    .line 810
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onCancelled()V

    const/4 v0, 0x0

    .line 811
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 812
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 813
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    .line 814
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    .line 815
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "Loader"

    const-string v1, "LoadImageInfoTask: onCancelled"

    .line 816
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onPostExecute()V
    .locals 5

    .line 822
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPostExecute()V

    .line 823
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute LoadImageInfoTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " imageW:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " imageH:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Loader"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$102(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;

    .line 827
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    if-nez v0, :cond_1

    .line 828
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageWidth:I

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$202(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I

    .line 829
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageHeight:I

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$302(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;I)I

    .line 830
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->decoder:Landroid/graphics/BitmapRegionDecoder;

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;->access$002(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;Landroid/graphics/BitmapRegionDecoder;)Landroid/graphics/BitmapRegionDecoder;

    .line 831
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageWidth:I

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageHeight:I

    invoke-interface {v0, v2, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadImageSize(II)V

    goto :goto_0

    .line 833
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;->onLoadFail(Ljava/lang/Exception;)V

    .line 835
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_3

    .line 836
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->e:Ljava/lang/Exception;

    invoke-interface {v0, v3, v1, v2, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadFinished(ILjava/lang/Object;ZLjava/lang/Throwable;)V

    .line 838
    :cond_3
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    .line 839
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onImageLoadListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnImageLoadListener;

    .line 840
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->mFactory:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;

    .line 841
    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->imageInfo:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadData;

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 786
    invoke-super {p0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;->onPreExecute()V

    .line 787
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$LoadImageInfoTask;->onLoadStateChangeListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 788
    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$OnLoadStateChangeListener;->onLoadStart(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method
