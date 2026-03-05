.class Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;
.super Ljava/lang/Thread;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    const-string p1, "UZ Download Service"

    .line 136
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private scheduleAlarm(J)V
    .locals 5

    .line 235
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string p1, "couldn\'t get alarm manager"

    .line 237
    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGEE(Ljava/lang/String;)V

    return-void

    .line 240
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scheduling retry in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Constants;->LOGVV(Ljava/lang/String;)V

    .line 241
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DOWNLOAD_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 242
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadReceiver;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    const/high16 v3, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 244
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v2}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v4, v2, v3, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    move-object/from16 v1, p0

    const/16 v0, 0xa

    .line 139
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 140
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$100(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V

    .line 141
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$200(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)V

    const-wide v2, 0x7fffffffffffffffL

    const/4 v0, 0x0

    :goto_0
    move v4, v0

    move-wide v5, v2

    .line 147
    :goto_1
    iget-object v7, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    monitor-enter v7

    .line 148
    :try_start_0
    iget-object v8, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    iget-object v8, v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mUpdateThread:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;

    if-ne v8, v1, :cond_10

    .line 151
    iget-object v8, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$300(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Z

    move-result v8

    const/4 v9, 0x0

    if-nez v8, :cond_2

    .line 152
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    iput-object v9, v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mUpdateThread:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;

    if-nez v4, :cond_0

    .line 154
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->stopSelf()V

    :cond_0
    cmp-long v0, v5, v2

    if-eqz v0, :cond_1

    .line 157
    invoke-direct {v1, v5, v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->scheduleAlarm(J)V

    .line 159
    :cond_1
    monitor-exit v7

    return-void

    .line 161
    :cond_2
    iget-object v4, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$302(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Z)Z

    .line 162
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 163
    iget-object v4, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->mSystemFacade:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;

    invoke-interface {v4}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/SystemFacade;->currentTimeMillis()J

    move-result-wide v4

    .line 166
    new-instance v6, Ljava/util/HashSet;

    iget-object v7, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 168
    iget-object v7, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    iget-object v7, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Downloads$Impl;->getAllDownloadsContentUri(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual/range {v10 .. v15}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-nez v7, :cond_3

    goto :goto_0

    .line 173
    :cond_3
    :try_start_1
    new-instance v8, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;

    iget-object v10, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v10}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    invoke-direct {v8, v10, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;-><init>(Landroid/content/ContentResolver;Landroid/database/Cursor;)V

    const-string v10, "_id"

    .line 174
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    .line 175
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move v13, v0

    move-wide v11, v2

    :goto_2
    invoke-interface {v7}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v14

    const/4 v15, 0x1

    if-nez v14, :cond_9

    .line 176
    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v16

    .line 177
    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-interface {v6, v14}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object v14, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v14}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Ljava/util/Map;

    move-result-object v14

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    if-eqz v0, :cond_4

    .line 180
    iget-object v14, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v14, v8, v0, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$500(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;J)V

    goto :goto_3

    .line 182
    :cond_4
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v0, v8, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$600(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo$Reader;J)Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    move-result-object v0

    .line 184
    :goto_3
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->shouldScanFile()Z

    move-result v14

    if-eqz v14, :cond_5

    move v13, v15

    .line 187
    :cond_5
    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->hasCompletionNotification()Z

    move-result v14

    if-eqz v14, :cond_6

    move v13, v15

    .line 190
    :cond_6
    invoke-virtual {v0, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->nextAction(J)J

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmp-long v0, v16, v18

    if-nez v0, :cond_7

    move v13, v15

    goto :goto_4

    :cond_7
    if-lez v0, :cond_8

    cmp-long v0, v16, v11

    if-gez v0, :cond_8

    move-wide/from16 v11, v16

    .line 175
    :cond_8
    :goto_4
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    goto :goto_2

    .line 198
    :cond_9
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 200
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 201
    iget-object v5, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$700(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;J)V

    goto :goto_5

    .line 205
    :cond_a
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    .line 206
    iget-boolean v5, v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDeleted:Z

    if-eqz v5, :cond_b

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    move v4, v15

    goto :goto_6

    :cond_c
    move v4, v13

    .line 214
    :goto_6
    iget-object v0, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->access$400(Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_d
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;

    .line 215
    iget-boolean v6, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mDeleted:Z

    if-eqz v6, :cond_d

    .line 218
    iget-object v6, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 220
    iget-object v6, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    iget-object v6, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-wide v6, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    iget-object v8, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    invoke-static/range {v18 .. v23}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->deleteFile(Landroid/content/Context;Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 225
    :cond_e
    iget-object v6, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    iget-object v7, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMediaProviderUri:Ljava/lang/String;

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7, v9, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 227
    iget-object v6, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getBaseContext()Landroid/content/Context;

    move-result-object v18

    iget-object v6, v1, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService$UpdateThread;->this$0:Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;

    invoke-virtual {v6}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    iget-wide v6, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mId:J

    iget-object v8, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mFileName:Ljava/lang/String;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/DownloadInfo;->mMimeType:Ljava/lang/String;

    move-wide/from16 v20, v6

    move-object/from16 v22, v8

    move-object/from16 v23, v5

    invoke-static/range {v18 .. v23}, Lcom/uzmap/pkg/uzmodules/uzdownloadmanager/Helpers;->deleteFile(Landroid/content/Context;Landroid/content/ContentResolver;JLjava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    move-wide v5, v11

    const/4 v0, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v0

    .line 198
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 199
    throw v0

    .line 149
    :cond_10
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "multiple UpdateThreads in DownloadService"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 162
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
