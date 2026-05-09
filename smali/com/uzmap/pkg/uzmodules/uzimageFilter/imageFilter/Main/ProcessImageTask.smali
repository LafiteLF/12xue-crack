.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;
.super Landroid/os/AsyncTask;
.source "ProcessImageTask.java"


# annotations
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
.field private a:Landroid/app/Activity;

.field private bitmap:Landroid/graphics/Bitmap;

.field private callBack:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;

.field private dialog:Landroid/app/ProgressDialog;

.field private filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

.field private type:Ljava/lang/String;

.field private value:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;Ljava/lang/String;I)V
    .locals 0

    .line 26
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 27
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    .line 28
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->a:Landroid/app/Activity;

    .line 29
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->bitmap:Landroid/graphics/Bitmap;

    .line 30
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->type:Ljava/lang/String;

    .line 31
    iput p5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->value:I

    return-void
.end method

.method static synthetic access$2(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;)Landroid/app/Activity;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->a:Landroid/app/Activity;

    return-object p0
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
    .locals 3

    .line 41
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->type:Ljava/lang/String;

    const-string v0, "blur"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "asher"

    const-string v0, "background - blur"

    .line 42
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->value:I

    mul-int/lit8 p1, p1, 0x19

    div-int/lit8 p1, p1, 0x64

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->a:Landroid/app/Activity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->with(Landroid/content/Context;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->bitmap(Landroid/graphics/Bitmap;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->radius(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;

    move-result-object p1

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/blur/EasyBlur;->blur()Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    .line 53
    :try_start_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :try_start_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    if-eqz v1, :cond_2

    .line 55
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->filter:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;

    invoke-interface {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->copyPixelsFromBuffer()V

    .line 58
    :cond_2
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;
    :try_end_1
    .catch Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/exception/OOMException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v0, :cond_3

    .line 79
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 80
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_3
    return-object v1

    :catchall_0
    move-exception v1

    move-object v0, p1

    goto :goto_0

    :catch_0
    move-object v0, p1

    .line 72
    :catch_1
    :try_start_2
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, "process failed!"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    if-eqz v0, :cond_4

    .line 73
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 74
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->destImage:Landroid/graphics/Bitmap;

    .line 76
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    if-eqz v0, :cond_5

    .line 79
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 80
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_5
    return-object p1

    :catch_2
    move-object v0, p1

    .line 60
    :catch_3
    :try_start_3
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask$1;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const-string v1, "ProcessImageTask"

    const-string v2, "\u56fe\u7247\u592a\u5927\uff0c\u56fe\u7247\u5904\u7406\u5931\u8d25"

    .line 69
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_6

    .line 79
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 80
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    :cond_6
    return-object p1

    :catchall_1
    move-exception v1

    :goto_0
    if-eqz v0, :cond_7

    .line 79
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 80
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    .line 81
    iput-object p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->image:Landroid/graphics/Bitmap;

    .line 82
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 84
    :cond_7
    throw v1
.end method

.method public bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 91
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 92
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->callBack:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;

    if-eqz v0, :cond_0

    .line 93
    invoke-interface {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;->onResultCallback(Landroid/graphics/Bitmap;)V

    .line 97
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->dialog:Landroid/app/ProgressDialog;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->dialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->cancel()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .line 36
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 37
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->a:Landroid/app/Activity;

    const-string v1, ""

    const-string v2, "\u5904\u7406\u4e2d..."

    invoke-static {v0, v1, v2}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->dialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method public setCallback(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->callBack:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;

    return-void
.end method
