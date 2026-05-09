.class public Lcom/deepe/a/d/c;
.super Ljava/lang/Object;


# static fields
.field static a:Z = true


# instance fields
.field private b:Landroid/media/MediaPlayer;

.field private c:Ljava/io/Closeable;

.field private d:Lcom/deepe/a/d/b;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Landroid/content/Context;

.field private h:I

.field private i:Landroid/net/Uri;

.field private j:I

.field private k:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/a/d/c;->j:I

    iput-object p1, p0, Lcom/deepe/a/d/c;->g:Landroid/content/Context;

    return-void
.end method

.method private a(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string p1, "MEDIA_ERROR_UNKNOWN"

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    if-ne p1, v0, :cond_1

    const-string p1, "MEDIA_ERROR_SERVER_DIED"

    goto :goto_0

    :cond_1
    const-string p1, "UNKNOWN"

    :goto_0
    const/16 v0, -0x3f2

    if-eq p2, v0, :cond_5

    const/16 v0, -0x3ef

    if-eq p2, v0, :cond_4

    const/16 v0, -0x3ec

    const-string v1, " > MEDIA_ERROR_IO"

    if-eq p2, v0, :cond_3

    const/16 v0, -0x6e

    if-eq p2, v0, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " > MEDIA_ERROR_TIMED_OUT"

    goto :goto_2

    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " > MEDIA_ERROR_MALFORMED"

    goto :goto_2

    :cond_5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, " > MEDIA_ERROR_UNSUPPORTED"

    :goto_2
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, ". "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_6
    iget-object p2, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    invoke-virtual {p2, p1}, Lcom/deepe/a/d/b;->a(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method private a(Landroid/media/MediaPlayer;)V
    .locals 1

    iget v0, p0, Lcom/deepe/a/d/c;->k:I

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/deepe/a/d/c;->a(I)V

    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    const/4 p1, 0x3

    iput p1, p0, Lcom/deepe/a/d/c;->j:I

    invoke-direct {p0}, Lcom/deepe/a/d/c;->i()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/c;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/a/d/c;->k()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/c;I)V
    .locals 0

    iput p1, p0, Lcom/deepe/a/d/c;->j:I

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/c;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/a/d/c;->a(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/c;Landroid/media/MediaPlayer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method private a(II)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/deepe/a/d/b;->a(II)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method static synthetic a(Lcom/deepe/a/d/c;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/d/c;->a(II)Z

    move-result p0

    return p0
.end method

.method private b(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/deepe/a/d/b;->a(I)V

    :cond_0
    return-void
.end method

.method private b(Landroid/media/MediaPlayer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepe/a/d/c;->j:I

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->a(Landroid/media/MediaPlayer;)V

    return-void
.end method

.method static synthetic b(Lcom/deepe/a/d/c;I)V
    .locals 0

    iput p1, p0, Lcom/deepe/a/d/c;->h:I

    return-void
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/media/MediaPlayer;)V
    .locals 1

    new-instance v0, Lcom/deepe/a/d/c$5;

    invoke-direct {v0, p0, p1}, Lcom/deepe/a/d/c$5;-><init>(Lcom/deepe/a/d/c;Landroid/media/MediaPlayer;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V

    return-void
.end method

.method static synthetic c(Lcom/deepe/a/d/c;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->b(I)V

    return-void
.end method

.method private h()Z
    .locals 2

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepe/a/d/c;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private i()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/b;->a()V

    :cond_0
    return-void
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/b;->b()V

    :cond_0
    return-void
.end method

.method private k()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/deepe/a/d/b;->c()V

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->i:Landroid/net/Uri;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/deepe/a/d/c;->a(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/deepe/a/d/c;->k:I

    return-void
.end method

.method public final a(Landroid/net/Uri;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/c;->i:Landroid/net/Uri;

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepe/a/d/c;->k:I

    return-void
.end method

.method public final a(Lcom/deepe/a/d/b;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/c;->d:Lcom/deepe/a/d/b;

    return-void
.end method

.method public final a(Ljava/lang/String;)Z
    .locals 10

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/deepe/a/d/c;->f:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object p1, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->a(Landroid/media/MediaPlayer;)V

    iput-boolean v2, p0, Lcom/deepe/a/d/c;->f:Z

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/a/d/c;->c()V

    iput v2, p0, Lcom/deepe/a/d/c;->h:I

    iput v2, p0, Lcom/deepe/a/d/c;->j:I

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    const/4 v0, -0x1

    :try_start_0
    sget-boolean v3, Lcom/deepe/a/d/c;->a:Z

    if-eqz v3, :cond_2

    const-string v3, "http"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v4, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lcom/deepe/c/i/m;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {p1}, Lcom/deepe/c/i/x;->y(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_4
    iget-object v4, p0, Lcom/deepe/a/d/c;->g:Landroid/content/Context;

    invoke-static {v4, p1}, Lcom/deepe/a/d/e;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/deepe/a/d/e$a;

    move-result-object v4

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_5

    iget-object v5, v4, Lcom/deepe/a/d/e$a;->a:Ljava/io/FileDescriptor;

    iget-wide v6, v4, Lcom/deepe/a/d/e$a;->b:J

    iget-wide v8, v4, Lcom/deepe/a/d/e$a;->c:J

    iget-object v4, v4, Lcom/deepe/a/d/e$a;->d:Ljava/io/Closeable;

    iput-object v4, p0, Lcom/deepe/a/d/c;->c:Ljava/io/Closeable;

    goto :goto_1

    :cond_5
    move-wide v8, v6

    :goto_1
    if-nez v5, :cond_6

    const/16 v1, -0x3ec

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "File["

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]Not Found. "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/deepe/a/d/c;->a(IILjava/lang/String;)V

    return v2

    :cond_6
    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual/range {v4 .. v9}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_2
    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/deepe/a/d/c$1;

    invoke-direct {v5, p0}, Lcom/deepe/a/d/c$1;-><init>(Lcom/deepe/a/d/c;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/deepe/a/d/c$2;

    invoke-direct {v5, p0}, Lcom/deepe/a/d/c$2;-><init>(Lcom/deepe/a/d/c;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/deepe/a/d/c$3;

    invoke-direct {v5, p0}, Lcom/deepe/a/d/c$3;-><init>(Lcom/deepe/a/d/c;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iget-object v4, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    new-instance v5, Lcom/deepe/a/d/c$4;

    invoke-direct {v5, p0}, Lcom/deepe/a/d/c$4;-><init>(Lcom/deepe/a/d/c;)V

    invoke-virtual {v4, v5}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iput v1, p0, Lcom/deepe/a/d/c;->j:I

    iput-object p1, p0, Lcom/deepe/a/d/c;->e:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/deepe/a/d/c;->f:Z

    if-nez v3, :cond_7

    iget-object p1, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->b(Landroid/media/MediaPlayer;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-direct {p0, p1}, Lcom/deepe/a/d/c;->c(Landroid/media/MediaPlayer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return v1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    iput v0, p0, Lcom/deepe/a/d/c;->j:I

    invoke-virtual {p0}, Lcom/deepe/a/d/c;->c()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Catch Exception: "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1}, Lcom/deepe/a/d/c;->a(IILjava/lang/String;)V

    return v2
.end method

.method public b()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/deepe/a/d/c;->j:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/a/d/c;->f:Z

    invoke-direct {p0}, Lcom/deepe/a/d/c;->j()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/a/d/c;->f:Z

    iput v0, p0, Lcom/deepe/a/d/c;->j:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Lcom/deepe/a/d/c;->c:Ljava/io/Closeable;

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    :cond_0
    return-void
.end method

.method public final d()I
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/deepe/a/d/c;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/a/d/c;->b:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Lcom/deepe/a/d/c;->h:I

    return v0
.end method
