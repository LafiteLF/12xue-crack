.class Lcom/apicloud/a/i/a/ai/a/j$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1, p3}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1, p4}, Lcom/apicloud/a/i/a/ai/a/j;->g(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->j(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result v1

    if-ne v1, p3, :cond_1

    iget-object p3, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p3}, Lcom/apicloud/a/i/a/ai/a/j;->b(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p3

    if-ne p3, p4, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    iget-object p3, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p3}, Lcom/apicloud/a/i/a/ai/a/j;->e(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer;

    move-result-object p3

    if-eqz p3, :cond_3

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->g(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->g(Lcom/apicloud/a/i/a/ai/a/j;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/a/j;->a(I)V

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/j;->a()V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->d()V

    :cond_3
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->d(Lcom/apicloud/a/i/a/ai/a/j;Z)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->a(Lcom/apicloud/a/i/a/ai/a/j;Landroid/view/SurfaceHolder;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$7;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    return-void
.end method
