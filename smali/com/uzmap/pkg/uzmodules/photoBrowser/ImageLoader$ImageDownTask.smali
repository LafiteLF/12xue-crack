.class Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDownTask"
.end annotation


# instance fields
.field private corner:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 381
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    .line 383
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 399
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 400
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->corner:I

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 387
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    .line 388
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    .line 389
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)V
    .locals 0

    .line 394
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 395
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;I)V
    .locals 0

    .line 406
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)V

    .line 407
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->corner:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 414
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 415
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 416
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 418
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 421
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    return-void

    .line 426
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " -- cache path -- : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 433
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    goto/16 :goto_1

    .line 437
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;

    if-eqz v0, :cond_3

    .line 438
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getImageFromNetWithProgress(Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadProgressListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 441
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->getImageFromNet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 444
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 445
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_4

    .line 446
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;->onLoadFailed(Landroid/widget/ProgressBar;)V

    :cond_4
    return-void

    .line 450
    :cond_5
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->access$000()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    .line 454
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_6

    .line 455
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;->onLoadComplete(Landroid/widget/ProgressBar;)V

    :cond_6
    :goto_1
    return-void
.end method
