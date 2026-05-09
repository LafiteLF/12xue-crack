.class public Lcom/apicloud/a/i/a/d/a/q;
.super Lcom/apicloud/a/i/a/d/a/p;


# instance fields
.field private g:Landroid/media/MediaRecorder;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/p;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private final a(II)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/q;->a(Z)V

    :try_start_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->stop()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->d()V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/d/a/q;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/d/a/q;->a(II)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/d/a/s;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaRecorder;

    invoke-direct {v0}, Landroid/media/MediaRecorder;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->a:Ljava/lang/Object;

    check-cast v0, Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->unlock()V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v1, v0}, Landroid/media/MediaRecorder;->setCamera(Landroid/hardware/Camera;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, p1, Lcom/apicloud/a/i/a/d/a/s;->c:I

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setOrientationHint(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaRecorder;->setVideoSource(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->b:Ljava/lang/Object;

    invoke-static {v0}, Lcom/apicloud/a/i/a/d/a/g;->a(Ljava/lang/Object;)Landroid/media/CamcorderProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v2, v0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v1, v2}, Landroid/media/MediaRecorder;->setVideoEncoder(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->a()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v2, p1, Lcom/apicloud/a/i/a/d/a/s;->a:I

    iget p1, p1, Lcom/apicloud/a/i/a/d/a/s;->b:I

    invoke-virtual {v1, v2, p1}, Landroid/media/MediaRecorder;->setVideoSize(II)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoFrameRate(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, v0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setVideoEncodingBitRate(I)V

    iget p1, v0, Landroid/media/CamcorderProfile;->quality:I

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_2

    iget p1, v0, Landroid/media/CamcorderProfile;->quality:I

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v1, v0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget v0, v0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->c:Landroid/view/Surface;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->c:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setPreviewDisplay(Landroid/view/Surface;)V

    :cond_3
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    new-instance v0, Lcom/apicloud/a/i/a/d/a/q$1;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/d/a/q$1;-><init>(Lcom/apicloud/a/i/a/d/a/q;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/i/a/d/a/s;)V
    .locals 0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->e()V

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/a/q;->b(Lcom/apicloud/a/i/a/d/a/s;)V

    :try_start_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/q;->a(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/a/q;->a(Z)V

    :goto_0
    return-void
.end method

.method public final e()V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/d/a/q;->a(Z)V

    :try_start_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/d/a/q;->g:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->reset()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/a/q;->d()V

    :cond_1
    :goto_0
    return-void
.end method
