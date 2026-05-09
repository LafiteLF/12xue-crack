.class public abstract Lcom/deepe/c/j/e/d;
.super Lcom/deepe/c/j/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/deepe/c/j/l<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Lcom/deepe/c/j/m;

.field private d:Lcom/deepe/c/j/e/i;

.field private e:Lcom/deepe/c/j/o$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/j/o$b<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/j/e/d;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/j/l;-><init>(ILjava/lang/String;Lcom/deepe/c/j/o$a;)V

    invoke-static {}, Lcom/deepe/c/j/m;->a()Lcom/deepe/c/j/m;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    new-instance p1, Lcom/deepe/c/j/e/i;

    invoke-direct {p1}, Lcom/deepe/c/j/e/i;-><init>()V

    invoke-virtual {p0, p1}, Lcom/deepe/c/j/e/d;->setRetryPolicy(Lcom/deepe/c/j/e/i;)V

    return-void
.end method

.method public static makeTimeoutError()Lcom/deepe/c/j/r;
    .locals 1

    new-instance v0, Lcom/deepe/c/j/a/h;

    invoke-direct {v0}, Lcom/deepe/c/j/a/h;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/j/m;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public addHeader(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/m;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final containsHeader(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/m;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public final getHeaders()Ljava/util/Map;
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

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    return-object v0
.end method

.method public final getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/deepe/c/j/e/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/deepe/c/j/c/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/e/d;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/j/c/b;->a(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public final performResponse(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->e:Lcom/deepe/c/j/o$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/deepe/c/j/o$b;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final removeHeader(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->c:Lcom/deepe/c/j/m;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/m;->a(Ljava/lang/Object;)Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public setCertificate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/d;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/deepe/c/j/e/d;->b:Ljava/lang/String;

    return-void
.end method

.method public setReadTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->d:Lcom/deepe/c/j/e/i;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/e/i;->b(I)V

    return-void
.end method

.method public setResponseListener(Lcom/deepe/c/j/o$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/o$b<",
            "TT;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/c/j/e/d;->e:Lcom/deepe/c/j/o$b;

    return-void
.end method

.method public final setRetryPolicy(Lcom/deepe/c/j/e/i;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/e/d;->d:Lcom/deepe/c/j/e/i;

    invoke-super {p0, p1}, Lcom/deepe/c/j/l;->setRetryPolicy(Lcom/deepe/c/j/q;)Lcom/deepe/c/j/l;

    return-void
.end method

.method public setTimeout(I)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/d;->d:Lcom/deepe/c/j/e/i;

    invoke-virtual {v0, p1}, Lcom/deepe/c/j/e/i;->a(I)V

    return-void
.end method
