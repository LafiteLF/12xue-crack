.class Lcom/apicloud/FNPhotograph/MediaSaver;
.super Ljava/lang/Thread;
.source "MediaSaver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;,
        Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;
    }
.end annotation


# static fields
.field private static final SAVE_QUEUE_LIMIT:I = 0x3

.field private static final TAG:Ljava/lang/String; = "MediaSaver"


# instance fields
.field private mCtx:Landroid/content/Context;

.field private mQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mStop:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ContentResolver;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 63
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    .line 64
    iput-object p1, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mCtx:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addImage([BLjava/lang/String;Ljava/lang/String;Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;ZZ)V
    .locals 6

    .line 103
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mCtx:Landroid/content/Context;

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move v4, p5

    move v5, p6

    invoke-static/range {v0 .. v5}, Lcom/apicloud/FNPhotograph/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object p1

    if-eqz p4, :cond_0

    .line 105
    invoke-interface {p4, p1}, Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;->onMediaSaved(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 148
    monitor-enter p0

    const/4 v0, 0x1

    .line 149
    :try_start_0
    iput-boolean v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mStop:Z

    .line 150
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 151
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isCameraReady()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized queueFull()Z
    .locals 2

    monitor-enter p0

    .line 70
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public run()V
    .locals 7

    .line 114
    :cond_0
    :goto_0
    monitor-enter p0

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 116
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 120
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mStop:Z

    if-eqz v0, :cond_1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 123
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 127
    :catch_0
    :try_start_2
    monitor-exit p0

    goto :goto_0

    .line 129
    :cond_2
    iget-boolean v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mStop:Z

    if-eqz v0, :cond_4

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 140
    :goto_1
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media saver thread stopped with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " images unsaved"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MediaSaver"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_3
    return-void

    .line 130
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mQueue:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;

    .line 131
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 132
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 134
    iget-object v1, p0, Lcom/apicloud/FNPhotograph/MediaSaver;->mCtx:Landroid/content/Context;

    iget-object v2, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->title:Ljava/lang/String;

    iget-object v3, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->data:[B

    iget-object v4, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->customSavePath:Ljava/lang/String;

    iget-boolean v5, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->isFrontCamera:Z

    iget-boolean v6, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->isAbsolutePath:Z

    invoke-static/range {v1 .. v6}, Lcom/apicloud/FNPhotograph/Storage;->addImage(Landroid/content/Context;Ljava/lang/String;[BLjava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 136
    iget-object v2, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->listener:Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;

    if-eqz v2, :cond_0

    .line 137
    iget-object v0, v0, Lcom/apicloud/FNPhotograph/MediaSaver$SaveRequest;->listener:Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;

    invoke-interface {v0, v1}, Lcom/apicloud/FNPhotograph/MediaSaver$OnMediaSavedListener;->onMediaSaved(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 132
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method
