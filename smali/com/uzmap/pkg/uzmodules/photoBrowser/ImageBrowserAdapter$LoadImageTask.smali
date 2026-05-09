.class Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;
.super Landroid/os/AsyncTask;
.source "ImageBrowserAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mBar:Landroid/widget/ProgressBar;

.field private mContext:Landroid/content/Context;

.field private mImageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

.field private srcPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;Ljava/lang/String;Landroid/content/Context;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 220
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mImageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    .line 221
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mContext:Landroid/content/Context;

    .line 222
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->srcPath:Ljava/lang/String;

    .line 223
    iput-object p5, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mBar:Landroid/widget/ProgressBar;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    .line 228
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->srcPath:Ljava/lang/String;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->fixedImage(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 212
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mImageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V

    .line 234
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$LoadImageTask;->mBar:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
