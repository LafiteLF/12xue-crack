.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;
.super Ljava/lang/Object;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "State"
.end annotation


# instance fields
.field public mCountRetry:Z

.field public mFilename:Ljava/lang/String;

.field public mGotData:Z

.field public mMimeType:Ljava/lang/String;

.field public mNewUri:Ljava/lang/String;

.field public mRedirectCount:I

.field public mRequestUri:Ljava/lang/String;

.field public mRetryAfter:I

.field public mStream:Ljava/io/FileOutputStream;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 64
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    .line 65
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    .line 66
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRedirectCount:I

    .line 68
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    .line 72
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->access$000(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 73
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    .line 74
    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    return-void
.end method
