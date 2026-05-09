.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;
.super Landroid/os/AsyncTask;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBitmapAsync"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field icb:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;Landroid/widget/ImageView;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;)V
    .locals 0

    .line 389
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 390
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->imageView:Landroid/widget/ImageView;

    .line 391
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->icb:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;)Landroid/graphics/Bitmap;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x0

    .line 399
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto/16 :goto_3

    .line 401
    :cond_0
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ".jpg"

    const-string v4, "/.thumbnails_for_me"

    const/16 v5, 0xc8

    if-nez v2, :cond_2

    .line 402
    :try_start_1
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    const-string v6, "image"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 404
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 406
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 408
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    new-instance v2, Ljava/io/File;

    .line 410
    new-instance v7, Ljava/lang/StringBuilder;

    aget-object v8, p1, v1

    iget-object v8, v8, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 411
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 409
    invoke-direct {v2, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 414
    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v6

    .line 416
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 417
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    invoke-virtual {v6, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getThumbnailBitmap(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 419
    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 420
    new-instance v7, Ljava/io/File;

    .line 421
    aget-object v8, p1, v1

    iget-object v8, v8, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    .line 420
    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v7

    .line 419
    invoke-virtual {v2, v7, v5, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 422
    invoke-static {v6, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 424
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 429
    :cond_2
    :goto_1
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 430
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->mimeType:Ljava/lang/String;

    const-string v6, "video"

    invoke-virtual {v2, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 431
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 432
    new-instance v2, Ljava/io/File;

    aget-object v6, p1, v1

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 434
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    new-instance v3, Ljava/io/File;

    .line 435
    aget-object v4, p1, v1

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->thumbImgPath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 434
    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v5, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 437
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->CACHE_PATH:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 439
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 440
    new-instance v2, Ljava/io/File;

    .line 441
    new-instance v6, Ljava/lang/StringBuilder;

    aget-object v7, p1, v1

    iget-object v7, v7, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 442
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 440
    invoke-direct {v2, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 444
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 445
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    .line 446
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 445
    invoke-virtual {v3, v2, v5, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 448
    :cond_4
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->createVideoThumbnail(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 449
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception p1

    .line 456
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_6
    :goto_3
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->doInBackground([Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 2

    .line 463
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 465
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->icb:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->imageView:Landroid/widget/ImageView;

    invoke-interface {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;->resultImgCall(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util$LoadBitmapAsync;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
