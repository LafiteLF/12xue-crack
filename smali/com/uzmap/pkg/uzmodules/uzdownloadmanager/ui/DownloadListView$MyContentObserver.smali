.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V
    .locals 0

    .line 610
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    .line 611
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 617
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView$MyContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;->access$800(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadListView;)V

    return-void
.end method
