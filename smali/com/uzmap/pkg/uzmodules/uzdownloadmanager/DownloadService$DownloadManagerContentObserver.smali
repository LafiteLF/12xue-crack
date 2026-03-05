.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;
.super Landroid/database/ContentObserver;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadManagerContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    .line 63
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    const-string p1, "Service ContentObserver received notification"

    .line 71
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 72
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V

    return-void
.end method
