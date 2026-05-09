.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;
.super Ljava/lang/Object;
.source "DownloadListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getRestartClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;J)V
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    iput-wide p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 301
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->access$500(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [J

    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$4;->val$downloadId:J

    const/4 v2, 0x0

    aput-wide v0, p2, v2

    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadManager;->restartDownload([J)V

    return-void
.end method
