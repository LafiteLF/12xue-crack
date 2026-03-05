.class public Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;
.super Ljava/lang/Object;
.source "BeepUtil.java"


# static fields
.field private static final BEEP_VOLUME:F = 0.1f

.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final mBeepListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field private mBeepPath:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mIsBeep:Z

.field private mMediaPlayer:Landroid/media/MediaPlayer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil$1;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil$1;-><init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 27
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mContext:Landroid/content/Context;

    .line 28
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    return-void
.end method

.method private initBeepSound()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mIsBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    const/4 v1, 0x3

    .line 54
    invoke-virtual {v0, v1}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 55
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 57
    :try_start_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->setBeepSource()V

    .line 58
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 59
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 60
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    const v1, 0x3dcccccd    # 0.1f

    invoke-virtual {v0, v1, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 61
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 64
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    :goto_0
    return-void
.end method

.method private setBeepSource()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const-string v1, "android_asset"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 79
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    .line 82
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 83
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    .line 85
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    .line 86
    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    .line 87
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mBeepPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public initBeep()V
    .locals 2

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mIsBeep:Z

    .line 33
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    .line 34
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 33
    check-cast v0, Landroid/media/AudioManager;

    .line 35
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mIsBeep:Z

    .line 38
    :cond_0
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->initBeepSound()V

    return-void
.end method

.method public isBlank(Ljava/lang/CharSequence;)Z
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_1

    return v0

    .line 98
    :cond_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    return v2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v0
.end method

.method public playBeepSoundAndVibrate()V
    .locals 3

    .line 42
    iget-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mIsBeep:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 45
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;->mContext:Landroid/content/Context;

    const-string v1, "vibrator"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 45
    check-cast v0, Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    .line 47
    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
