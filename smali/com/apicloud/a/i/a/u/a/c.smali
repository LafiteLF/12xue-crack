.class final Lcom/apicloud/a/i/a/u/a/c;
.super Ljava/util/TimerTask;


# instance fields
.field a:F

.field final b:F

.field final c:Lcom/apicloud/a/i/a/u/a/d;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/d;F)V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iput p2, p0, Lcom/apicloud/a/i/a/u/a/c;->b:F

    const/high16 p1, 0x4f000000

    iput p1, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    const/high16 v1, 0x4f000000

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->b:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v2, 0x44fa0000    # 2000.0f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_1

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->b:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    iput v2, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    goto :goto_1

    :cond_0
    const/high16 v0, -0x3b060000    # -2000.0f

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->b:F

    :goto_0
    iput v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    :cond_2
    :goto_1
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float v0, v0, v1

    const/high16 v2, 0x41a00000    # 20.0f

    if-ltz v0, :cond_3

    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/d;->a()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v0, v0, Lcom/apicloud/a/i/a/u/a/d;->a:Landroid/os/Handler;

    const/16 v1, 0x7d0

    :goto_2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void

    :cond_3
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v0, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v0, v3

    float-to-int v0, v0

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v4, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    sub-int/2addr v4, v0

    iput v4, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget-boolean v0, v0, Lcom/apicloud/a/i/a/u/a/d;->f:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v0, v0, Lcom/apicloud/a/i/a/u/a/d;->e:F

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v3, v3, Lcom/apicloud/a/i/a/u/a/d;->d:I

    int-to-float v3, v3

    mul-float/2addr v0, v3

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v3, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget-object v4, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v4, v4, Lcom/apicloud/a/i/a/u/a/d;->h:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    if-gt v3, v4, :cond_4

    const/high16 v3, 0x42200000    # 40.0f

    iput v3, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v4, v3, Lcom/apicloud/a/i/a/u/a/d;->h:I

    neg-int v4, v4

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    goto :goto_3

    :cond_4
    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v3, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    iget-object v4, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v4, v4, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v5, v5, Lcom/apicloud/a/i/a/u/a/d;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v4, v4

    if-lt v3, v4, :cond_5

    iget-object v3, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v4, v3, Lcom/apicloud/a/i/a/u/a/d;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget-object v5, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget v5, v5, Lcom/apicloud/a/i/a/u/a/d;->h:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    mul-float/2addr v4, v0

    float-to-int v0, v4

    iput v0, v3, Lcom/apicloud/a/i/a/u/a/d;->g:I

    const/high16 v0, -0x3de00000    # -40.0f

    iput v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    :cond_5
    :goto_3
    iget v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_6

    add-float/2addr v0, v2

    goto :goto_4

    :cond_6
    sub-float/2addr v0, v2

    :goto_4
    iput v0, p0, Lcom/apicloud/a/i/a/u/a/c;->a:F

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/c;->c:Lcom/apicloud/a/i/a/u/a/d;

    iget-object v0, v0, Lcom/apicloud/a/i/a/u/a/d;->a:Landroid/os/Handler;

    const/16 v1, 0x3e8

    goto/16 :goto_2
.end method
