.class final Lcom/apicloud/a/i/a/u/a/f;
.super Landroid/os/Handler;


# instance fields
.field final a:Lcom/apicloud/a/i/a/u/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/d;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/f;->a:Lcom/apicloud/a/i/a/u/a/d;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 1

    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_2

    const/16 v0, 0x7d0

    if-eq p1, v0, :cond_1

    const/16 v0, 0xbb8

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/f;->a:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/d;->f()V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/f;->a:Lcom/apicloud/a/i/a/u/a/d;

    sget-object v0, Lcom/apicloud/a/i/a/u/a/d$a;->b:Lcom/apicloud/a/i/a/u/a/d$a;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/u/a/d;->a(Lcom/apicloud/a/i/a/u/a/d$a;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/f;->a:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/u/a/d;->invalidate()V

    :goto_0
    return-void
.end method
