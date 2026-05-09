.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;,
        Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;
    }
.end annotation


# static fields
.field static final WAIT_TIMEOUT:J = 0x2710L


# instance fields
.field private mDownloads:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;

.field private mPendingUpdate:Z

.field mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

.field mUpdateThread:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 40
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mDownloads:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->updateFromProvider()V

    return-void
.end method

.method static synthetic access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->trimDatabase()V

    return-void
.end method

.method static synthetic access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->removeSpuriousFiles()V

    return-void
.end method

.method static synthetic access$300(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mPendingUpdate:Z

    return p0
.end method

.method static synthetic access$302(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Z)Z
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mPendingUpdate:Z

    return p1
.end method

.method static synthetic access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Ljava/util/Map;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mDownloads:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$500(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->updateDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;J)V

    return-void
.end method

.method static synthetic access$600(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->insertDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;J)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->deleteDownload(J)V

    return-void
.end method

.method private deleteDownload(J)V
    .locals 2

    .line 357
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mDownloads:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    .line 358
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    const/16 v0, 0xc0

    if-ne p2, v0, :cond_0

    const/16 p2, 0x1ea

    .line 359
    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    .line 361
    :cond_0
    iget p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDestination:I

    if-eqz p2, :cond_1

    iget-object p2, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 362
    new-instance p2, Ljava/io/File;

    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    .line 364
    :cond_1
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    iget-wide v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-interface {p2, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->cancelNotification(J)V

    .line 365
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v0, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private insertDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;
    .locals 3

    .line 324
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-virtual {p1, p0, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->newDownloadInfo(Landroid/content/Context;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    move-result-object p1

    .line 325
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mDownloads:Ljava/util/Map;

    iget-wide v1, p1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz v0, :cond_0

    .line 327
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->logVerboseInfo()V

    .line 329
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->startIfReady(J)V

    return-object p1
.end method

.method private removeSpuriousFiles()V
    .locals 10

    .line 252
    invoke-static {}, Landroid/os/Environment;->getDownloadCacheDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 258
    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 259
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_3

    .line 260
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "lost+found"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 263
    :cond_1
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "recovery"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    .line 266
    :cond_2
    aget-object v4, v0, v3

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 269
    :cond_3
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v5

    const-string v0, "_data"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 271
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 273
    :cond_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_4

    .line 276
    :cond_5
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_6
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 279
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 280
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleting spurious file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 282
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_2

    :cond_7
    return-void
.end method

.method private trimDatabase()V
    .locals 7

    .line 294
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const-string v6, "_id"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v2

    const-string v3, "status >= \'200\'"

    const/4 v4, 0x0

    const-string v5, "lastmod"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null cursor in trimDatabase"

    .line 300
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGEE(Ljava/lang/String;)V

    return-void

    .line 303
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 304
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    add-int/lit16 v1, v1, -0x3e8

    .line 305
    invoke-interface {v0, v6}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    :goto_0
    if-lez v1, :cond_2

    .line 308
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 309
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5, v5}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 310
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 316
    :cond_2
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private updateDownload(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;J)V
    .locals 3

    .line 337
    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mVisibility:I

    .line 338
    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    .line 339
    invoke-virtual {p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;->updateFromDatabase(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;)V

    const/4 p1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 340
    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mVisibility:I

    if-eq v0, v2, :cond_0

    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    .line 343
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, p1

    .line 345
    :goto_0
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget v1, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mStatus:I

    .line 346
    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move p1, v2

    :cond_1
    if-nez v0, :cond_2

    if-eqz p1, :cond_3

    .line 348
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    invoke-interface {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->cancelNotification(J)V

    .line 350
    :cond_3
    invoke-virtual {p2, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->startIfReady(J)V

    return-void
.end method

.method private updateFromProvider()V
    .locals 2

    .line 125
    monitor-enter p0

    const/4 v0, 0x1

    .line 126
    :try_start_0
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mPendingUpdate:Z

    .line 127
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mUpdateThread:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;

    if-nez v0, :cond_0

    .line 128
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mUpdateThread:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;

    .line 129
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->startThread(Ljava/lang/Thread;)V

    .line 131
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 84
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot bind to Download Manager Service"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .locals 4

    .line 91
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "Service onCreate"

    .line 92
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 93
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    if-nez v0, :cond_0

    .line 94
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    .line 96
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;-><init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;

    .line 98
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 100
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->cancelAllNotifications()V

    .line 101
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->updateFromProvider()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 116
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mObserver:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$DownloadManagerContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const-string v0, "Service onDestroy"

    .line 117
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 118
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 106
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    const-string p2, "Service onStart"

    .line 107
    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 108
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->updateFromProvider()V

    return p1
.end method
