.class Lcom/apicloud/a/i/a/ai/a/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/a/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/a/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/j;->requestLayout()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$1;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/media/MediaPlayer$OnVideoSizeChangedListener;->onVideoSizeChanged(Landroid/media/MediaPlayer;II)V

    :cond_0
    return-void
.end method
