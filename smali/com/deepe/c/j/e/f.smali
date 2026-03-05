.class public abstract Lcom/deepe/c/j/e/f;
.super Lcom/deepe/c/j/e/d;

# interfaces
.implements Lcom/deepe/c/j/o$a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/j/e/d<",
        "Lcom/deepe/c/j/k;",
        ">;",
        "Lcom/deepe/c/j/o$a;"
    }
.end annotation


# static fields
.field public static final MIN_PROGRESS_TIME:I = 0x12c


# instance fields
.field protected a:Lcom/deepe/c/i/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/v<",
            "Lcom/deepe/c/j/e/j;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/j/e/d;-><init>(ILjava/lang/String;)V

    const/16 p1, 0x12c

    iput p1, p0, Lcom/deepe/c/j/e/f;->e:I

    new-instance p1, Lcom/deepe/c/i/v;

    invoke-direct {p1}, Lcom/deepe/c/i/v;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {p0, p0}, Lcom/deepe/c/j/e/f;->setErrorListener(Lcom/deepe/c/j/o$a;)V

    invoke-direct {p0}, Lcom/deepe/c/j/e/f;->initDefault()V

    return-void
.end method

.method private initDefault()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/deepe/c/j/e/f;->setDeliverInThread(Z)Lcom/deepe/c/j/l;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/deepe/c/j/e/j;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0, p1}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public addCallback(Ljava/util/Collection;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/deepe/c/j/e/j;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/j/e/j;

    iget-object v1, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1, v0}, Lcom/deepe/c/i/v;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v1, v0}, Lcom/deepe/c/i/v;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public cancel()V
    .locals 0

    invoke-super {p0}, Lcom/deepe/c/j/e/d;->cancel()V

    return-void
.end method

.method protected deliverProgress(JJ)V
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->isConnectioned()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->setConnectioned()V

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->needReport()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_2

    long-to-float p3, p3

    long-to-float p4, p1

    div-float/2addr p3, p4

    const/high16 p4, 0x42c80000    # 100.0f

    mul-float/2addr p3, p4

    const v0, 0x42c7fae1    # 99.99f

    cmpl-float v0, p3, v0

    if-lez v0, :cond_1

    cmpg-float p4, p3, p4

    if-gez p4, :cond_1

    return-void

    :cond_1
    new-instance p4, Ljava/math/BigDecimal;

    float-to-double v0, p3

    invoke-direct {p4, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 p3, 0x2

    const/4 v0, 0x4

    invoke-virtual {p4, p3, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object p3

    invoke-virtual {p3}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    :cond_2
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/deepe/c/j/e/f;->performProgress(JD)V

    :cond_3
    return-void
.end method

.method protected deliverResponse(Lcom/deepe/c/j/k;)V
    .locals 3

    const-string v0, "deliverResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->getCharset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->inResponseSafeMode()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/deepe/c/j/b/a;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p1, Lcom/deepe/c/j/a/f;

    const-string v0, "Received unsafe content!"

    invoke-direct {p1, v0}, Lcom/deepe/c/j/a/f;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->onErrorResponse(Lcom/deepe/c/j/r;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->hasCallback()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/deepe/c/j/e/k;

    iget v2, p1, Lcom/deepe/c/j/k;->a:I

    invoke-direct {v1, v2}, Lcom/deepe/c/j/e/k;-><init>(I)V

    iget-object v2, p1, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    iput-object v2, v1, Lcom/deepe/c/j/e/k;->c:Ljava/util/Map;

    iput-object v0, v1, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/deepe/c/j/e/f;->performFinish(Lcom/deepe/c/j/e/k;)V

    :cond_1
    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->performNetworkResponse(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/deepe/c/j/k;

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->deliverResponse(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method public final getCallback()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/j/e/j;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    return-object v0
.end method

.method public getMinGapTime()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/f;->e:I

    return v0
.end method

.method public final hasCallback()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public needErrorInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/e/f;->c:Z

    return v0
.end method

.method public needEscape()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/e/f;->b:Z

    return v0
.end method

.method public needReport()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/e/f;->d:Z

    return v0
.end method

.method public onErrorResponse(Lcom/deepe/c/j/r;)V
    .locals 9

    const-string v0, "onErrorResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->shouldCache()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->getCacheEntry()Lcom/deepe/c/j/a$a;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "Request Error, Return will from Cache <<<< "

    invoke-static {v1}, Lcom/deepe/c/j/s;->c(Ljava/lang/String;)V

    new-instance v1, Lcom/deepe/c/j/k;

    const/16 v3, 0x130

    iget-object v4, v0, Lcom/deepe/c/j/a$a;->a:[B

    iget-object v5, v0, Lcom/deepe/c/j/a$a;->g:Ljava/util/Map;

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->a()J

    move-result-wide v7

    move-object v2, v1

    invoke-direct/range {v2 .. v8}, Lcom/deepe/c/j/k;-><init>(I[BLjava/util/Map;ZJ)V

    invoke-virtual {p0, v1}, Lcom/deepe/c/j/e/f;->deliverResponse(Lcom/deepe/c/j/k;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->hasCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->c()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    iget-object v2, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    iget v2, v2, Lcom/deepe/c/j/k;->a:I

    iget-object v3, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    invoke-virtual {p0}, Lcom/deepe/c/j/e/f;->getCharset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/deepe/c/j/k;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v3, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    iget-object v3, v3, Lcom/deepe/c/j/k;->c:Ljava/util/Map;

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    new-instance v5, Lcom/deepe/c/j/e/k;

    invoke-direct {v5, v2}, Lcom/deepe/c/j/e/k;-><init>(I)V

    iput-object v4, v5, Lcom/deepe/c/j/e/k;->b:Ljava/lang/String;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    :goto_1
    iput-object v3, v5, Lcom/deepe/c/j/e/k;->c:Ljava/util/Map;

    invoke-virtual {v5, v0}, Lcom/deepe/c/j/e/k;->a(I)Lcom/deepe/c/j/e/k;

    invoke-virtual {v5, v1}, Lcom/deepe/c/j/e/k;->a(Ljava/lang/String;)Lcom/deepe/c/j/e/k;

    invoke-virtual {p0, v5}, Lcom/deepe/c/j/e/f;->performFinish(Lcom/deepe/c/j/e/k;)V

    :cond_3
    invoke-virtual {p1}, Lcom/deepe/c/j/r;->d()Lcom/deepe/c/j/k;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->performNetworkResponse(Lcom/deepe/c/j/k;)V

    return-void
.end method

.method protected parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "Lcom/deepe/c/j/k;",
            ">;"
        }
    .end annotation

    const-string v0, " >>>>>> parseNetworkResponse"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/deepe/c/j/d/e;->a(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/a$a;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/deepe/c/j/o;->a(Ljava/lang/Object;Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/o;

    move-result-object p1

    return-object p1
.end method

.method protected final performEventChunked(Lcom/deepe/c/j/e/c;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1, p1}, Lcom/deepe/c/j/e/j;->onReceiveEventData(Lcom/deepe/c/j/e/c;)V

    goto :goto_0
.end method

.method protected final performEventClose()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1}, Lcom/deepe/c/j/e/j;->onReceiveEventClose()V

    goto :goto_0
.end method

.method protected final performEventCreate()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1}, Lcom/deepe/c/j/e/j;->onReceiveEventCreate()V

    goto :goto_0
.end method

.method protected final performEventError(IILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1, p1, p2, p3}, Lcom/deepe/c/j/e/j;->onReceiveEventError(IILjava/lang/String;)V

    goto :goto_0
.end method

.method protected final performEventOpen()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1}, Lcom/deepe/c/j/e/j;->onReceiveEventOpen()V

    goto :goto_0
.end method

.method protected final performFinish(Lcom/deepe/c/j/e/k;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1, p1}, Lcom/deepe/c/j/e/j;->onRequestFinish(Lcom/deepe/c/j/e/k;)V

    goto :goto_0
.end method

.method protected final performNetworkResponse(Lcom/deepe/c/j/k;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->performResponse(Ljava/lang/Object;)V

    invoke-static {p0, p1}, Lcom/deepe/c/j/e;->a(Lcom/deepe/c/j/l;Lcom/deepe/c/j/k;)V

    return-void
.end method

.method protected final performProgress(JD)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/f;->a:Lcom/deepe/c/i/v;

    invoke-virtual {v0}, Lcom/deepe/c/i/v;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/j/e/j;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/deepe/c/j/e/j;->onProgressChanged(JD)V

    goto :goto_0
.end method

.method public setCallback(Lcom/deepe/c/j/e/j;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/f;->addCallback(Lcom/deepe/c/j/e/j;)V

    return-void
.end method

.method public setMinGapTime(I)V
    .locals 1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    const/16 p1, 0x12c

    :cond_0
    iput p1, p0, Lcom/deepe/c/j/e/f;->e:I

    return-void
.end method

.method public setNeedErrorInfo(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/j/e/f;->c:Z

    return-void
.end method

.method public setNeedEscape(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/j/e/f;->b:Z

    return-void
.end method

.method public setNeedReport(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/j/e/f;->d:Z

    return-void
.end method
