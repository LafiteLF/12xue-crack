.class public Lcom/apicloud/a/i/a/ai/a/j;
.super Landroid/view/SurfaceView;

# interfaces
.implements Lcom/apicloud/a/i/a/ai/a/d$a;


# instance fields
.field private A:Z

.field private B:Landroid/media/MediaPlayer$OnCompletionListener;

.field private C:Landroid/media/MediaPlayer$OnInfoListener;

.field private D:Landroid/media/MediaPlayer$OnErrorListener;

.field private E:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private a:Landroid/net/Uri;

.field private b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field d:Landroid/media/MediaPlayer$OnPreparedListener;

.field e:Landroid/view/SurfaceHolder$Callback;

.field private f:Landroid/content/res/AssetFileDescriptor;

.field private g:I

.field private h:I

.field private i:Landroid/view/SurfaceHolder;

.field private j:Landroid/media/MediaPlayer;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:Lcom/apicloud/a/i/a/ai/a/d;

.field private q:Landroid/media/MediaPlayer$OnCompletionListener;

.field private r:Landroid/media/MediaPlayer$OnPreparedListener;

.field private s:I

.field private t:Landroid/media/MediaPlayer$OnErrorListener;

.field private u:Landroid/media/MediaPlayer$OnInfoListener;

.field private v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field private x:I

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->i:Landroid/view/SurfaceHolder;

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$1;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$1;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$2;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$2;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$3;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$3;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$4;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$4;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->C:Landroid/media/MediaPlayer$OnInfoListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$5;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$5;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->D:Landroid/media/MediaPlayer$OnErrorListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$6;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$6;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->E:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    new-instance p1, Lcom/apicloud/a/i/a/ai/a/j$7;

    invoke-direct {p1, p0}, Lcom/apicloud/a/i/a/ai/a/j$7;-><init>(Lcom/apicloud/a/i/a/ai/a/j;)V

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->e:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->c()V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    return p0
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/j;Landroid/view/SurfaceHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->i:Landroid/view/SurfaceHolder;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/ai/a/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->A:Z

    return-void
.end method

.method private a(Z)V
    .locals 13

    const-string v0, "Unable to open content: "

    const-string v1, "app3c"

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->i:Landroid/view/SurfaceHolder;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v3, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {v3, v2}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/a/j;->g(Landroid/content/Context;)Landroid/media/AudioManager;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->b(Z)V

    const/4 v2, -0x1

    :try_start_0
    new-instance v5, Landroid/media/MediaPlayer;

    invoke-direct {v5}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v5, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->getContext()Landroid/content/Context;

    move-result-object v5

    iget v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->k:I

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->k:I

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v6

    iput v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->k:I

    :goto_0
    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->d:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->c:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->B:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->D:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->C:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->E:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v6, v7}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->s:I

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    invoke-static {v5, v6}, Lcom/apicloud/a/i/a/ai/a/i;->a(Landroid/content/Context;Landroid/net/Uri;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v6

    if-eqz v6, :cond_4

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x18

    if-lt v5, v7, :cond_3

    iget-object v5, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/res/AssetFileDescriptor;)V

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v9

    invoke-virtual {v6}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v11

    invoke-virtual/range {v7 .. v12}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    :goto_1
    iput-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->f:Landroid/content/res/AssetFileDescriptor;

    goto :goto_2

    :cond_4
    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v7, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    iget-object v8, p0, Lcom/apicloud/a/i/a/ai/a/j;->b:Ljava/util/Map;

    invoke-virtual {v6, v5, v7, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    :goto_2
    iget-object v5, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    iget-object v6, p0, Lcom/apicloud/a/i/a/ai/a/j;->i:Landroid/view/SurfaceHolder;

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    iget-object v5, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v5, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v3, v4}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v3}, Landroid/media/MediaPlayer;->prepareAsync()V

    iput v4, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->d()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    iput v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->D:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-interface {v0, v1, v4, p1}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    return-void

    :catch_1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_4
    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    return p0
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    return-void
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/ai/a/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->z:Z

    return-void
.end method

.method private b(Z)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    if-eqz p1, :cond_0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-static {p1}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-object p0
.end method

.method private c()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->e:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->setFocusable(Z)V

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->setFocusableInTouchMode(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->requestFocus()Z

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    return-void
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/ai/a/j;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->y:Z

    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnPreparedListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    return-object p0
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d$a;)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    return-void
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/ai/a/j;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Z)V

    return-void
.end method

.method static synthetic e(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic e(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->s:I

    return-void
.end method

.method static synthetic f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    return-object p0
.end method

.method static synthetic f(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->n:I

    return-void
.end method

.method static synthetic g(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->x:I

    return p0
.end method

.method static synthetic g(Lcom/apicloud/a/i/a/ai/a/j;I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->o:I

    return-void
.end method

.method static synthetic h(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->n:I

    return p0
.end method

.method static synthetic i(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->o:I

    return p0
.end method

.method static synthetic j(Lcom/apicloud/a/i/a/ai/a/j;)I
    .locals 0

    iget p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    return p0
.end method

.method private j()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :goto_0
    return-void
.end method

.method static synthetic k(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnCompletionListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    return-object p0
.end method

.method private k()Z
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

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

.method static synthetic l(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->u:Landroid/media/MediaPlayer$OnInfoListener;

    return-object p0
.end method

.method static synthetic m(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->t:Landroid/media/MediaPlayer$OnErrorListener;

    return-object p0
.end method

.method static synthetic n(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/i/a/ai/a/j;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_0
    iput v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    :cond_1
    iput v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    return-void
.end method

.method public a(I)V
    .locals 3

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    int-to-long v1, p1

    const/4 p1, 0x3

    invoke-virtual {v0, v1, v2, p1}, Landroid/media/MediaPlayer;->seekTo(JI)V

    :goto_0
    const/4 p1, 0x0

    :cond_1
    iput p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->x:I

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->w:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->q:Landroid/media/MediaPlayer$OnCompletionListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->t:Landroid/media/MediaPlayer$OnErrorListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->u:Landroid/media/MediaPlayer$OnInfoListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->r:Landroid/media/MediaPlayer$OnPreparedListener;

    return-void
.end method

.method public a(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->v:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    return-void
.end method

.method public b()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    const/4 v1, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    iput v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    :cond_0
    iput v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    return-void
.end method

.method public b(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    invoke-virtual {p1, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->a:Landroid/net/Uri;

    iput-object p2, p0, Lcom/apicloud/a/i/a/ai/a/j;->b:Ljava/util/Map;

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->x:I

    invoke-direct {p0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Z)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->requestLayout()V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->invalidate()V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->d()V

    return-void
.end method

.method public e()I
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public f()I
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Z
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public h()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->s:I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->y:Z

    return v0
.end method

.method public m()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->g:I

    iput v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->h:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->f:Landroid/content/res/AssetFileDescriptor;

    invoke-static {v0}, Lcom/deepe/c/i/h;->a(Ljava/io/Closeable;)V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x18

    if-eq p1, v1, :cond_0

    const/16 v1, 0x19

    if-eq p1, v1, :cond_0

    const/16 v1, 0xa4

    if-eq p1, v1, :cond_0

    const/16 v1, 0x52

    if-eq p1, v1, :cond_0

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result v2

    if-eqz v2, :cond_9

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz v1, :cond_9

    const/16 v1, 0x4f

    if-eq p1, v1, :cond_7

    const/16 v1, 0x55

    if-ne p1, v1, :cond_1

    goto :goto_2

    :cond_1
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_2
    return v0

    :cond_3
    const/16 v1, 0x56

    if-eq p1, v1, :cond_5

    const/16 v1, 0x7f

    if-ne p1, v1, :cond_4

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->j()V

    goto :goto_4

    :cond_5
    :goto_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->b()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_6
    return v0

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->j:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->b()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    goto :goto_3

    :cond_8
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :goto_3
    return v0

    :cond_9
    :goto_4
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected onMeasure(II)V
    .locals 5

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    invoke-static {v1, p2}, Lcom/apicloud/a/i/a/ai/a/j;->getDefaultSize(II)I

    move-result v1

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    if-lez v2, :cond_9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v2, 0x40000000    # 2.0f

    if-ne v0, v2, :cond_1

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    mul-int v1, v0, p2

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    mul-int v3, p1, v2

    if-ge v1, v3, :cond_0

    mul-int/2addr v0, p2

    div-int/2addr v0, v2

    goto :goto_2

    :cond_0
    mul-int v1, v0, p2

    mul-int v3, p1, v2

    if-le v1, v3, :cond_4

    mul-int/2addr v2, p1

    div-int v1, v2, v0

    goto :goto_0

    :cond_1
    const/high16 v3, -0x80000000

    if-ne v0, v2, :cond_3

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    mul-int/2addr v0, p1

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    div-int/2addr v0, v2

    if-ne v1, v3, :cond_2

    if-le v0, p2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v0

    :goto_0
    move v0, p1

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_6

    iget v1, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    mul-int/2addr v1, p2

    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    div-int/2addr v1, v2

    if-ne v0, v3, :cond_5

    if-le v1, p1, :cond_5

    :cond_4
    :goto_1
    move v0, p1

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    move v1, p2

    goto :goto_4

    :cond_6
    iget v2, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    iget v4, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    if-ne v1, v3, :cond_7

    if-le v4, p2, :cond_7

    mul-int/2addr v2, p2

    div-int/2addr v2, v4

    move v1, p2

    goto :goto_3

    :cond_7
    move v1, v4

    :goto_3
    if-ne v0, v3, :cond_8

    if-le v2, p1, :cond_8

    iget p2, p0, Lcom/apicloud/a/i/a/ai/a/j;->m:I

    mul-int/2addr p2, p1

    iget v0, p0, Lcom/apicloud/a/i/a/ai/a/j;->l:I

    div-int v1, p2, v0

    goto :goto_0

    :cond_8
    move v0, v2

    goto :goto_4

    :cond_9
    if-lez v0, :cond_a

    div-int/lit8 v1, v0, 0x2

    :cond_a
    :goto_4
    invoke-virtual {p0, v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->j()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->k()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j;->p:Lcom/apicloud/a/i/a/ai/a/d;

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ai/a/j;->j()V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
