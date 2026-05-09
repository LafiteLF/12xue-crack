.class Lcom/apicloud/a/i/a/ai/a/j$6;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$6;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$6;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0, p2}, Lcom/apicloud/a/i/a/ai/a/j;->e(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$6;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->n(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$6;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->n(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/media/MediaPlayer$OnBufferingUpdateListener;->onBufferingUpdate(Landroid/media/MediaPlayer;I)V

    :cond_0
    return-void
.end method
