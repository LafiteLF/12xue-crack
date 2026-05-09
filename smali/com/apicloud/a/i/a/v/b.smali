.class public Lcom/apicloud/a/i/a/v/b;
.super Landroid/widget/ProgressBar;


# instance fields
.field a:Ljava/lang/String;

.field private b:I

.field private c:I

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x1010078

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/a/v/b;->c:I

    invoke-direct {p0}, Lcom/apicloud/a/i/a/v/b;->a()V

    return-void
.end method

.method private a()V
    .locals 3

    const v0, -0x141415

    const v1, -0xff9401

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/apicloud/a/i/a/v/a;->a(III)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/v/b;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    const/16 v0, 0x64

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, v0, :cond_1

    move p1, v0

    :cond_1
    :goto_0
    iput p1, p0, Lcom/apicloud/a/i/a/v/b;->c:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/v/b;->getMax()I

    move-result v1

    if-eq v0, v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/a/v/b;->setMax(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/v/b;->setProgress(I)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/v/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/v/b;->d:Z

    return-void
.end method

.method public b(I)V
    .locals 1

    const v0, 0x102000d

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;II)V

    return-void
.end method

.method public c(I)V
    .locals 1

    const/high16 v0, 0x1020000

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/a/v/a;->a(Landroid/widget/ProgressBar;II)V

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/apicloud/a/i/a/v/b;->c:I

    if-ltz v0, :cond_0

    const/16 p1, 0x64

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/v/b;->b:I

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/apicloud/a/i/a/v/b;->b:I

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setMin(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/v/b;->getProgress()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/v/b;->setProgress(I)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/v/b;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/v/b;->setMax(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProgress(I)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/apicloud/a/i/a/v/b;->b:I

    sub-int/2addr p1, v0

    invoke-super {p0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/apicloud/a/i/a/v/b;->b:I

    sub-int/2addr p1, v0

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/v/b;->d:Z

    invoke-super {p0, p1, v0}, Landroid/widget/ProgressBar;->setProgress(IZ)V

    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[progress]"

    return-object v0
.end method
