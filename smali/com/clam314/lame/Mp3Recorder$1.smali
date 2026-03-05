.class Lcom/clam314/lame/Mp3Recorder$1;
.super Ljava/lang/Object;
.source "Mp3Recorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/clam314/lame/Mp3Recorder;->startRecording(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/clam314/lame/Mp3Recorder;


# direct methods
.method constructor <init>(Lcom/clam314/lame/Mp3Recorder;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 112
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/clam314/lame/Mp3Recorder;->access$002(Lcom/clam314/lame/Mp3Recorder;Z)Z

    .line 114
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$000(Lcom/clam314/lame/Mp3Recorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$300(Lcom/clam314/lame/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v2}, Lcom/clam314/lame/Mp3Recorder;->access$100(Lcom/clam314/lame/Mp3Recorder;)[S

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v4}, Lcom/clam314/lame/Mp3Recorder;->access$200(Lcom/clam314/lame/Mp3Recorder;)I

    move-result v4

    invoke-virtual {v0, v2, v3, v4}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    if-lez v0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v2}, Lcom/clam314/lame/Mp3Recorder;->access$400(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/DataEncodeThread;

    move-result-object v2

    iget-object v3, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v3}, Lcom/clam314/lame/Mp3Recorder;->access$100(Lcom/clam314/lame/Mp3Recorder;)[S

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/clam314/lame/DataEncodeThread;->addChangeBuffer([SI)V

    .line 119
    iget-object v2, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v2}, Lcom/clam314/lame/Mp3Recorder;->access$100(Lcom/clam314/lame/Mp3Recorder;)[S

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/clam314/lame/Mp3Recorder;->access$500(Lcom/clam314/lame/Mp3Recorder;[SI)V

    .line 120
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$600(Lcom/clam314/lame/Mp3Recorder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$700(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$700(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    move-result-object v0

    iget-object v2, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v2}, Lcom/clam314/lame/Mp3Recorder;->access$800(Lcom/clam314/lame/Mp3Recorder;)I

    move-result v2

    invoke-interface {v0, v2}, Lcom/clam314/lame/Mp3Recorder$OnFinishListener;->onDecibels(I)V

    goto :goto_0

    .line 128
    :cond_1
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$600(Lcom/clam314/lame/Mp3Recorder;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 131
    :try_start_0
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$300(Lcom/clam314/lame/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 132
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$300(Lcom/clam314/lame/Mp3Recorder;)Landroid/media/AudioRecord;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    .line 133
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/clam314/lame/Mp3Recorder;->access$302(Lcom/clam314/lame/Mp3Recorder;Landroid/media/AudioRecord;)Landroid/media/AudioRecord;

    .line 136
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$400(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/DataEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clam314/lame/DataEncodeThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 137
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 139
    invoke-static {}, Lcom/clam314/lame/Mp3Recorder;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waiting for encoding thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$400(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/DataEncodeThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/clam314/lame/DataEncodeThread;->join()V

    .line 141
    invoke-static {}, Lcom/clam314/lame/Mp3Recorder;->access$900()Ljava/lang/String;

    move-result-object v0

    const-string v1, "done encoding thread"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$700(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$700(Lcom/clam314/lame/Mp3Recorder;)Lcom/clam314/lame/Mp3Recorder$OnFinishListener;

    move-result-object v0

    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v1}, Lcom/clam314/lame/Mp3Recorder;->access$1000(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/clam314/lame/Mp3Recorder$OnFinishListener;->onFinish(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 149
    :try_start_1
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 145
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 147
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 149
    :try_start_3
    iget-object v0, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v0}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v1}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 149
    :try_start_4
    iget-object v1, p0, Lcom/clam314/lame/Mp3Recorder$1;->this$0:Lcom/clam314/lame/Mp3Recorder;

    invoke-static {v1}, Lcom/clam314/lame/Mp3Recorder;->access$1100(Lcom/clam314/lame/Mp3Recorder;)Ljava/io/FileOutputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v1

    .line 151
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 154
    :cond_3
    :goto_2
    throw v0

    :cond_4
    :goto_3
    return-void
.end method
