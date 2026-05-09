.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;
.super Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;
.source "DownloadThreadLollipop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIMEOUT:I = 0x4e20

.field private static final HTTP_REQUESTED_RANGE_NOT_SATISFIABLE:I = 0x1a0

.field private static final HTTP_TEMP_REDIRECT:I = 0x133


# instance fields
.field private final mId:J

.field private final mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

.field private mLastUpdateBytes:J

.field private mLastUpdateTime:J

.field private mMadeProgress:Z

.field private final mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

.field private volatile mPolicyDirty:Z

.field private mSpeed:J

.field private mSpeedSampleBytes:J

.field private mSpeedSampleStart:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 1

    const/4 v0, 0x0

    .line 164
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;)V
    .locals 0

    .line 168
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mMadeProgress:Z

    const-wide/16 p1, 0x0

    .line 153
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateBytes:J

    .line 154
    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateTime:J

    .line 169
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    .line 170
    iget-wide p1, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    .line 171
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-direct {p1, p0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    return-object p0
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;)Landroid/content/Context;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private addRequestHeaders(Ljava/net/HttpURLConnection;Z)V
    .locals 3

    .line 598
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getHeaders()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 599
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "User-Agent"

    .line 602
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getRequestProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 603
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->userAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v0, "Accept-Encoding"

    const-string v1, "identity"

    .line 607
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    const-string v1, "close"

    .line 610
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 612
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Cookie"

    .line 613
    invoke-virtual {p1, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_4

    .line 616
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 617
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    const-string v0, "If-Match"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "bytes="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Range"

    invoke-virtual {p1, v0, p2}, Ljava/net/HttpURLConnection;->addRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private checkConnectivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkCanUseNetwork()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/16 v2, 0xc3

    const/4 v3, 0x3

    const/16 v4, 0xc4

    if-eq v0, v3, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 480
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 477
    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->notifyPauseDueToSize(Z)V

    :goto_0
    move v2, v4

    .line 482
    :cond_1
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 491
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    monitor-enter v0

    .line 492
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    .line 495
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const/16 v2, 0x1ea

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-boolean v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDeleted:Z

    if-nez v1, :cond_1

    .line 498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 500
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mPolicyDirty:Z

    if-eqz v0, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->checkConnectivity()V

    :cond_0
    return-void

    .line 496
    :cond_1
    :try_start_1
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v3, "download canceled"

    invoke-direct {v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v1

    .line 493
    :cond_2
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v2, 0xc1

    const-string v3, "download paused by owner"

    invoke-direct {v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 498
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private chmod(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    const/16 v0, 0x1a4

    .line 724
    invoke-static {p1, v0}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V

    return-void
.end method

.method private createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 682
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method private executeDownload()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 260
    :goto_0
    :try_start_0
    new-instance v2, Ljava/net/URL;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_1
    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x5

    if-ge v1, v4, :cond_11

    const/4 v1, 0x0

    .line 270
    :try_start_1
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->checkConnectivity()V

    .line 271
    invoke-direct {p0, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->openConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;

    move-result-object v1

    .line 272
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    const/16 v5, 0xc8

    const/16 v6, 0x1e9

    if-eq v4, v5, :cond_c

    const/16 v5, 0xce

    if-eq v4, v5, :cond_9

    const/16 v5, 0x133

    if-eq v4, v5, :cond_6

    const/16 v5, 0x19c

    if-eq v4, v5, :cond_5

    const/16 v5, 0x1a0

    if-eq v4, v5, :cond_4

    const/16 v5, 0x1f4

    if-eq v4, v5, :cond_3

    const/16 v5, 0x1f7

    if-eq v4, v5, :cond_2

    packed-switch v4, :pswitch_data_0

    .line 308
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->throwUnhandledHttpError(ILjava/lang/String;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    move v1, v3

    goto :goto_1

    .line 303
    :cond_2
    :try_start_2
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->parseUnavailableHeaders(Ljava/net/HttpURLConnection;)V

    .line 304
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    .line 306
    :cond_3
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v5, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    .line 301
    :cond_4
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v2, "Requested range not satisfiable"

    invoke-direct {v0, v6, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    .line 299
    :cond_5
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v2, "Precondition failed"

    invoke-direct {v0, v6, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_6
    :pswitch_0
    const-string v5, "Location"

    .line 291
    invoke-virtual {v1, v5}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 292
    new-instance v6, Ljava/net/URL;

    invoke-direct {v6, v2, v5}, Ljava/net/URL;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    const/16 v2, 0x12d

    if-ne v4, v2, :cond_7

    .line 295
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v6}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_7
    if-eqz v1, :cond_8

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_8
    move v1, v3

    move-object v2, v6

    goto/16 :goto_1

    :cond_9
    if-eqz v0, :cond_b

    .line 285
    :try_start_3
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->transferData(Ljava/net/HttpURLConnection;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_a

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_a
    return-void

    .line 283
    :cond_b
    :try_start_4
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v2, "Expected OK, but received partial"

    invoke-direct {v0, v6, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    if-nez v0, :cond_e

    .line 278
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->parseOkHeaders(Ljava/net/HttpURLConnection;)V

    .line 279
    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->transferData(Ljava/net/HttpURLConnection;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v1, :cond_d

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    return-void

    .line 276
    :cond_e
    :try_start_5
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v2, "Expected partial, but received OK"

    invoke-direct {v0, v6, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 311
    :try_start_6
    instance-of v2, v0, Ljava/net/ProtocolException;

    if-eqz v2, :cond_f

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unexpected status line"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 312
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v3, 0x1ee

    invoke-direct {v2, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v2

    .line 315
    :cond_f
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v3, 0x1ef

    invoke-direct {v2, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_2
    if-eqz v1, :cond_10

    .line 318
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 319
    :cond_10
    throw v0

    .line 321
    :cond_11
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v1, 0x1f1

    const-string v2, "Too many redirects"

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    .line 262
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v2, 0x190

    invoke-direct {v1, v2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private finalizeDestination()V
    .locals 4

    .line 423
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusError(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    const-string v2, "rw"

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 428
    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->ftruncate(Ljava/io/FileDescriptor;J)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 431
    :catch_0
    :try_start_2
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 432
    throw v1
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 436
    :catch_1
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 437
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 438
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    goto :goto_1

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusSuccess(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 445
    :try_start_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->chmod(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2

    .line 448
    :catch_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 451
    :try_start_4
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getRunningDestinationDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v1

    .line 453
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getSuccessDestinationDirectory(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v2

    .line 454
    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 455
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 456
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 457
    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 458
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_1
    :goto_1
    return-void
.end method

.method private ftruncate(Ljava/io/FileDescriptor;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 719
    invoke-static {p1, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    return-void
.end method

.method private static getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 0

    .line 637
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p0

    :catch_0
    return-wide p2
.end method

.method public static isStatusRetryable(I)Z
    .locals 1

    const/16 v0, 0x1ec

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1ef

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f4

    if-eq p0, v0, :cond_0

    const/16 v0, 0x1f7

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private logDebug(Ljava/lang/String;)V
    .locals 3

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ldx"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 632
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ldx"

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private logWarning(Ljava/lang/String;)V
    .locals 3

    .line 628
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ldx"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private lseek(Ljava/io/FileDescriptor;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 708
    sget v0, Landroid/system/OsConstants;->SEEK_SET:I

    invoke-static {p1, p2, p3, v0}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J

    return-void
.end method

.method private openConnection(Ljava/net/URL;Z)Ljava/net/HttpURLConnection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 666
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->createConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object p1

    const/16 v0, 0x4e20

    .line 667
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 668
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v0, 0x0

    .line 669
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 670
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->addRequestHeaders(Ljava/net/HttpURLConnection;Z)V

    return-object p1
.end method

.method private parseOkHeaders(Ljava/net/HttpURLConnection;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Content-Disposition"

    .line 544
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "Content-Location"

    .line 545
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 547
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mUri:Ljava/lang/String;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mMimeType:Ljava/lang/String;

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v7, v7, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v8, v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    iget-object v10, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-boolean v10, v10, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIsPublicApi:Z

    invoke-static/range {v1 .. v10}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mFileName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 558
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v1, 0x1ec

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to generate filename: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    .line 561
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 562
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mMimeType:Ljava/lang/String;

    :cond_1
    const-string v0, "Transfer-Encoding"

    .line 564
    invoke-virtual {p1, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    if-nez v0, :cond_2

    .line 566
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const-string v3, "Content-Length"

    invoke-static {p1, v3, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->getHeaderFieldLong(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    goto :goto_1

    .line 568
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    .line 570
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const-string v1, "ETag"

    invoke-virtual {p1, v1}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    .line 572
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getURL()Ljava/net/URL;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getHeaderFields()Ljava/util/Map;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->setCookie(Ljava/lang/String;Ljava/util/Map;)V

    .line 574
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabaseOrThrow()V

    .line 576
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->checkConnectivity()V

    return-void
.end method

.method private parseUnavailableHeaders(Ljava/net/HttpURLConnection;)V
    .locals 6

    const-string v0, "Retry-After"

    const/4 v1, -0x1

    .line 580
    invoke-virtual {p1, v0, v1}, Ljava/net/HttpURLConnection;->getHeaderFieldInt(Ljava/lang/String;I)I

    move-result p1

    int-to-long v0, p1

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_0

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x1e

    cmp-long p1, v0, v2

    const-wide/32 v4, 0x15180

    if-gez p1, :cond_1

    move-wide v0, v2

    goto :goto_0

    :cond_1
    cmp-long p1, v0, v4

    if-lez p1, :cond_2

    move-wide v0, v4

    .line 589
    :cond_2
    :goto_0
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->sRandom:Ljava/util/Random;

    const/16 v2, 0x1f

    invoke-virtual {p1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v2, v0

    .line 591
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mRetryAfter:I

    return-void
.end method

.method private posix_fallocate(Ljava/io/FileDescriptor;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;,
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 687
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    return-void

    .line 690
    :cond_0
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object v0

    iget-wide v0, v0, Landroid/system/StructStat;->st_size:J

    sub-long v0, p2, v0

    .line 692
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->ensureAvailableSpace(Landroid/content/Context;Ljava/io/FileDescriptor;J)V

    const-wide/16 v0, 0x0

    .line 695
    :try_start_0
    invoke-static {p1, v0, v1, p2, p3}, Landroid/system/Os;->posix_fallocate(Ljava/io/FileDescriptor;JJ)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 697
    iget p3, p2, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ENOSYS:I

    if-eq p3, v0, :cond_2

    iget p3, p2, Landroid/system/ErrnoException;->errno:I

    sget v0, Landroid/system/OsConstants;->ENOTSUP:I

    if-ne p3, v0, :cond_1

    goto :goto_0

    .line 701
    :cond_1
    throw p2

    :cond_2
    :goto_0
    const-string p2, "ldx"

    const-string p3, "fallocate() not supported; falling back to ftruncate()"

    .line 698
    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    invoke-static {p1, p2, p3}, Landroid/system/Os;->ftruncate(Ljava/io/FileDescriptor;J)V

    :goto_1
    return-void
.end method

.method private st_size(Ljava/io/FileDescriptor;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;
        }
    .end annotation

    .line 714
    invoke-static {p1}, Landroid/system/Os;->fstat(Ljava/io/FileDescriptor;)Landroid/system/StructStat;

    move-result-object p1

    iget-wide v0, p1, Landroid/system/StructStat;->st_size:J

    return-wide v0
.end method

.method private transferData(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/FileDescriptor;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    const/16 v0, 0x1000

    new-array v0, v0, [B

    .line 385
    :goto_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->checkPausedOrCanceled()V

    const/16 v1, 0x1ef

    .line 388
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v3, -0x1

    const-wide/16 v4, -0x1

    if-ne v2, v3, :cond_2

    .line 413
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    cmp-long p1, p1, v4

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v2, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    cmp-long p1, p1, v2

    if-nez p1, :cond_0

    goto :goto_1

    .line 414
    :cond_0
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string p2, "Content length mismatch"

    invoke-direct {p1, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v1, 0x1ec

    .line 397
    :try_start_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    cmp-long v3, v6, v4

    if-nez v3, :cond_3

    .line 398
    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->st_size(Ljava/io/FileDescriptor;)J

    move-result-wide v3

    .line 399
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v5, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    int-to-long v7, v2

    add-long/2addr v5, v7

    sub-long/2addr v5, v3

    .line 400
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    invoke-static {v3, p3, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->ensureAvailableSpace(Landroid/content/Context;Ljava/io/FileDescriptor;J)V

    :cond_3
    const/4 v3, 0x0

    .line 402
    invoke-virtual {p2, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    const/4 v3, 0x1

    .line 403
    iput-boolean v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mMadeProgress:Z

    .line 404
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    int-to-long v6, v2

    add-long/2addr v4, v6

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    .line 405
    invoke-direct {p0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->updateProgress(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 409
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p2, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 407
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p2, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw p2

    :catch_2
    move-exception p1

    .line 390
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed reading response: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private transferData(Ljava/net/HttpURLConnection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "Connection"

    .line 332
    invoke-virtual {p1, v3}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "close"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    const-string v4, "Transfer-Encoding"

    .line 333
    invoke-virtual {p1, v4}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "chunked"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v0, :cond_2

    if-nez v3, :cond_2

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    if-eqz v1, :cond_7

    const/4 v0, 0x0

    .line 344
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/16 v1, 0x1ec

    .line 349
    :try_start_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "rw"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 350
    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 351
    :try_start_2
    new-instance v4, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v4, v2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 353
    :try_start_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    .line 354
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    invoke-direct {p0, v3, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->posix_fallocate(Ljava/io/FileDescriptor;J)V

    .line 357
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    invoke-direct {p0, v3, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->lseek(Ljava/io/FileDescriptor;J)V
    :try_end_3
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 365
    :try_start_4
    invoke-direct {p0, p1, v4, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->transferData(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/io/FileDescriptor;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 367
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 369
    :try_start_5
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    if-eqz v3, :cond_4

    .line 370
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 373
    :catch_0
    :cond_4
    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 374
    throw p1

    :goto_2
    return-void

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_7

    :catchall_1
    move-exception v1

    move-object v4, v0

    goto :goto_3

    :catch_3
    move-exception v2

    move-object v4, v0

    goto :goto_4

    :catch_4
    move-exception v2

    move-object v4, v0

    goto :goto_6

    :catchall_2
    move-exception v1

    move-object v3, v0

    move-object v4, v3

    :goto_3
    move-object v0, v1

    goto :goto_8

    :catch_5
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    :goto_4
    move-object v0, v2

    .line 361
    :goto_5
    :try_start_6
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {v2, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v2

    :catch_6
    move-exception v2

    move-object v3, v0

    move-object v4, v3

    :goto_6
    move-object v0, v2

    .line 359
    :goto_7
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {v2, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception v0

    goto :goto_8

    :catchall_4
    move-exception p1

    move-object v3, v0

    move-object v4, v3

    move-object v0, p1

    move-object p1, v4

    goto :goto_8

    :catch_7
    move-exception p1

    .line 346
    :try_start_7
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v2, 0x1ef

    invoke-direct {v1, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/Throwable;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 367
    :goto_8
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    if-eqz v4, :cond_5

    .line 369
    :try_start_8
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    goto :goto_9

    :catchall_5
    move-exception p1

    goto :goto_a

    :cond_5
    :goto_9
    if-eqz v3, :cond_6

    .line 370
    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    .line 373
    :goto_a
    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 374
    throw p1

    .line 373
    :catch_8
    :cond_6
    :goto_b
    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->closeQuietly(Ljava/io/Closeable;)V

    .line 375
    throw v0

    .line 336
    :cond_7
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v0, 0x1e9

    const-string v1, "can\'t know size of download, giving up"

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private updateProgress(Ljava/io/FileDescriptor;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 509
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 510
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    .line 511
    iget-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeedSampleStart:J

    sub-long v4, v0, v4

    const-wide/16 v6, 0x1f4

    cmp-long v6, v4, v6

    if-lez v6, :cond_2

    .line 513
    iget-wide v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeedSampleBytes:J

    sub-long v6, v2, v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long/2addr v6, v4

    .line 514
    iget-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeed:J

    const-wide/16 v8, 0x0

    cmp-long v10, v4, v8

    if-nez v10, :cond_0

    .line 515
    iput-wide v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeed:J

    goto :goto_0

    :cond_0
    const-wide/16 v10, 0x3

    mul-long/2addr v4, v10

    add-long/2addr v4, v6

    const-wide/16 v6, 0x4

    .line 517
    div-long/2addr v4, v6

    iput-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeed:J

    .line 520
    :goto_0
    iget-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeedSampleStart:J

    cmp-long v4, v4, v8

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    if-eqz v4, :cond_1

    .line 521
    iget-wide v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    iget-wide v7, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeed:J

    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 523
    :cond_1
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeedSampleStart:J

    .line 524
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mSpeedSampleBytes:J

    .line 526
    :cond_2
    iget-wide v4, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateBytes:J

    sub-long v4, v2, v4

    .line 527
    iget-wide v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateTime:J

    sub-long v6, v0, v6

    const-wide/16 v8, 0x1000

    cmp-long v4, v4, v8

    if-lez v4, :cond_3

    const-wide/16 v4, 0x5dc

    cmp-long v4, v6, v4

    if-lez v4, :cond_3

    .line 531
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->sync()V

    .line 532
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabaseOrThrow()V

    .line 533
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateBytes:J

    .line 534
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mLastUpdateTime:J

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const-string v0, "Finished with status "

    const/16 v1, 0xa

    .line 177
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 180
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-wide v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-static {v1, v2, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->queryDownloadStatus(Landroid/content/Context;Landroid/content/ContentResolver;J)I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_0

    const-string v0, "Already finished; skipping"

    .line 181
    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 185
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    :try_start_0
    const-string v7, "ldx"

    .line 187
    invoke-virtual {v3, v6, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    .line 188
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const-string v3, "Starting"

    .line 189
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    .line 192
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->executeDownload()V

    .line 193
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iput v2, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    .line 195
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J

    const-wide/16 v7, -0x1

    cmp-long v2, v2, v7

    if-nez v2, :cond_1

    .line 196
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-wide v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mCurrentBytes:J

    iput-wide v7, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mTotalBytes:J
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 235
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    if-eqz v0, :cond_2

    .line 237
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 239
    :cond_2
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->finalizeDestination()V

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabase()V

    .line 241
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 242
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->sendIntentIfRequested()V

    :cond_3
    if-eqz v1, :cond_b

    .line 245
    :goto_0
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_3

    :catchall_0
    move-exception v2

    .line 231
    :try_start_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const/16 v6, 0x1eb

    iput v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    .line 232
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mErrorMsg:Ljava/lang/String;

    .line 233
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 235
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    if-eqz v0, :cond_4

    .line 237
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 239
    :cond_4
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->finalizeDestination()V

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabase()V

    .line 241
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 242
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->sendIntentIfRequested()V

    :cond_5
    if-eqz v1, :cond_b

    goto :goto_0

    :catch_0
    move-exception v2

    .line 199
    :try_start_2
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->getFinalStatus()I

    move-result v7

    iput v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    .line 200
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mErrorMsg:Ljava/lang/String;

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stop requested with status "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v3, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mErrorMsg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logWarning(Ljava/lang/String;)V

    .line 204
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    const/16 v3, 0xc2

    if-eq v2, v3, :cond_c

    .line 208
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->isStatusRetryable(I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 209
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mMadeProgress:Z

    if-eqz v2, :cond_6

    .line 210
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iput v6, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    goto :goto_1

    .line 212
    :cond_6
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v7, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    add-int/2addr v7, v6

    iput v7, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mNumFailed:I

    const/4 v7, 0x5

    if-ge v2, v7, :cond_8

    .line 215
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkCanUseNetwork()I

    move-result v2

    if-ne v6, v2, :cond_7

    .line 217
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iput v3, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    goto :goto_2

    .line 220
    :cond_7
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const/16 v3, 0xc3

    iput v3, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    .line 222
    :goto_2
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mETag:Ljava/lang/String;

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mMadeProgress:Z

    if-eqz v2, :cond_8

    .line 225
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    const/16 v3, 0x1e9

    iput v3, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 235
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    if-eqz v0, :cond_9

    .line 237
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 239
    :cond_9
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->finalizeDestination()V

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabase()V

    .line 241
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 242
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->sendIntentIfRequested()V

    :cond_a
    if-eqz v1, :cond_b

    goto/16 :goto_0

    :cond_b
    :goto_3
    return-void

    .line 205
    :cond_c
    :try_start_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Execution should always throw final error codes"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v2

    .line 235
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->statusToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->logDebug(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mNotifier:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;

    if-eqz v0, :cond_d

    .line 237
    iget-wide v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mId:J

    invoke-virtual {v0, v6, v7, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadNotifier;->notifyDownloadSpeed(JJ)V

    .line 239
    :cond_d
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->finalizeDestination()V

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->writeToDatabase()V

    .line 241
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfoDelta:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop$DownloadInfoDelta;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 242
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/lollipop/DownloadThreadLollipop;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->sendIntentIfRequested()V

    :cond_e
    if-eqz v1, :cond_f

    .line 245
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 248
    :cond_f
    throw v2
.end method
