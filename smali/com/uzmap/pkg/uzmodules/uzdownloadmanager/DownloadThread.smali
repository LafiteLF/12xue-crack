.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;
.super Ljava/lang/Thread;
.source "DownloadThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;
    }
.end annotation


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

.field protected mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    .line 40
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    .line 41
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private addRequestHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3

    .line 775
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

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

    .line 776
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v2, v1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 778
    :cond_0
    invoke-virtual {p2}, Lorg/apache/http/client/methods/HttpGet;->getURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 779
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "Cookie"

    .line 780
    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    :cond_1
    iget-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_3

    .line 783
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 784
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    const-string v1, "If-Match"

    invoke-virtual {p2, v1, v0}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 786
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bytes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "-"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Range"

    invoke-virtual {p2, v0, p1}, Lorg/apache/http/client/methods/HttpGet;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method private cannotResume(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)Z
    .locals 1

    .line 411
    iget v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-boolean v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNoIntegrity:Z

    if-nez v0, :cond_0

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private checkConnectivity(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 203
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkCanUseNetwork()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/16 v1, 0xc3

    const/4 v2, 0x3

    const/16 v3, 0xc4

    if-eq p1, v2, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->notifyPauseDueToSize(Z)V

    goto :goto_0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->notifyPauseDueToSize(Z)V

    :goto_0
    move v1, v3

    .line 213
    :cond_1
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getLogMessageForNetworkError(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_2
    return-void
.end method

.method private checkPausedOrCanceled(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 318
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    monitor-enter p1

    .line 319
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mControl:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 323
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const/16 v0, 0x1ea

    if-eq p1, v0, :cond_0

    return-void

    .line 325
    :cond_0
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string v1, "download canceled"

    invoke-direct {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    .line 320
    :cond_1
    :try_start_1
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v1, 0xc1

    const-string v2, "download paused by owner"

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0

    :catchall_0
    move-exception v0

    .line 323
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private cleanupDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;I)V
    .locals 1

    .line 259
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->closeDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    .line 260
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusError(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 261
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 262
    iput-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private closeDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    .locals 2

    .line 301
    :try_start_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    const/4 v0, 0x0

    .line 303
    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 306
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "exception when closing the file after download : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ldx"

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private executeDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;,
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 178
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$1;)V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    .line 181
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->setupDestinationFile(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V

    .line 182
    invoke-direct {p0, v0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->addRequestHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/client/methods/HttpGet;)V

    .line 185
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->checkConnectivity(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    .line 187
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->sendRequest(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;

    move-result-object p2

    .line 188
    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->handleExceptionalStatus(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 190
    sget-boolean p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz p3, :cond_0

    .line 191
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "received response for "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v2, "ldx"

    invoke-static {v2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->processResponseHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 195
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->openResponseEntity(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;

    move-result-object p2

    .line 196
    invoke-direct {p0, p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->transferData(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;[BLjava/io/InputStream;)V

    return-void
.end method

.method private finalizeDestinationFile(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 251
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->syncDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    return-void
.end method

.method private getFinalStatusForHttpError(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)I
    .locals 2

    .line 709
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->isNetworkAvailable(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 p1, 0xc3

    return p1

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    const/4 v0, 0x1

    .line 712
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    const/16 p1, 0xc2

    return p1

    .line 715
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reached max retries for "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ldx"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1ef

    return p1
.end method

.method private handleEndOfStream(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 390
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 391
    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "current_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 392
    iget-object v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 393
    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "total_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 397
    iget-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    iget-object v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 398
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    .line 400
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cannotResume(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 401
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1e9

    const-string v0, "mismatched content length"

    invoke-direct {p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    .line 404
    :cond_2
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->getFinalStatusForHttpError(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)I

    move-result p1

    const-string v0, "closed socket before end of file"

    invoke-direct {p2, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p2

    :cond_3
    return-void
.end method

.method private handleExceptionalStatus(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;,
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 586
    invoke-interface {p3}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const/16 v1, 0x1f7

    if-ne v0, v1, :cond_0

    .line 587
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 588
    invoke-direct {p0, p1, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->handleServiceUnavailable(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;)V

    :cond_0
    const/16 v1, 0x12d

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12e

    if-eq v0, v1, :cond_1

    const/16 v1, 0x12f

    if-eq v0, v1, :cond_1

    const/16 v1, 0x133

    if-ne v0, v1, :cond_2

    .line 591
    :cond_1
    invoke-direct {p0, p1, p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->handleRedirect(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V

    .line 594
    :cond_2
    iget-boolean p3, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz p3, :cond_3

    const/16 p3, 0xce

    goto :goto_0

    :cond_3
    const/16 p3, 0xc8

    :goto_0
    if-eq v0, p3, :cond_4

    .line 596
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->handleOtherStatus(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;I)V

    :cond_4
    return-void
.end method

.method private handleOtherStatus(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 606
    invoke-static {p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusError(I)Z

    move-result p1

    if-nez p1, :cond_3

    const/16 p1, 0x12c

    if-lt p3, p1, :cond_1

    const/16 p1, 0x190

    if-lt p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x1ed

    goto :goto_1

    .line 610
    :cond_1
    :goto_0
    iget-boolean p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz p1, :cond_2

    const/16 p1, 0xc8

    if-ne p3, p1, :cond_2

    const/16 p1, 0x1e9

    goto :goto_1

    :cond_2
    const/16 p1, 0x1ee

    goto :goto_1

    :cond_3
    move p1, p3

    .line 615
    :goto_1
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p1, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private handleRedirect(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;,
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;
        }
    .end annotation

    .line 623
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    const-string v1, "ldx"

    if-eqz v0, :cond_0

    .line 624
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "got HTTP redirect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :cond_0
    iget v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRedirectCount:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    const-string v0, "Location"

    .line 629
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    .line 633
    :cond_1
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_2

    .line 634
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URI;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/net/URI;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/net/URI;->resolve(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 648
    iget v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRedirectCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRedirectCount:I

    .line 649
    iput-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    const/16 v0, 0x12d

    if-eq p3, v0, :cond_3

    const/16 v0, 0x12f

    if-ne p3, v0, :cond_4

    .line 652
    :cond_3
    iput-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mNewUri:Ljava/lang/String;

    .line 654
    :cond_4
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$1;)V

    throw p1

    .line 641
    :catch_0
    sget-boolean p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz p1, :cond_5

    .line 642
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t resolve redirect URI "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    :cond_5
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1ef

    const-string p3, "Couldn\'t resolve redirect URI"

    invoke-direct {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    .line 627
    :cond_6
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1f1

    const-string p3, "too many redirects"

    invoke-direct {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private handleServiceUnavailable(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 661
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    const-string v1, "ldx"

    if-eqz v0, :cond_0

    const-string v0, "got HTTP response code 503"

    .line 662
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 664
    iput-boolean v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    const-string v0, "Retry-After"

    .line 665
    invoke-interface {p2, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 668
    :try_start_0
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_1

    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Retry-After :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 671
    :cond_1
    invoke-interface {p2}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    .line 672
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    if-ltz p2, :cond_4

    .line 675
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    const/16 v0, 0x1e

    if-lt p2, v0, :cond_2

    .line 677
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    const v0, 0x15180

    if-le p2, v0, :cond_3

    .line 678
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    goto :goto_0

    .line 676
    :cond_2
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    .line 680
    :cond_3
    :goto_0
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    sget-object v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->sRandom:Ljava/util/Random;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/2addr p2, v0

    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    .line 681
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    mul-int/lit16 p2, p2, 0x3e8

    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    .line 673
    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    :catch_0
    :cond_5
    :goto_1
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0xc2

    const-string v0, "got 503 Service Unavailable, will retry later"

    invoke-direct {p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private logNetworkState()V
    .locals 0

    return-void
.end method

.method private notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 795
    invoke-direct/range {p0 .. p7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 797
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->sendIntentIfRequested()V

    if-eqz p7, :cond_1

    const-string p1, "zip"

    .line 798
    invoke-virtual {p7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 800
    invoke-static {p5, p7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->guessUnZipTargetPath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 801
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 804
    :cond_0
    invoke-static {p5, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->unzip(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private notifyThroughDatabase(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 811
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 812
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "status"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "_data"

    .line 813
    invoke-virtual {v0, p1, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_0

    const-string p1, "uri"

    .line 815
    invoke-virtual {v0, p1, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string p1, "mimetype"

    .line 817
    invoke-virtual {v0, p1, p7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide p5

    invoke-static {p5, p6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p5, "lastmod"

    invoke-virtual {v0, p5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 819
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p3, "method"

    invoke-virtual {v0, p3, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p1, "numfailed"

    if-nez p2, :cond_1

    const/4 p2, 0x0

    .line 821
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    if-eqz p4, :cond_2

    .line 823
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget p3, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    add-int/2addr p3, p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 828
    :goto_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, v0, p3, p3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private openResponseEntity(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/HttpResponse;)Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 448
    :try_start_0
    invoke-interface {p2}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 450
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->logNetworkState()V

    .line 451
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->getFinalStatusForHttpError(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while getting entity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private processResponseHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 469
    iget-boolean v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    if-eqz v0, :cond_0

    return-void

    .line 474
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->readResponseHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V

    .line 477
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v2, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v3, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHint:Ljava/lang/String;

    iget-object v4, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    iget-object v5, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    iget-object v6, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v7, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    .line 485
    iget-object p3, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_0

    :cond_1
    const-wide/16 v8, 0x0

    :goto_0
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-boolean v10, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIsPublicApi:Z

    .line 477
    invoke-static/range {v1 .. v10}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->generateSaveFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJZ)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError; {:try_start_0 .. :try_end_0} :catch_1

    .line 491
    :try_start_1
    new-instance p3, Ljava/io/FileOutputStream;

    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {p3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object p3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 495
    sget-boolean p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz p3, :cond_2

    .line 496
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writing "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "ldx"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->updateDatabaseFromHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V

    .line 500
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->checkConnectivity(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    return-void

    :catch_0
    move-exception p1

    .line 493
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p3, 0x1ec

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while opening destination file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 488
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    iget p3, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError;->mStatus:I

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers$GenerateSaveFileError;->mMessage:Ljava/lang/String;

    invoke-direct {p2, p3, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p2
.end method

.method private readFromResponse(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;[BLjava/io/InputStream;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 423
    :try_start_0
    invoke-virtual {p4, p3}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p3

    .line 425
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->logNetworkState()V

    .line 426
    new-instance p4, Landroid/content/ContentValues;

    invoke-direct {p4}, Landroid/content/ContentValues;-><init>()V

    .line 427
    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "current_bytes"

    invoke-virtual {p4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 428
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 429
    invoke-direct {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cannotResume(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)Z

    move-result p2

    const-string p4, "while reading response: "

    if-eqz p2, :cond_0

    .line 430
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", can\'t resume interrupted download with no ETag"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 432
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p4, 0x1e9

    invoke-direct {p2, p4, p1, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 435
    :cond_0
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->getFinalStatusForHttpError(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    invoke-virtual {p3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p2, p1, p4, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private readResponseHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;Lorg/apache/http/HttpResponse;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    .line 525
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 527
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    :cond_0
    const-string v0, "Content-Location"

    .line 529
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 531
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    .line 533
    :cond_1
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "Content-Type"

    .line 534
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 536
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    .line 539
    :cond_2
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-static {v0, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->setCookie(Ljava/lang/String;Lorg/apache/http/HttpResponse;)V

    const-string v0, "ETag"

    .line 540
    invoke-interface {p3, v0}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 542
    invoke-interface {v0}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    :cond_3
    const/4 v0, 0x0

    const-string v1, "Transfer-Encoding"

    .line 545
    invoke-interface {p3, v1}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 547
    invoke-interface {v1}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    :cond_4
    const-string v1, "ldx"

    if-nez v0, :cond_5

    const-string v2, "Content-Length"

    .line 550
    invoke-interface {p3, v2}, Lorg/apache/http/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lorg/apache/http/Header;

    move-result-object p3

    if-eqz p3, :cond_6

    .line 552
    invoke-interface {p3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 553
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    goto :goto_0

    .line 557
    :cond_5
    sget-boolean p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz p3, :cond_6

    const-string p3, "ignoring content-length because of xfer-encoding"

    .line 558
    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 562
    :cond_6
    :goto_0
    sget-boolean p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz p3, :cond_7

    .line 563
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Disposition: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentDisposition:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Location: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLocation:Ljava/lang/String;

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ETag: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Transfer-Encoding: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    :cond_7
    iget-object p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    if-nez p1, :cond_9

    if-eqz v0, :cond_8

    const-string p1, "chunked"

    .line 574
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    const/4 p1, 0x1

    goto :goto_1

    :cond_9
    const/4 p1, 0x0

    .line 575
    :goto_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-boolean p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNoIntegrity:Z

    if-nez p2, :cond_b

    if-nez p1, :cond_a

    goto :goto_2

    .line 576
    :cond_a
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1ef

    const-string p3, "can\'t know size of download, giving up"

    invoke-direct {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_b
    :goto_2
    return-void
.end method

.method private reportProgress(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V
    .locals 6

    .line 333
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v0

    .line 334
    iget p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    iget v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesNotified:I

    sub-int/2addr p1, v2

    const/16 v2, 0x1000

    if-le p1, v2, :cond_0

    iget-wide v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mTimeLastNotification:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x5dc

    cmp-long p1, v2, v4

    if-lez p1, :cond_0

    .line 338
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 339
    iget v2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "current_bytes"

    invoke-virtual {p1, v3, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 340
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 341
    iget p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    iput p1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesNotified:I

    .line 342
    iput-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mTimeLastNotification:J

    :cond_0
    return-void
.end method

.method private static sanitizeMimeType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 840
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3b

    .line 842
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x0

    .line 844
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendRequest(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)Lorg/apache/http/HttpResponse;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    const-string v0, "while trying to execute request: "

    .line 697
    :try_start_0
    invoke-interface {p2, p3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 702
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->logNetworkState()V

    .line 703
    new-instance p3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->getFinalStatusForHttpError(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)I

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 704
    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p3, p1, v0, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p1

    .line 699
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p3, 0x1ef

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p3, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private setupDestinationFile(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 726
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 727
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->isFilenameValid(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0x1ec

    if-eqz v0, :cond_2

    .line 733
    new-instance v0, Ljava/io/File;

    iget-object v2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 734
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 735
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 738
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 p2, 0x0

    .line 739
    iput-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    goto :goto_0

    .line 751
    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v2

    .line 756
    iput v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    .line 757
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderContentLength:Ljava/lang/String;

    .line 760
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    iput-object v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    .line 761
    iput-boolean v5, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mContinuingDownload:Z

    goto :goto_0

    :catch_0
    move-exception p1

    .line 753
    new-instance p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "while opening destination for resuming: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 729
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const-string p2, "found invalid internal destination filename"

    invoke-direct {p1, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1

    .line 766
    :cond_3
    :goto_0
    iget-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    if-nez p2, :cond_4

    .line 767
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->closeDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    :cond_4
    return-void
.end method

.method private syncDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    .locals 9

    const-string v0, "file "

    const-string v1, "exception while closing file: "

    const-string v2, "IOException while closing synced file: "

    const-string v3, "ldx"

    const/4 v4, 0x0

    .line 272
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v7, 0x1

    invoke-direct {v5, v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/SyncFailedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :try_start_1
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/FileDescriptor;->sync()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/SyncFailedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 285
    :try_start_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_5

    goto/16 :goto_4

    :catch_0
    move-exception p1

    move-object v4, v5

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v4, v5

    goto :goto_1

    :catch_2
    move-exception v4

    goto :goto_2

    :catch_3
    move-exception v4

    goto/16 :goto_3

    :catchall_0
    move-exception p1

    goto/16 :goto_5

    :catch_4
    move-exception p1

    :goto_0
    :try_start_3
    const-string v0, "exception while syncing file: "

    .line 281
    invoke-static {v3, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v4, :cond_0

    .line 285
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_5

    goto/16 :goto_4

    :catch_5
    move-exception p1

    .line 289
    invoke-static {v3, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_6
    move-exception p1

    .line 287
    invoke-static {v3, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    :catch_7
    move-exception v0

    .line 279
    :goto_1
    :try_start_5
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException trying to sync "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v4, :cond_0

    .line 285
    :try_start_6
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_4

    :catch_8
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .line 277
    :goto_2
    :try_start_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " sync failed: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v5, :cond_0

    .line 285
    :try_start_8
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_4

    :catch_9
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .line 275
    :goto_3
    :try_start_9
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not found: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-eqz v5, :cond_0

    .line 285
    :try_start_a
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_5

    :cond_0
    :goto_4
    return-void

    :catchall_1
    move-exception p1

    move-object v4, v5

    :goto_5
    if-eqz v4, :cond_1

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_a

    goto :goto_6

    :catch_a
    move-exception v0

    .line 289
    invoke-static {v3, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :catch_b
    move-exception v0

    .line 287
    invoke-static {v3, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 292
    :cond_1
    :goto_6
    throw p1
.end method

.method private transferData(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;[BLjava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 225
    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->readFromResponse(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;[BLjava/io/InputStream;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 227
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->handleEndOfStream(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 231
    iput-boolean v1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    .line 232
    invoke-direct {p0, p1, p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->writeDataToDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;[BI)V

    .line 233
    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    add-int/2addr v1, v0

    iput v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    .line 234
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->reportProgress(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V

    .line 236
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_1

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downloaded "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mBytesSoFar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ldx"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    :cond_1
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->checkPausedOrCanceled(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V

    goto :goto_0
.end method

.method private updateDatabaseFromHeaders(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;)V
    .locals 3

    .line 508
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 509
    iget-object v1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 511
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$InnerState;->mHeaderETag:Ljava/lang/String;

    const-string v1, "etag"

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    :cond_0
    iget-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 514
    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const-string p2, "mimetype"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "total_bytes"

    invoke-virtual {v0, p2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 517
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    return-void
.end method

.method private writeDataToDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;[BI)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 355
    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    if-nez v0, :cond_0

    .line 356
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    .line 358
    :cond_0
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mStream:Ljava/io/FileOutputStream;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 359
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    if-nez v0, :cond_1

    .line 360
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->closeDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    .line 364
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->isOnCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    const-wide/16 v2, 0x1000

    invoke-static {v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->discardPurgeableFiles(Landroid/content/Context;J)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 368
    :cond_2
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->isExternalMediaMounted()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 373
    :cond_3
    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    .line 374
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getFilesystemRoot(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->getAvailableBytes(Ljava/io/File;)J

    move-result-wide p1

    int-to-long v1, p3

    cmp-long p1, p1, v1

    if-gez p1, :cond_4

    .line 376
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1f2

    const-string p3, "insufficient space while writing destination file"

    invoke-direct {p1, p2, p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 379
    :cond_4
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1ec

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "while writing destination file: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 369
    :cond_5
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 p2, 0x1f3

    const-string p3, "external media not mounted while writing destination file"

    invoke-direct {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public run()V
    .locals 12

    const-string v1, ": "

    const-string v2, "ldx"

    const/16 v0, 0xa

    .line 107
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 109
    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    const/16 v4, 0x1eb

    const/4 v5, 0x0

    const/4 v9, 0x0

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    const-string v6, "power"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v6, 0x1

    .line 115
    invoke-virtual {v0, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7
    :try_end_0
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 116
    :try_start_1
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 117
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz v0, :cond_0

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "initiating download for "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v8, v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    :cond_0
    iget-object v0, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    const-string v8, "https"

    invoke-virtual {v0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    invoke-static {v5, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/apachetls/SslHttpManager;->createHttpsClient(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v0

    :goto_0
    move-object v5, v0

    goto :goto_1

    .line 123
    :cond_1
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->userAgent()Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mContext:Landroid/content/Context;

    invoke-static {v0, v8}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;Landroid/content/Context;)Landroid/net/http/AndroidHttpClient;

    move-result-object v0

    goto :goto_0

    :goto_1
    move v0, v9

    :goto_2
    if-nez v0, :cond_2

    .line 127
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Initiating request for download "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v10, v10, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    new-instance v8, Lorg/apache/http/client/methods/HttpGet;

    iget-object v10, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRequestUri:Ljava/lang/String;

    invoke-direct {v8, v10}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 130
    :try_start_2
    invoke-direct {p0, v3, v5, v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->executeDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;Lorg/apache/http/client/HttpClient;Lorg/apache/http/client/methods/HttpGet;)V
    :try_end_2
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$RetryDownload; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 135
    :try_start_3
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    move v0, v6

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v6, v0

    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    .line 137
    throw v6

    .line 135
    :catch_0
    invoke-virtual {v8}, Lorg/apache/http/client/methods/HttpGet;->abort()V

    goto :goto_2

    .line 140
    :cond_2
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "download completed for "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    invoke-direct {p0, v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->finalizeDestinationFile(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;)V
    :try_end_3
    .catch Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/16 v0, 0xc8

    if-eqz v7, :cond_4

    .line 157
    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    if-eqz v5, :cond_5

    .line 161
    invoke-interface {v5}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 164
    :cond_5
    invoke-direct {p0, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cleanupDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;I)V

    .line 165
    iget-boolean v0, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    iget v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    iget-boolean v5, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    iget-object v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mNewUri:Ljava/lang/String;

    iget-object v8, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const/16 v2, 0xc8

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v6, v5

    move-object v5, v7

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v6, v5

    move-object v5, v7

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v6, v5

    .line 152
    :goto_3
    :try_start_4
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception for id "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v10, v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    if-eqz v5, :cond_6

    .line 157
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_6
    if-eqz v6, :cond_7

    .line 161
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 164
    :cond_7
    invoke-direct {p0, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cleanupDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;I)V

    .line 165
    iget-boolean v0, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    iget v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    iget-boolean v5, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    iget-object v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mNewUri:Ljava/lang/String;

    iget-object v8, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const/16 v2, 0x1eb

    :goto_4
    move-object v1, p0

    move v3, v0

    invoke-direct/range {v1 .. v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iput-boolean v9, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHasActiveThread:Z

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v6, v5

    .line 147
    :goto_5
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Aborting request for download "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-wide v10, v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget v2, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;->mFinalStatus:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v5, :cond_8

    .line 157
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_8
    if-eqz v6, :cond_9

    .line 161
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 164
    :cond_9
    invoke-direct {p0, v3, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cleanupDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;I)V

    .line 165
    iget-boolean v0, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    iget v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    iget-boolean v5, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    iget-object v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mNewUri:Ljava/lang/String;

    iget-object v8, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    goto :goto_4

    :goto_6
    return-void

    :catchall_3
    move-exception v0

    if-eqz v5, :cond_a

    .line 157
    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_a
    if-eqz v6, :cond_b

    .line 161
    invoke-interface {v6}, Lorg/apache/http/client/HttpClient;->getConnectionManager()Lorg/apache/http/conn/ClientConnectionManager;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/conn/ClientConnectionManager;->shutdown()V

    .line 164
    :cond_b
    invoke-direct {p0, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->cleanupDestination(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;I)V

    .line 165
    iget-boolean v4, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mCountRetry:Z

    iget v5, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mRetryAfter:I

    iget-boolean v6, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mGotData:Z

    iget-object v7, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mFilename:Ljava/lang/String;

    iget-object v8, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mNewUri:Ljava/lang/String;

    iget-object v10, v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread$State;->mMimeType:Ljava/lang/String;

    const/16 v2, 0x1eb

    move-object v1, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v10

    invoke-direct/range {v1 .. v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->notifyDownloadCompleted(IZIZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iput-boolean v9, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHasActiveThread:Z

    .line 169
    throw v0
.end method

.method protected userAgent()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;->mInfo:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUserAgent:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "AndroidDownloadManager"

    :cond_0
    return-object v0
.end method
