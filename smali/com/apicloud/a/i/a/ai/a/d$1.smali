.class Lcom/apicloud/a/i/a/ai/a/d$1;
.super Landroid/os/Handler;


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

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/d;->a(Lcom/apicloud/a/i/a/ai/a/d;)I

    move-result p1

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/d;->b(Lcom/apicloud/a/i/a/ai/a/d;)Z

    move-result v2

    xor-int/2addr v0, v2

    iget-object v2, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {v2}, Lcom/apicloud/a/i/a/ai/a/d;->c(Lcom/apicloud/a/i/a/ai/a/d;)Z

    move-result v2

    iget-object v3, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-static {v3}, Lcom/apicloud/a/i/a/ai/a/d;->d(Lcom/apicloud/a/i/a/ai/a/d;)Z

    move-result v3

    if-eqz v0, :cond_2

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/ai/a/d$1;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    rem-int/lit16 p1, p1, 0x3e8

    rsub-int p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-virtual {p0, v0, v1, v2}, Lcom/apicloud/a/i/a/ai/a/d$1;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/a/d$1;->a:Lcom/apicloud/a/i/a/ai/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/a/d;->f()V

    :cond_2
    :goto_0
    return-void
.end method
