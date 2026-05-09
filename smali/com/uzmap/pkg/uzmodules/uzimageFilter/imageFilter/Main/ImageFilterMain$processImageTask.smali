.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;
.super Landroid/os/AsyncTask;
.source "ImageFilterMain.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "processImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/ProgressDialog;

.field private filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;Landroid/app/Activity;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 54
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    const/4 p1, 0x0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 74
    :try_start_1
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->copyPixelsFromBuffer()V

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 76
    :goto_0
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getImage()Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    .line 86
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 87
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_1
    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_1

    :catchall_1
    move-exception v1

    move-object v0, p1

    goto :goto_1

    :catch_0
    move-object v0, p1

    :catch_1
    if-eqz v0, :cond_3

    .line 79
    :try_start_2
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 80
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :goto_1
    if-eqz v0, :cond_2

    .line 86
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 87
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 91
    :cond_2
    throw v1

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 86
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 88
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 89
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_4
    return-object p1
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 98
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;->access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 104
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 62
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain;

    const-string v1, ""

    const-string v2, "\u5904\u7406\u4e2d..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageFilterMain$processImageTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method
