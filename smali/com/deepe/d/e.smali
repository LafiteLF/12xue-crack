.class public Lcom/deepe/d/e;
.super Lcom/deepe/sdk/PerformanceContext;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:J

.field private d:J

.field private e:J

.field private f:J

.field private g:J

.field private h:J

.field private i:Z

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$ResourceTiming;",
            ">;"
        }
    .end annotation
.end field

.field private l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpTiming;",
            ">;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpError;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/sdk/PerformanceContext;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->j:Ljava/util/List;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->n:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->o:Ljava/util/Map;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/deepe/d/e;->m:Ljava/util/Map;

    return-void
.end method

.method private e()J
    .locals 4

    iget-wide v0, p0, Lcom/deepe/d/e;->c:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private e(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/w;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f()J
    .locals 4

    iget-wide v0, p0, Lcom/deepe/d/e;->d:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private g()J
    .locals 4

    iget-wide v0, p0, Lcom/deepe/d/e;->e:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private h()J
    .locals 4

    iget-wide v0, p0, Lcom/deepe/d/e;->g:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method private i()J
    .locals 4

    iget-wide v0, p0, Lcom/deepe/d/e;->f:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/d/e;->g:J

    return-void
.end method

.method public final a(Landroid/webkit/ConsoleMessage;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->j:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/deepe/sdk/PerformanceContext$HttpError;)V
    .locals 5

    iget-object v0, p1, Lcom/deepe/sdk/PerformanceContext$HttpError;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;->interceptTime:J

    sub-long/2addr v1, v3

    iput-wide v1, p1, Lcom/deepe/sdk/PerformanceContext$HttpError;->duration:J

    :cond_0
    iget-object v0, p0, Lcom/deepe/d/e;->m:Ljava/util/Map;

    iget-object v1, p1, Lcom/deepe/sdk/PerformanceContext$HttpError;->name:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/d/e;->clear()V

    invoke-direct {p0, p1}, Lcom/deepe/d/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/d/e;->f:J

    iput-wide v0, p0, Lcom/deepe/d/e;->c:J

    iput-wide v0, p0, Lcom/deepe/d/e;->h:J

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/deepe/sdk/PerformanceContext$HttpTiming;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->l:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->n:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final b()V
    .locals 2

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/d/e;->d:J

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/deepe/d/e;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/d/e;->c:J

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepe/d/e;->h:J

    sub-long/2addr v0, v2

    new-instance v2, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;

    invoke-direct {v2, v0, v1}, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;-><init>(J)V

    iput-object p2, v2, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;->method:Ljava/lang/String;

    iget-object p2, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    invoke-interface {p2, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final c()V
    .locals 2

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/d/e;->e:J

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/d/e;->b:Ljava/lang/String;

    return-void
.end method

.method public final clear()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/deepe/d/e;->n:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/deepe/d/e;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/deepe/d/e;->l:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/deepe/d/e;->o:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/deepe/d/e;->m:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/deepe/d/e;->c:J

    iput-wide v1, p0, Lcom/deepe/d/e;->d:J

    iput-wide v1, p0, Lcom/deepe/d/e;->f:J

    iput-wide v1, p0, Lcom/deepe/d/e;->g:J

    iput-object v0, p0, Lcom/deepe/d/e;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/deepe/d/e;->i:Z

    return-void
.end method

.method public final cls()D
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->cls:D

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final d(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/deepe/d/e;->h:J

    sub-long/2addr v0, v2

    iput-wide v0, p1, Lcom/deepe/sdk/PerformanceContext$ResourceTiming;->loadTime:J

    :cond_0
    return-void
.end method

.method public final fcp()J
    .locals 4

    invoke-direct {p0}, Lcom/deepe/d/e;->g()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/deepe/d/e;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final getConsoleList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/webkit/ConsoleMessage;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/d/e;->j:Ljava/util/List;

    return-object v0
.end method

.method public final getHttpErrors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpError;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/d/e;->m:Ljava/util/Map;

    return-object v0
.end method

.method public final getHttpTimings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$HttpTiming;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/d/e;->l:Ljava/util/Map;

    return-object v0
.end method

.method public final getJSTimings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/d/e;->n:Ljava/util/Map;

    return-object v0
.end method

.method public final getResourceTimings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/deepe/sdk/PerformanceContext$ResourceTiming;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/d/e;->k:Ljava/util/Map;

    return-object v0
.end method

.method public final getTimingQuota()Lcom/deepe/sdk/PerformanceContext$TimingQuota;
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    return-object v0
.end method

.method public final indexId()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "P"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final inp()J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->inp:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final isReuseMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/d/e;->i:Z

    return v0
.end method

.method public final lcp()J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->lcp:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final mark(Ljava/lang/String;)V
    .locals 3

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/d/e;->o:Ljava/util/Map;

    invoke-static {}, Lcom/deepe/d/f;->a()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final measure(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->o:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    iget-object v0, p0, Lcom/deepe/d/e;->o:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    sub-long/2addr v0, p1

    return-wide v0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    goto :goto_0

    :cond_2
    const-wide/16 p1, 0x0

    :goto_0
    return-wide p1
.end method

.method public final rating()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->rating:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final score()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->score:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setTimingQuota(Lcom/deepe/sdk/PerformanceContext$TimingQuota;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    return-void
.end method

.method public final si()J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->si:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final tbt()J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->tbt:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final timeOrigin()J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/d/e;->h:J

    return-wide v0
.end method

.method public final title()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "total="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/d/e;->total()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fcp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/d/e;->fcp()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", traceDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/d/e;->traceDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final total()J
    .locals 4

    invoke-direct {p0}, Lcom/deepe/d/e;->f()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/deepe/d/e;->e()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final traceDuration()J
    .locals 4

    invoke-direct {p0}, Lcom/deepe/d/e;->h()J

    move-result-wide v0

    invoke-direct {p0}, Lcom/deepe/d/e;->i()J

    move-result-wide v2

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final traceEndTime()J
    .locals 2

    iget-wide v0, p0, Lcom/deepe/d/e;->g:J

    return-wide v0
.end method

.method public final ttfb()J
    .locals 2

    iget-object v0, p0, Lcom/deepe/d/e;->p:Lcom/deepe/sdk/PerformanceContext$TimingQuota;

    if-eqz v0, :cond_0

    iget-wide v0, v0, Lcom/deepe/sdk/PerformanceContext$TimingQuota;->ttfb:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public final url()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/d/e;->a:Ljava/lang/String;

    return-object v0
.end method
