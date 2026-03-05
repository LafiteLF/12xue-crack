.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ImageBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mImagePaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPlaceholdImg:Ljava/lang/String;

.field private mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private mViewContainer:Landroid/view/ViewGroup;

.field private zoomEnable:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/ArrayList;Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;",
            ")V"
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 p4, 0x1

    .line 45
    iput-boolean p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->zoomEnable:Z

    .line 58
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    .line 59
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mPlaceholdImg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Landroid/content/Context;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mUZContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    return-object p0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 205
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public fixedImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 240
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 243
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/BitmapToolkit;->readPictureDegree(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 248
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/image/modifiedImg.jpg"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 249
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 251
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    :cond_1
    const-string v1, "debug"

    const-string v2, "fixed rotated"

    .line 254
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 256
    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/BitmapToolkit;->rotaingImageView(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 258
    :try_start_0
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    :catch_0
    move-exception p2

    .line 261
    invoke-virtual {p2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    return-object p1
.end method

.method public getCount()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getViewContainer()Landroid/view/ViewGroup;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mViewContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 10

    .line 81
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mViewContainer:Landroid/view/ViewGroup;

    const-string v0, "photo_browser_item_layout"

    .line 83
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResLayoutID(Ljava/lang/String;)I

    move-result v0

    .line 84
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 86
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-string v1, "photoView"

    .line 88
    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    .line 91
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->zoomEnable:Z

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setCanZoom(Z)V

    const-string v2, "loadProgress"

    .line 93
    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v2

    .line 94
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/ProgressBar;

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mImagePaths:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 100
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "http"

    .line 101
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const/4 v8, 0x0

    if-eqz v2, :cond_0

    .line 102
    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;

    invoke-direct {v3, p0, v7, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;Landroid/widget/ProgressBar;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)V

    invoke-direct {v2, v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;)V

    sget-object v3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    aput-object v5, v4, v8

    .line 141
    invoke-virtual {v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    :cond_0
    const-string v2, "fs"

    .line 143
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "widget"

    .line 144
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "file"

    .line 145
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/storage"

    .line 146
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/data"

    .line 147
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "content"

    .line 148
    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 160
    :cond_1
    :try_start_0
    invoke-virtual {p0, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->removeScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 161
    invoke-static {v2, v8}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    .line 162
    array-length v3, v2

    invoke-static {v2, v8, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Landroid/graphics/Bitmap;)V

    const/16 v2, 0x8

    .line 163
    invoke-virtual {v7, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 165
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 154
    :cond_2
    :goto_0
    :try_start_1
    new-instance v9, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v2, v9

    move-object v3, p0

    move-object v4, v1

    invoke-direct/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ProgressBar;)V

    new-array v2, v8, [Ljava/lang/Void;

    invoke-virtual {v9, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    .line 156
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    :cond_3
    :goto_1
    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;

    invoke-direct {v2, p0, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    new-instance v2, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$3;

    invoke-direct {v2, p0, p2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$3;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;I)V

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v0
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public removeScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const-string v0, "data:image"

    .line 196
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x2c

    .line 197
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    return-object p1
.end method

.method public setPlaceholdImg(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->mPlaceholdImg:Ljava/lang/String;

    return-void
.end method

.method public setZoomEnable(Z)V
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->zoomEnable:Z

    return-void
.end method
