.class Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;
.super Ljava/lang/Object;
.source "PcmAudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audioRecorder/PcmAudioRecorder;->startBufferedWrite(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

.field private final synthetic val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/apicloud/audioRecorder/PcmAudioRecorder;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    iput-object p2, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->val$file:Ljava/io/File;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    const/4 v0, 0x0

    .line 63
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->val$file:Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 64
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$0(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Z

    move-result v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v0, :cond_0

    .line 88
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 93
    :try_start_3
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    goto/16 :goto_8

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 90
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 93
    :try_start_5
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_8

    :goto_1
    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_2
    throw v0

    .line 66
    :cond_0
    :try_start_7
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$1(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$2(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)Landroid/media/AudioRecord;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v2}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v3}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v3

    array-length v3, v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v0

    const-wide/16 v2, 0x0

    move v5, v4

    .line 72
    :goto_3
    iget-object v6, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v6}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v6

    array-length v6, v6

    if-lt v5, v6, :cond_3

    long-to-double v2, v2

    int-to-double v5, v0

    div-double/2addr v2, v5

    const-wide/high16 v5, 0x4024000000000000L    # 10.0

    .line 76
    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v5

    .line 77
    iget-object v5, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    double-to-int v2, v2

    invoke-static {v5, v2}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$4(Lcom/apicloud/audioRecorder/PcmAudioRecorder;I)V

    :goto_4
    if-lt v4, v0, :cond_2

    goto :goto_0

    .line 79
    :cond_2
    iget-object v2, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v2}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v2

    aget-short v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/io/DataOutputStream;->writeShort(I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 73
    :cond_3
    iget-object v6, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v6}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v6

    aget-short v6, v6, v5

    iget-object v7, p0, Lcom/apicloud/audioRecorder/PcmAudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    invoke-static {v7}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->access$3(Lcom/apicloud/audioRecorder/PcmAudioRecorder;)[S

    move-result-object v7

    aget-short v7, v7, v5
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    mul-int/2addr v6, v7

    int-to-long v6, v6

    add-long/2addr v2, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :catch_2
    move-exception v0

    goto :goto_5

    :catchall_1
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_9

    :catch_3
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 84
    :goto_5
    :try_start_8
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    if-eqz v1, :cond_4

    .line 88
    :try_start_9
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 93
    :try_start_a
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    goto :goto_8

    :catch_4
    move-exception v0

    .line 95
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    :catchall_2
    move-exception v0

    goto :goto_6

    :catch_5
    move-exception v0

    .line 90
    :try_start_b
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 93
    :try_start_c
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_8

    :goto_6
    :try_start_d
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_6

    goto :goto_7

    :catch_6
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_7
    throw v0

    :cond_4
    :goto_8
    return-void

    :catchall_3
    move-exception v0

    :goto_9
    if-eqz v1, :cond_5

    .line 88
    :try_start_e
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 93
    :try_start_f
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_7

    goto :goto_c

    :catch_7
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_c

    :catchall_4
    move-exception v0

    goto :goto_a

    :catch_8
    move-exception v2

    .line 90
    :try_start_10
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 93
    :try_start_11
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_7

    goto :goto_c

    :goto_a
    :try_start_12
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_9

    goto :goto_b

    :catch_9
    move-exception v1

    .line 95
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 97
    :goto_b
    throw v0

    .line 99
    :cond_5
    :goto_c
    throw v0
.end method
