.class public Lcom/deepe/a/d/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/d/d$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Landroid/media/MediaRecorder;

.field private c:Ljava/lang/String;

.field private d:J

.field private e:I

.field private f:Lcom/deepe/a/d/f;

.field private g:Lcom/deepe/a/d/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/a/d/d;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/d;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/a/d/d;->c()V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/d/d;->f:Lcom/deepe/a/d/f;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/deepe/a/d/d;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepe/a/d/d;->c:Ljava/lang/String;

    new-instance v0, Lcom/deepe/a/d/f;

    invoke-direct {v0}, Lcom/deepe/a/d/f;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/d/d;->f:Lcom/deepe/a/d/f;

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/f;->a(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/a/d/d;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/deepe/a/d/d;->c()V

    :goto_0
    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/d;->g:Lcom/deepe/a/d/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/deepe/a/d/d$a;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private b(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-void
.end method

.method private c()V
    .locals 6

    iget-object v0, p0, Lcom/deepe/a/d/d;->f:Lcom/deepe/a/d/f;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/deepe/a/d/d;->d()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaRecorder;->stop()V

    iget-object v0, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-virtual {v0}, Landroid/media/MediaRecorder;->release()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/deepe/a/d/d;->d:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    long-to-int v0, v2

    iput v0, p0, Lcom/deepe/a/d/d;->e:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, ""

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-direct {p0, v1, v0}, Lcom/deepe/a/d/d;->a(ZLjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private d()V
    .locals 4

    iget-object v0, p0, Lcom/deepe/a/d/d;->f:Lcom/deepe/a/d/f;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/a/d/d;->g:Lcom/deepe/a/d/d$a;

    invoke-virtual {v0, v1}, Lcom/deepe/a/d/f;->a(Lcom/deepe/a/d/d$a;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepe/a/d/d;->d:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p0, Lcom/deepe/a/d/d;->e:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/a/d/d;->f:Lcom/deepe/a/d/f;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/deepe/a/d/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ".wav"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public a(Lcom/deepe/a/d/d$a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/d;->g:Lcom/deepe/a/d/d$a;

    invoke-direct {p0}, Lcom/deepe/a/d/d;->c()V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/deepe/a/d/a;)V
    .locals 2

    sget-object v0, Lcom/deepe/a/d/a;->c:Lcom/deepe/a/d/a;

    if-eq v0, p2, :cond_2

    sget-object v0, Lcom/deepe/a/d/a;->b:Lcom/deepe/a/d/a;

    if-ne v0, p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object p2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/deepe/a/d/d;->b(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/deepe/a/d/d;->c:Ljava/lang/String;

    new-instance p2, Landroid/media/MediaRecorder;

    invoke-direct {p2}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    iget-object p2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    const/4 v1, 0x3

    invoke-virtual {p2, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    iget-object p2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p2, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    iget-object p2, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    new-instance p2, Lcom/deepe/a/d/d$1;

    invoke-direct {p2, p0}, Lcom/deepe/a/d/d$1;-><init>(Lcom/deepe/a/d/d;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaRecorder;->setOnErrorListener(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object p1, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    iget-object p1, p0, Lcom/deepe/a/d/d;->b:Landroid/media/MediaRecorder;

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/deepe/a/d/d;->d:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0}, Lcom/deepe/a/d/d;->c()V

    :goto_0
    return-void

    :cond_2
    :goto_1
    invoke-direct {p0, p1}, Lcom/deepe/a/d/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/deepe/a/d/d;->e:I

    return v0
.end method
