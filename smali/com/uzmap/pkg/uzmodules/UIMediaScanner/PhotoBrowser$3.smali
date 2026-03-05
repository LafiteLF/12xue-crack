.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$3;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->clearCache(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ImageLoader;->clearCache()V

    return-void
.end method
