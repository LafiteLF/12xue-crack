.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageDownTask"
.end annotation


# instance fields
.field private corner:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

.field private url:Ljava/lang/String;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 372
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    .line 374
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;I)V
    .locals 0

    .line 390
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 391
    iput p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->corner:I

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 377
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 378
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    .line 379
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    .line 380
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;)V
    .locals 0

    .line 385
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;)V

    .line 386
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;I)V
    .locals 0

    .line 397
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;Landroid/view/View;Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;)V

    .line 398
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->corner:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 405
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 407
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->getBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 409
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 412
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    return-void

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    .line 418
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->getBitmapFromLocal(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 420
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " -- cache path -- : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "lyh"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    .line 424
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    goto/16 :goto_1

    .line 428
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;

    if-eqz v0, :cond_3

    .line 429
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v3, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->getImageFromNetWithProgress(Ljava/lang/String;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadProgressListener;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->getImageFromNet(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    .line 435
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    .line 436
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;->onLoadFailed(Landroid/widget/ProgressBar;)V

    :cond_4
    return-void

    .line 441
    :cond_5
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v3}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v3, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->saveBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->view:Landroid/view/View;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->access$0()Landroid/util/LruCache;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->url:Ljava/lang/String;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->corner:I

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->setImage(Landroid/view/View;Landroid/graphics/Bitmap;ILandroid/widget/ProgressBar;)V

    .line 445
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;

    if-eqz v0, :cond_6

    .line 446
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->mOnLoadCompleteListener:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$ImageDownTask;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-interface {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader$OnLoadCompleteListener;->onLoadComplete(Landroid/widget/ProgressBar;)V

    :cond_6
    :goto_1
    return-void
.end method
