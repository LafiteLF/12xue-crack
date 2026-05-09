.class public abstract Lcom/deepe/c/j/l;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/j/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/deepe/c/j/l<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field private static B:J


# instance fields
.field private A:Z

.field private final a:Lcom/deepe/c/j/s$a;

.field private final b:I

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:I

.field private g:Lcom/deepe/c/j/o$a;

.field private h:Ljava/lang/Integer;

.field private i:Lcom/deepe/c/j/n;

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:I

.field private o:J

.field private p:Lcom/deepe/c/j/q;

.field private q:Lcom/deepe/c/j/a$a;

.field private r:Ljava/lang/Object;

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Ljava/net/HttpURLConnection;

.field private v:Lcom/deepe/c/j/e/e;

.field private w:Z

.field private x:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private y:Z

.field private z:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/j/l;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/deepe/c/j/s$a;

    invoke-direct {v0}, Lcom/deepe/c/j/s$a;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->j:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->k:Z

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->l:Z

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->m:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/deepe/c/j/l;->n:I

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/deepe/c/j/l;->o:J

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/deepe/c/j/l;->q:Lcom/deepe/c/j/a$a;

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->t:Z

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->w:Z

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->y:Z

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->z:Z

    iput-boolean v1, p0, Lcom/deepe/c/j/l;->A:Z

    iput p1, p0, Lcom/deepe/c/j/l;->b:I

    iput-object p2, p0, Lcom/deepe/c/j/l;->c:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/deepe/c/j/l;->createIdentifier(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/j/l;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/deepe/c/j/l;->g:Lcom/deepe/c/j/o$a;

    new-instance p1, Lcom/deepe/c/j/d;

    invoke-direct {p1}, Lcom/deepe/c/j/d;-><init>()V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/l;->setRetryPolicy(Lcom/deepe/c/j/q;)Lcom/deepe/c/j/l;

    invoke-static {p2}, Lcom/deepe/c/j/l;->findDefaultTrafficStatsTag(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/deepe/c/j/l;->f:I

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/j/l;->x:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/deepe/c/j/o$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/deepe/c/j/l;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    return-void
.end method

.method static synthetic access$1(Lcom/deepe/c/j/l;)Lcom/deepe/c/j/s$a;
    .locals 0

    iget-object p0, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    return-object p0
.end method

.method protected static closeQuietly(Ljava/io/Closeable;)V
    .locals 0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method private static createIdentifier(ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Request:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide p0, Lcom/deepe/c/j/l;->B:J

    const-wide/16 v1, 0x1

    add-long/2addr v1, p0

    sput-wide v1, Lcom/deepe/c/j/l;->B:J

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/deepe/c/j/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoding not supported: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected static ensuresSync(Ljava/io/OutputStream;)Z
    .locals 1

    if-eqz p0, :cond_0

    :try_start_0
    instance-of v0, p0, Ljava/io/FileOutputStream;

    if-eqz v0, :cond_0

    check-cast p0, Ljava/io/FileOutputStream;

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p0, 0x0

    return p0

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method private static findDefaultTrafficStatsTag(Ljava/lang/String;)I
    .locals 1

    invoke-static {p0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public addMarker(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/deepe/c/j/s$a;->a(Ljava/lang/String;J)V

    iget-wide v0, p0, Lcom/deepe/c/j/l;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/deepe/c/j/l;->o:J

    :cond_0
    return-void
.end method

.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->k:Z

    iget-object v0, p0, Lcom/deepe/c/j/l;->u:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/j/l;->u:Ljava/net/HttpURLConnection;

    :cond_0
    return-void
.end method

.method public checkBodySafe()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    const/4 v0, 0x1

    return v0
.end method

.method public compareTo(Lcom/deepe/c/j/l;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "TT;>;)I"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getPriority()Lcom/deepe/c/j/l$a;

    move-result-object v0

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getPriority()Lcom/deepe/c/j/l$a;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/l;->h:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/deepe/c/j/l;->h:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/deepe/c/j/l$a;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/deepe/c/j/l$a;->ordinal()I

    move-result v0

    sub-int v0, p1, v0

    :goto_0
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/deepe/c/j/l;

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/l;->compareTo(Lcom/deepe/c/j/l;)I

    move-result p1

    return p1
.end method

.method public containsHeader(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public deliverError(Lcom/deepe/c/j/r;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->g:Lcom/deepe/c/j/o$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/j/o$a;->onErrorResponse(Lcom/deepe/c/j/r;)V

    :cond_0
    return-void
.end method

.method protected deliverProgress(JJ)V
    .locals 0

    return-void
.end method

.method protected abstract deliverResponse(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method

.method protected finish(Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->l:Z

    iget-object v1, p0, Lcom/deepe/c/j/l;->i:Lcom/deepe/c/j/n;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p0}, Lcom/deepe/c/j/n;->c(Lcom/deepe/c/j/l;)V

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    if-eq v3, v4, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/deepe/c/j/l$1;

    invoke-direct {v3, p0, p1, v1, v2}, Lcom/deepe/c/j/l$1;-><init>(Lcom/deepe/c/j/l;Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_1
    iget-object v3, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    invoke-virtual {v3, p1, v1, v2}, Lcom/deepe/c/j/s$a;->a(Ljava/lang/String;J)V

    iget-object p1, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/deepe/c/j/s$a;->a(Ljava/lang/String;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/deepe/c/j/l;->o:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long p1, v1, v3

    if-ltz p1, :cond_2

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, p1, v3

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    const-string v0, "%d ms: %s"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/j/l;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/deepe/c/j/a$a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->q:Lcom/deepe/c/j/a$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getOriginUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getCharset()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->s:Ljava/lang/String;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getBody()[B

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v0, v0
    :try_end_0
    .catch Lcom/deepe/c/j/a/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    int-to-long v0, v0

    return-wide v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/deepe/c/j/a/a;->printStackTrace()V

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getErrorListener()Lcom/deepe/c/j/o$a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->g:Lcom/deepe/c/j/o$a;

    return-object v0
.end method

.method public final getFinalHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/deepe/c/j/l;->x:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIdentifier()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getMarker()Lcom/deepe/c/j/s$a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->a:Lcom/deepe/c/j/s$a;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/l;->b:I

    return v0
.end method

.method public getOriginUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->c:Ljava/lang/String;

    return-object v0
.end method

.method protected getParams()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getParamsEncoding()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getPostParams()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getPostParamsEncoding()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/deepe/c/j/l;->encodeParameters(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPostBodyContentType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getBodyContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPostData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParams()Ljava/util/Map;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParams()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method protected getPostParamsEncoding()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParamsEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()Lcom/deepe/c/j/l$a;
    .locals 1

    sget-object v0, Lcom/deepe/c/j/l$a;->b:Lcom/deepe/c/j/l$a;

    return-object v0
.end method

.method public getProxy()Lcom/deepe/c/j/e/e;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->v:Lcom/deepe/c/j/e/e;

    return-object v0
.end method

.method public final getReadTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->p:Lcom/deepe/c/j/q;

    invoke-interface {v0}, Lcom/deepe/c/j/q;->b()I

    move-result v0

    return v0
.end method

.method public getRetryPolicy()Lcom/deepe/c/j/q;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->p:Lcom/deepe/c/j/q;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/l;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->r:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->p:Lcom/deepe/c/j/q;

    invoke-interface {v0}, Lcom/deepe/c/j/q;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/l;->f:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/j/l;->c:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public handleResponse(Lcom/deepe/c/j/e/g;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/g;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public final hasConnectioned()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/l;->u:Ljava/net/HttpURLConnection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->m:Z

    return v0
.end method

.method public inRequestSafeMode()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/j/l;->n:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method public inResponseSafeMode()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/j/l;->n:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isCanceled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->k:Z

    return v0
.end method

.method public final isConnectioned()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->A:Z

    return v0
.end method

.method public final isCreated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->z:Z

    return v0
.end method

.method public final isDeliverInThread()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->t:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getParams()Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->l:Z

    return v0
.end method

.method public final isPendding()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->y:Z

    return v0
.end method

.method public markDelivered()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->m:Z

    return-void
.end method

.method public final needEncode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->w:Z

    return v0
.end method

.method public onCreated()V
    .locals 0

    return-void
.end method

.method public onOpened()V
    .locals 0

    return-void
.end method

.method public onPending()V
    .locals 0

    return-void
.end method

.method protected parseNetworkError(Lcom/deepe/c/j/r;)Lcom/deepe/c/j/r;
    .locals 0

    return-object p1
.end method

.method protected abstract parseNetworkResponse(Lcom/deepe/c/j/k;)Lcom/deepe/c/j/o;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/k;",
            ")",
            "Lcom/deepe/c/j/o<",
            "TT;>;"
        }
    .end annotation
.end method

.method public setCacheEntry(Lcom/deepe/c/j/a$a;)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/a$a;",
            ")",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/l;->q:Lcom/deepe/c/j/a$a;

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/l;->s:Ljava/lang/String;

    return-void
.end method

.method public final setConnection(Ljava/net/HttpURLConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/l;->u:Ljava/net/HttpURLConnection;

    return-void
.end method

.method public final setConnectioned()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->A:Z

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->onOpened()V

    return-void
.end method

.method public final setCreated()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->z:Z

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->onCreated()V

    return-void
.end method

.method public final setDeliverInThread(Z)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/deepe/c/j/l;->t:Z

    return-object p0
.end method

.method public setErrorListener(Lcom/deepe/c/j/o$a;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/l;->g:Lcom/deepe/c/j/o$a;

    return-void
.end method

.method public final setFinalHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/l;->x:Ljava/util/Map;

    return-void
.end method

.method public setNeedEncode(Z)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/deepe/c/j/l;->w:Z

    return-object p0
.end method

.method public final setPendding()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/deepe/c/j/l;->y:Z

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->onPending()V

    return-void
.end method

.method public setProxy(Ljava/lang/String;II)V
    .locals 1

    new-instance v0, Lcom/deepe/c/j/e/e;

    invoke-direct {v0, p1}, Lcom/deepe/c/j/e/e;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/deepe/c/j/l;->v:Lcom/deepe/c/j/e/e;

    invoke-virtual {v0, p2}, Lcom/deepe/c/j/e/e;->a(I)V

    iget-object p1, p0, Lcom/deepe/c/j/l;->v:Lcom/deepe/c/j/e/e;

    invoke-virtual {p1, p3}, Lcom/deepe/c/j/e/e;->b(I)V

    return-void
.end method

.method public setRedirectUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/l;->d:Ljava/lang/String;

    return-void
.end method

.method public setRequestQueue(Lcom/deepe/c/j/n;)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/n;",
            ")",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/l;->i:Lcom/deepe/c/j/n;

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->setPendding()V

    return-object p0
.end method

.method public setRetryPolicy(Lcom/deepe/c/j/q;)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/q;",
            ")",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/l;->p:Lcom/deepe/c/j/q;

    return-object p0
.end method

.method public setSafeMode(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/l;->n:I

    return-void
.end method

.method public final setSequence(I)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/j/l;->h:Ljava/lang/Integer;

    return-object p0
.end method

.method public setShouldCache(Z)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/deepe/c/j/l;->j:Z

    return-object p0
.end method

.method public setTag(Ljava/lang/Object;)Lcom/deepe/c/j/l;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/deepe/c/j/l<",
            "*>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/l;->r:Ljava/lang/Object;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/j/l;->j:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/deepe/c/j/l;->k:Z

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[\u221a] "

    :goto_0
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/j/l;->getPriority()Lcom/deepe/c/j/l$a;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/deepe/c/j/l;->h:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/deepe/c/j/l;->r:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/deepe/c/j/a/a;
        }
    .end annotation

    return-void
.end method
