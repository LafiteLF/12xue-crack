.class public Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DownloadReceiver.java"


# instance fields
.field mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    return-void
.end method

.method private handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 56
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    .line 57
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 58
    sget-boolean v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    const-string v8, "android.intent.action.DOWNLOAD_LIST"

    const-string v9, "android.intent.action.DOWNLOAD_OPEN"

    if-eqz v0, :cond_2

    .line 59
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "ldx"

    if-eqz v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver open for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver list for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Receiver hide for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v6

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_3

    return-void

    .line 73
    :cond_3
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_4

    .line 86
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    .line 77
    :cond_4
    :try_start_1
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 78
    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->openDownload(Landroid/content/Context;Landroid/database/Cursor;)V

    .line 79
    invoke-direct {p0, p1, v6, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V

    goto :goto_1

    .line 80
    :cond_5
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 81
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->sendNotificationClickedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/database/Cursor;)V

    goto :goto_1

    .line 83
    :cond_6
    invoke-direct {p0, p1, v6, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 87
    throw p1
.end method

.method private hideNotification(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)V
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->cancelNotification(J)V

    const-string v0, "status"

    .line 98
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 99
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string v1, "visibility"

    .line 101
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    .line 102
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result p3

    .line 103
    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->isStatusCompleted(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    .line 105
    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    const/4 v0, 0x0

    .line 107
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 106
    invoke-virtual {p3, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private openDownload(Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 3

    const-string v0, "_data"

    .line 117
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "mimetype"

    .line 119
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 120
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 122
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 123
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 126
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 127
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 130
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no activity for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ldx"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private sendNotificationClickedIntent(Landroid/content/Context;Landroid/content/Intent;Landroid/database/Cursor;)V
    .locals 5

    const-string v0, "notificationpackage"

    .line 143
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 142
    invoke-interface {p3, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "notificationclass"

    .line 149
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 148
    invoke-interface {p3, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "is_public_api"

    .line 151
    invoke-interface {p3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p3, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v4, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    if-eqz v2, :cond_2

    .line 155
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    :cond_2
    if-nez v1, :cond_3

    return-void

    .line 161
    :cond_3
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "multiple"

    .line 163
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 165
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    :cond_4
    const-string p2, "_id"

    .line 167
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide p2

    .line 170
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    .line 168
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :goto_1
    move-object p1, v2

    .line 174
    :goto_2
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {p2, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private startService(Landroid/content/Context;)V
    .locals 2

    .line 178
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/RealSystemFacade;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    .line 27
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.BOOT_COMPLETED"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 29
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    sget-boolean p2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV:Z

    if-eqz p2, :cond_2

    const-string p2, "ldx"

    const-string v0, "Received broadcast intent for android.intent.action.MEDIA_MOUNTED"

    .line 32
    invoke-static {p2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :cond_2
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    :cond_3
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "networkInfo"

    .line 39
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/NetworkInfo;

    if-eqz p2, :cond_7

    .line 40
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 41
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    :cond_4
    const-string v1, "android.intent.action.DOWNLOAD_WAKEUP"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 44
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->startService(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    const-string v1, "android.intent.action.DOWNLOAD_OPEN"

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.DOWNLOAD_LIST"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "android.intent.action.DOWNLOAD_HIDE"

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 48
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;->handleNotificationBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method
