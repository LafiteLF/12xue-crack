.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
.super Ljava/lang/Object;
.source "DownloadInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;
    }
.end annotation


# static fields
.field public static final EXTRA_IS_WIFI_REQUIRED:Ljava/lang/String; = "isWifiRequired"

.field public static final NETWORK_CANNOT_USE_ROAMING:I = 0x5

.field public static final NETWORK_NO_CONNECTION:I = 0x2

.field public static final NETWORK_OK:I = 0x1

.field public static final NETWORK_RECOMMENDED_UNUSABLE_DUE_TO_SIZE:I = 0x4

.field public static final NETWORK_TYPE_DISALLOWED_BY_REQUESTOR:I = 0x6

.field public static final NETWORK_UNUSABLE_DUE_TO_SIZE:I = 0x3


# instance fields
.field public mAllowRoaming:Z

.field public mAllowedNetworkTypes:I

.field public mBypassRecommendedSizeLimit:I

.field public mClass:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field public mControl:I

.field public mCookies:Ljava/lang/String;

.field public mCurrentBytes:J

.field public mDeleted:Z

.field public mDescription:Ljava/lang/String;

.field public mDestination:I

.field public mETag:Ljava/lang/String;

.field public mExtras:Ljava/lang/String;

.field public mFileName:Ljava/lang/String;

.field public mFuzz:I

.field public volatile mHasActiveThread:Z

.field public mHint:Ljava/lang/String;

.field public mIconUri:Ljava/lang/String;

.field public mId:J

.field public mIsPublicApi:Z

.field public mLastMod:J

.field public mMediaProviderUri:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field public mNoIntegrity:Z

.field public mNumFailed:I

.field public mPackage:Ljava/lang/String;

.field public mReferer:Ljava/lang/String;

.field private mRequestHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field public mRetryAfter:I

.field public mStatus:I

.field private mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

.field public mTitle:Ljava/lang/String;

.field public mTotalBytes:J

.field public mUri:Ljava/lang/String;

.field public mUserAgent:Ljava/lang/String;

.field public mVisibility:I


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;)V
    .locals 1

    .line 230
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    .line 231
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    .line 232
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    .line 233
    sget-object p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->sRandom:Ljava/util/Random;

    const/16 p2, 0x3e9

    invoke-virtual {p1, p2}, Ljava/util/Random;->nextInt(I)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFuzz:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$1;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;)V

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)Ljava/util/List;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    return-object p0
.end method

.method private buildContentValues()Landroid/content/ContentValues;
    .locals 3

    .line 555
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 556
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v2, "uri"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    const-string v2, "_data"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    const-string v2, "mimetype"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "status"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 560
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRetryAfter:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "method"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 561
    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "total_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 562
    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCurrentBytes:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "current_bytes"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    const-string v2, "etag"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "lastmod"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    return-object v0
.end method

.method private checkIsNetworkTypeAllowed(I)I
    .locals 2

    .line 380
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 381
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->translateNetworkTypeToApiFlag(I)I

    move-result v0

    .line 382
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mAllowedNetworkTypes:I

    and-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 p1, 0x6

    return p1

    .line 386
    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkSizeAllowedForNetwork(I)I

    move-result p1

    return p1
.end method

.method private checkSizeAllowedForNetwork(I)I
    .locals 6

    .line 411
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gtz v0, :cond_0

    return v1

    :cond_0
    if-ne p1, v1, :cond_1

    return v1

    .line 417
    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->getMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 418
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    const/4 p1, 0x3

    return p1

    .line 421
    :cond_2
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mBypassRecommendedSizeLimit:I

    if-nez p1, :cond_3

    .line 422
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->getRecommendedMaxBytesOverMobile()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 423
    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    .line 424
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    return v1
.end method

.method private isReadyToStart(J)Z
    .locals 5

    .line 285
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHasActiveThread:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 289
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mControl:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 293
    :cond_1
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    if-eqz v0, :cond_4

    const/16 v3, 0xbe

    if-eq v0, v3, :cond_4

    const/16 v3, 0xc0

    if-eq v0, v3, :cond_4

    packed-switch v0, :pswitch_data_0

    return v1

    .line 302
    :pswitch_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkCanUseNetwork()I

    move-result p1

    if-ne p1, v2, :cond_2

    move v1, v2

    :cond_2
    return v1

    .line 306
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->restartTime(J)J

    move-result-wide v3

    cmp-long p1, v3, p1

    if-gtz p1, :cond_3

    move v1, v2

    :cond_3
    return v1

    :cond_4
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xc2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isRoamingAllowed()Z
    .locals 2

    .line 341
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIsPublicApi:Z

    if-eqz v0, :cond_0

    .line 342
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mAllowRoaming:Z

    return v0

    .line 344
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static queryDownloadStatus(Landroid/content/Context;Landroid/content/ContentResolver;J)I
    .locals 6

    .line 577
    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p0

    invoke-static {p0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string p0, "status"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    .line 576
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    .line 580
    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 581
    invoke-interface {p0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 588
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :cond_0
    const/16 p1, 0xbe

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    return p1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 589
    throw p1
.end method

.method private translateNetworkTypeToApiFlag(I)I
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x2

    return p1

    :cond_1
    return v0
.end method


# virtual methods
.method public checkCanUseNetwork()I
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->getActiveNetworkType()Ljava/lang/Integer;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    return v0

    .line 334
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->isRoamingAllowed()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->isNetworkRoaming()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    return v0

    .line 337
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->checkIsNetworkTypeAllowed(I)I

    move-result v0

    return v0
.end method

.method public getAllDownloadsUri()Landroid/net/Uri;
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 237
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRequestHeaders:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getLogMessageForNetworkError(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const-string p1, "unknown error with network connectivity"

    return-object p1

    :cond_0
    const-string p1, "download was requested to not use the current network type"

    return-object p1

    :cond_1
    const-string p1, "download cannot use the current network connection because it is roaming"

    return-object p1

    :cond_2
    const-string p1, "download size exceeds recommended limit for mobile network"

    return-object p1

    :cond_3
    const-string p1, "download size exceeds limit for mobile network"

    return-object p1

    :cond_4
    const-string p1, "no network connection available"

    return-object p1
.end method

.method public getMyDownloadsUri()Landroid/net/Uri;
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v0

    iget-wide v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public hasCompletionNotification()Z
    .locals 3

    .line 316
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 319
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mVisibility:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    return v1
.end method

.method public isOnCache()Z
    .locals 3

    .line 458
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public logVerboseInfo()V
    .locals 7

    const-string v0, "ldx"

    const-string v1, "Service adding new entry"

    .line 477
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ID      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URI     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUri:Ljava/lang/String;

    const-string v3, "yes"

    const-string v4, "no"

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    move-object v2, v4

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICONURI     : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mIconUri:Ljava/lang/String;

    if-eqz v2, :cond_1

    move-object v2, v3

    goto :goto_1

    :cond_1
    move-object v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NO_INTEG: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNoIntegrity:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HINT    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHint:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FILENAME: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MIMETYPE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DESTINAT: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VISIBILI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mVisibility:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CONTROL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mControl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "STATUS  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAILED_C: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RETRY_AF: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRetryAfter:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LAST_MOD: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mLastMod:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PACKAGE : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CLASS   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "COOKIES : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCookies:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v2, v3

    goto :goto_2

    :cond_2
    move-object v2, v4

    :goto_2
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AGENT   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "REFERER : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mReferer:Ljava/lang/String;

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TOTAL   : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mTotalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CURRENT : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mCurrentBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETAG    : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mETag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DELETED : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDeleted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MEDIAPROVIDER_URI : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method nextAction(J)J
    .locals 5

    .line 512
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 p1, -0x1

    return-wide p1

    .line 515
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const/16 v1, 0xc2

    const-wide/16 v2, 0x0

    if-eq v0, v1, :cond_1

    return-wide v2

    .line 518
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->restartTime(J)J

    move-result-wide v0

    cmp-long v4, v0, p1

    if-gtz v4, :cond_2

    return-wide v2

    :cond_2
    sub-long/2addr v0, p1

    return-wide v0
.end method

.method public notifyPauseDueToSize(Z)V
    .locals 2

    .line 533
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "\u63d0\u793a\u6d88\u606f"

    .line 534
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const-string v0, "\u4e0b\u8f7d\u53d7\u5230\u9650\u5236"

    .line 535
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 536
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 537
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    const-string v1, "\u786e\u5b9a"

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 542
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method public restartTime(J)J
    .locals 3

    .line 270
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mNumFailed:I

    if-nez v0, :cond_0

    return-wide p1

    .line 273
    :cond_0
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mRetryAfter:I

    if-lez p1, :cond_1

    .line 274
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mLastMod:J

    int-to-long p1, p1

    add-long/2addr v0, p1

    return-wide v0

    .line 276
    :cond_1
    iget-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mLastMod:J

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFuzz:I

    add-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x1e

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    shl-int v0, v2, v0

    mul-int/2addr v1, v0

    int-to-long v0, v1

    add-long/2addr p1, v0

    return-wide p1
.end method

.method public sendIntentIfRequested()V
    .locals 0

    return-void
.end method

.method shouldScanFile()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method startIfReady(J)V
    .locals 2

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->isReadyToStart(J)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 435
    :cond_0
    sget-boolean p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGV:Z

    if-eqz p1, :cond_1

    .line 436
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Service spawning thread to handle download "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ldx"

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_1
    iget-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHasActiveThread:Z

    if-nez p1, :cond_3

    .line 441
    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const/16 p2, 0xc0

    if-eq p1, p2, :cond_2

    .line 442
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    .line 443
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 444
    iget p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "status"

    invoke-virtual {p1, v0, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 445
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1, v1}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 451
    :cond_2
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;

    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-direct {p1, p2, v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadThread;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    const/4 p2, 0x1

    .line 453
    iput-boolean p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mHasActiveThread:Z

    .line 454
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->startThread(Ljava/lang/Thread;)V

    return-void

    .line 439
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Multiple threads on same download"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeToDatabaseOrThrow()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;
        }
    .end annotation

    .line 569
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->getAllDownloadsUri()Landroid/net/Uri;

    move-result-object v1

    .line 570
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->buildContentValues()Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "deleted == \'0\'"

    const/4 v4, 0x0

    .line 569
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 571
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;

    const/16 v1, 0x1ea

    const-string v2, "Download deleted or missing!"

    invoke-direct {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/StopRequest;-><init>(ILjava/lang/String;)V

    throw v0
.end method
