.class Lcom/apicloud/a/i/a/ad/a;
.super Landroid/os/Handler;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ad/a/g;

.field private b:I

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/i/a/ad/a/g;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/16 v0, 0x1388

    iput v0, p0, Lcom/apicloud/a/i/a/ad/a;->b:I

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a;->a:Lcom/apicloud/a/i/a/ad/a/g;

    return-void
.end method

.method private d()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a;->a:Lcom/apicloud/a/i/a/ad/a/g;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/apicloud/a/i/a/ad/a/g;->b(Z)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ad/a;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/apicloud/a/i/a/ad/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method final a(I)V
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a;->b:I

    :cond_0
    return-void
.end method

.method final a(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a;->c:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ad/a;->c:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a;->b()V

    :cond_1
    :goto_0
    return-void
.end method

.method b()V
    .locals 0

    invoke-virtual {p0, p0}, Lcom/apicloud/a/i/a/ad/a;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method c()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ad/a;->c:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ad/a;->a()V

    :cond_0
    return-void
.end method

.method public run()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a;->d()V

    iget v0, p0, Lcom/apicloud/a/i/a/ad/a;->b:I

    int-to-long v0, v0

    invoke-virtual {p0, p0, v0, v1}, Lcom/apicloud/a/i/a/ad/a;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
