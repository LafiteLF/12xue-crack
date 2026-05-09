.class Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;->onLoadFailed(Landroid/widget/ProgressBar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;

.field final synthetic val$bar:Landroid/widget/ProgressBar;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;Landroid/widget/ProgressBar;)V
    .locals 0

    .line 235
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;->this$1:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;->val$bar:Landroid/widget/ProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$2$1;->val$bar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
