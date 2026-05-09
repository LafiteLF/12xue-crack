.class Lcom/apicloud/a/i/a/ai/a/j$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->d(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->k(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->k(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnCompletionListener;

    move-result-object p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$3;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->e(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V

    :cond_1
    return-void
.end method
