.class Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;
.super Ljava/lang/Thread;
.source "RecMicToMp3.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;


# direct methods
.method constructor <init>(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    const/16 v0, -0x13

    .line 204
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 206
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    .line 207
    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I

    move-result v0

    const/4 v2, 0x2

    const/16 v3, 0x10

    .line 206
    invoke-static {v0, v3, v2}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    if-gez v0, :cond_1

    .line 211
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 212
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_0
    return-void

    .line 219
    :cond_1
    iget-object v3, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    new-instance v10, Landroid/media/AudioRecord;

    const/4 v5, 0x1

    iget-object v4, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    .line 220
    invoke-static {v4}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I

    move-result v6

    const/16 v7, 0x10

    const/4 v8, 0x2

    mul-int/lit8 v9, v0, 0x2

    move-object v4, v10

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v10, v3, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    .line 225
    iget-object v3, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v3}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I

    move-result v3

    mul-int/2addr v3, v2

    const/4 v2, 0x1

    mul-int/2addr v3, v2

    const/4 v4, 0x5

    mul-int/2addr v3, v4

    new-array v5, v3, [S

    const-wide v6, 0x40bc200000000000L    # 7200.0

    mul-int/lit8 v8, v3, 0x2

    int-to-double v8, v8

    const-wide/high16 v10, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v8, v10

    add-double/2addr v8, v6

    double-to-int v6, v8

    .line 226
    new-array v6, v6, [B

    .line 233
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$300(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    .line 243
    iget-object v8, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v8}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I

    move-result v8

    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$100(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)I

    move-result v9

    const/16 v10, 0x20

    invoke-static {v8, v2, v9, v10}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->init(IIII)V

    .line 245
    iget-object v8, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v8, v2}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$402(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;Z)Z

    const/4 v8, 0x0

    .line 248
    :try_start_1
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v9, v9, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v9}, Landroid/media/AudioRecord;->startRecording()V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 260
    :try_start_2
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v9

    if-eqz v9, :cond_2

    .line 261
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 264
    :cond_2
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$000(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)V

    .line 267
    :goto_0
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v9}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$400(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Z

    move-result v9

    const/4 v10, 0x7

    const/4 v11, 0x6

    if-eqz v9, :cond_8

    .line 268
    iget-object v9, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v9, v9, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v9, v5, v8, v0}, Landroid/media/AudioRecord;->read([SII)I

    move-result v9

    if-gez v9, :cond_3

    .line 271
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 272
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_3
    if-nez v9, :cond_4

    goto :goto_0

    :cond_4
    const-wide/16 v12, 0x0

    move v14, v8

    :goto_1
    if-ge v14, v3, :cond_5

    .line 285
    aget-short v15, v5, v14

    aget-short v16, v5, v14

    mul-int v15, v15, v16

    move/from16 v17, v3

    int-to-long v2, v15

    add-long/2addr v12, v2

    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v17

    const/4 v2, 0x1

    goto :goto_1

    :cond_5
    move/from16 v17, v3

    long-to-double v2, v12

    int-to-double v12, v9

    div-double/2addr v2, v12

    .line 288
    iget-object v12, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    const-wide/high16 v13, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    mul-double/2addr v2, v13

    iput-wide v2, v12, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->volume:D

    .line 291
    invoke-static {v5, v5, v9, v6}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->encode([S[SI[B)I

    move-result v2

    if-gez v2, :cond_6

    .line 295
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 296
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :cond_6
    if-eqz v2, :cond_7

    .line 302
    :try_start_3
    invoke-virtual {v7, v6, v8, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 305
    :catch_0
    :try_start_4
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 306
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_7
    :goto_2
    move/from16 v3, v17

    const/4 v2, 0x1

    goto/16 :goto_0

    .line 317
    :cond_8
    :goto_3
    invoke-static {v6}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->flush([B)I

    move-result v0

    if-gez v0, :cond_9

    .line 320
    iget-object v2, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v2}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 321
    iget-object v2, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v2}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_9
    if-eqz v0, :cond_a

    .line 326
    :try_start_5
    invoke-virtual {v7, v6, v8, v0}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_4

    .line 329
    :catch_1
    :try_start_6
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 330
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 336
    :cond_a
    :goto_4
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_5

    .line 339
    :catch_2
    :try_start_8
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 340
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 344
    :cond_b
    :goto_5
    :try_start_9
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v0, v0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    .line 345
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v0, v0, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 348
    invoke-static {}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->close()V

    .line 349
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0, v8}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$402(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;Z)Z

    .line 353
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 354
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_c
    return-void

    :catchall_0
    move-exception v0

    .line 344
    :try_start_a
    iget-object v2, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v2, v2, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->stop()V

    .line 345
    iget-object v2, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    iget-object v2, v2, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->audioRecord:Landroid/media/AudioRecord;

    invoke-virtual {v2}, Landroid/media/AudioRecord;->release()V

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    .line 250
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 252
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 253
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 348
    :cond_d
    invoke-static {}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->close()V

    .line 349
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0, v8}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$402(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;Z)Z

    return-void

    .line 348
    :goto_6
    invoke-static {}, Lcom/coolzhouy/lamedemo/mp3recorder/SimpleLame;->close()V

    .line 349
    iget-object v2, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v2, v8}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$402(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;Z)Z

    throw v0

    .line 236
    :catch_4
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 237
    iget-object v0, v1, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3$2;->this$0:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-static {v0}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->access$200(Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;)Landroid/os/Handler;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_e
    return-void
.end method
