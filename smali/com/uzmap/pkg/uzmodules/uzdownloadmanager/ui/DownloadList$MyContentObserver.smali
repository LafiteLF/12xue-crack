.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;

    .line 72
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 78
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList$MyContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/ui/DownloadList;)V

    return-void
.end method
