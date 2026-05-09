.class Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->jsmethod_setImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/widget/ProgressBar;)V
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v1, "loadImgSuccess"

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    return-void
.end method

.method public onLoadFailed(Landroid/widget/ProgressBar;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "loadImgFail"

    invoke-static {v0, v2, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    .line 235
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;

    invoke-direct {v1, p0, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;-><init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;Landroid/widget/ProgressBar;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
