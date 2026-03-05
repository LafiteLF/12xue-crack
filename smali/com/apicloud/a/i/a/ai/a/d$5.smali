.class Lcom/apicloud/a/i/a/ai/a/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/a/d;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/a/i/a/ai/a/d$a;->e()I

    move-result p1

    int-to-long v0, p1

    int-to-long p1, p2

    mul-long/2addr v0, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v0, p1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;

    move-result-object p1

    long-to-int p2, v0

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/ai/a/d$a;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->i(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/widget/TextView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->i(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/widget/TextView;

    move-result-object p1

    iget-object p3, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p3, p2}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    const v0, 0x36ee80

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d;Z)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->h(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d;Z)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->g(Lcom/apicloud/a/i/a/ai/a/d;)Lcom/apicloud/a/i/a/ai/a/d$a;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d;)I

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->j(Lcom/apicloud/a/i/a/ai/a/d;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/ai/a/d;->a(I)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$5;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->h(Lcom/apicloud/a/i/a/ai/a/d;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
