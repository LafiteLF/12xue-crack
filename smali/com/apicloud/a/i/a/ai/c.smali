.class Lcom/apicloud/a/i/a/ai/c;
.super Lcom/apicloud/a/i/a/ai/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/ai/b;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected a(F)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/c;->a:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/c;->g()Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getPlaybackParams()Landroid/media/PlaybackParams;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/media/PlaybackParams;

    invoke-direct {v0}, Landroid/media/PlaybackParams;-><init>()V

    :cond_1
    invoke-virtual {v0, p1}, Landroid/media/PlaybackParams;->setSpeed(F)Landroid/media/PlaybackParams;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/c;->a:Landroid/media/MediaPlayer;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setPlaybackParams(Landroid/media/PlaybackParams;)V

    const/4 v0, 0x0

    cmpl-float v1, v0, p1

    if-nez v1, :cond_2

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->f:Lcom/apicloud/a/i/a/ai/d;

    :goto_0
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/c;->a(Lcom/apicloud/a/i/a/ai/d;)V

    goto :goto_1

    :cond_2
    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    sget-object p1, Lcom/apicloud/a/i/a/ai/d;->e:Lcom/apicloud/a/i/a/ai/d;

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method
