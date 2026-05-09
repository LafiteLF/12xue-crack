.class Lcom/apicloud/a/i/a/ai/a/j$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Error: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "app3c"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->c(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/j;->d(Lcom/apicloud/a/i/a/ai/a/j;I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->f(Lcom/apicloud/a/i/a/ai/a/j;)Lcom/apicloud/a/i/a/ai/a/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->m(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/j;->m(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/a/j$5;->a:Lcom/apicloud/a/i/a/ai/a/j;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ai/a/j;->e(Lcom/apicloud/a/i/a/ai/a/j;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-interface {p1, v1, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_1
    return v0
.end method
