.class Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$3;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->jsmethod_clearCache(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
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

    .line 295
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;)Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageLoader;->clearCache()V

    return-void
.end method
