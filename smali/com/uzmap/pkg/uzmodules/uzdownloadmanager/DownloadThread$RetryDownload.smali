.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;
.super Ljava/lang/Throwable;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RetryDownload"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x72914cf3f9d56434L


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$1;)V
    .locals 0

    .line 96
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;)V

    return-void
.end method
