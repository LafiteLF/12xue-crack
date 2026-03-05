.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;
.super Ljava/lang/Object;
.source "DownloadListView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->getDeleteClickHandler(J)Landroid/content/DialogInterface$OnClickListener;
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

    .line 289
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    iput-wide p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 292
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$3;->val$downloadId:J

    invoke-static {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;J)V

    return-void
.end method
