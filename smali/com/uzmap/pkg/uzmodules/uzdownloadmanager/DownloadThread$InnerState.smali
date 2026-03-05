.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerState"
.end annotation


# instance fields
.field public mBytesNotified:I

.field public mBytesSoFar:I

.field public mContinuingDownload:Z

.field public mHeaderContentDisposition:Ljava/lang/String;

.field public mHeaderContentLength:Ljava/lang/String;

.field public mHeaderContentLocation:Ljava/lang/String;

.field public mHeaderETag:Ljava/lang/String;

.field public mTimeLastNotification:J


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    .line 84
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    .line 88
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesNotified:I

    const-wide/16 v0, 0x0

    .line 89
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mTimeLastNotification:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$1;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;-><init>()V

    return-void
.end method
