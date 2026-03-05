.class Lcom/apicloud/a/i/a/ai/a/j$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;Z)V

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;Z)V

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;Z)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->d(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->d(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/j;->e(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/ai/a/d;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->g(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->a(I)V

    :cond_2
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/j;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->h(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->i(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/a/j;->j(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/a/j;->g()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f()I

    move-result p1

    if-lez p1, :cond_6

    :cond_4
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->j(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p1

    if-ne p1, v1, :cond_6

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$2;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    :cond_6
    :goto_0
    return-void
.end method
