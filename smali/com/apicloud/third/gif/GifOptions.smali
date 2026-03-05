.class public Lcom/apicloud/third/gif/GifOptions;
.super Ljava/lang/Object;


# instance fields
.field inIsOpaque:Z

.field inSampleSize:C


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifOptions;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    const/4 v0, 0x1

    iput-char v0, p0, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    return-void
.end method


# virtual methods
.method setFrom(Lcom/apicloud/third/gif/GifOptions;)V
    .locals 1

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/apicloud/third/gif/GifOptions;->reset()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p1, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    iput-boolean v0, p0, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    iget-char p1, p1, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    iput-char p1, p0, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    :goto_0
    return-void
.end method

.method public setInIsOpaque(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/third/gif/GifOptions;->inIsOpaque:Z

    return-void
.end method

.method public setInSampleSize(I)V
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    const v1, 0xffff

    if-le p1, v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-char p1, p1

    iput-char p1, p0, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    goto :goto_1

    :cond_1
    :goto_0
    iput-char v0, p0, Lcom/apicloud/third/gif/GifOptions;->inSampleSize:C

    :goto_1
    return-void
.end method
