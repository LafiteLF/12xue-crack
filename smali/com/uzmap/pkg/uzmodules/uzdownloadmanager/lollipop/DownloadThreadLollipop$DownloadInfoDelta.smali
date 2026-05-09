.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;
.super Ljava/lang/Object;
.source "DownloadThreadLollipop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadInfoDelta"
.end annotation


# instance fields
.field public mCurrentBytes:J

.field public mETag:Ljava/lang/String;

.field public mErrorMsg:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNumFailed:I

.field public mRetryAfter:I

.field public mStatus:I

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 2

    .line 97
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    iget-object p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;

    .line 99
    iget-object p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    .line 100
    iget-object p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mMimeType:Ljava/lang/String;

    .line 101
    iget p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    .line 102
    iget p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    .line 103
    iget p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRetryAfter:I

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mRetryAfter:I

    .line 104
    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    .line 105
    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCurrentBytes:J

    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    .line 106
    iget-object p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    return-void
.end method

.method private buildContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 110
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 111
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mMimeType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "numfailed"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mRetryAfter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 117
    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 119
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    move-result-object v1

    invoke-interface {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastmod"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 121
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mErrorMsg:Ljava/lang/String;

    const-string v2, "errorMsg"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public writeToDatabase()V
    .locals 4

    .line 129
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->buildContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method public writeToDatabaseOrThrow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 137
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->access$300(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    .line 138
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->buildContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "deleted == \'0\'"

    const/4 v4, 0x0

    .line 137
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 139
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v1, 0x1ea

    const-string v2, "Download deleted or missing!"

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0
.end method
