.class final Lcom/apicloud/a/i/a/u/a/n;
.super Ljava/util/TimerTask;


# instance fields
.field a:I

.field b:I

.field c:I

.field final d:Lcom/apicloud/a/i/a/u/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/d;I)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/n;->d:Lcom/apicloud/a/i/a/u/a/d;

    iput p2, p0, Lcom/apicloud/a/i/a/u/a/n;->c:I

    const p1, 0x7fffffff

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/n;->b:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/n;->c:I

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    int-to-float v1, v0

    const v2, 0x3dcccccd    # 0.1f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/apicloud/a/i/a/u/a/n;->b:I

    if-nez v1, :cond_2

    if-gez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/apicloud/a/i/a/u/a/n;->b:I

    :cond_2
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/n;->d:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/n;->d:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v0, v0, Lcom/apicloud/a/i/a/u/a/d;->a:Landroid/os/Handler;

    const/16 v1, 0xbb8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/n;->d:Lcom/apicloud/a/i/a/u/a/d;

    iget v1, v0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget v2, p0, Lcom/apicloud/a/i/a/u/a/n;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/n;->d:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v0, v0, Lcom/apicloud/a/i/a/u/a/d;->a:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    iget v1, p0, Lcom/apicloud/a/i/a/u/a/n;->b:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/n;->a:I

    :goto_1
    return-void
.end method
