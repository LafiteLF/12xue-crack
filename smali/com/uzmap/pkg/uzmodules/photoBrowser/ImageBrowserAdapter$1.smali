.class Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;
.super Ljava/lang/Object;
.source "ImageBrowserAdapter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageDownLoader$DownLoadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

.field final synthetic val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

.field final synthetic val$progress:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;Landroid/widget/ProgressBar;Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public onFailed()V
    .locals 3

    .line 127
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "loadImgFail"

    invoke-static {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    return-void
.end method

.method public onFinish(Ljava/lang/String;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;

    invoke-direct {v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V

    .line 133
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 134
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "loadImgSuccess"

    invoke-static {p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    return-void
.end method

.method public onStart()V
    .locals 9

    const-string v0, "file:///android_asset/"

    const-string v1, "debug"

    const-string v2, ""

    .line 106
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$progress:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 108
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 109
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    .line 111
    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    new-instance v6, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v7

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/InputStreamBitmapDecoderFactory;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v6, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V

    .line 112
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "== 1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 114
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 115
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== 2"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ".+widget"

    const-string v4, "widget"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->val$imageView:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/FileBitmapDecoderFactory;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v5}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setImage(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/factory/BitmapDecoderFactory;Z)V

    :cond_1
    :goto_0
    return-void
.end method
