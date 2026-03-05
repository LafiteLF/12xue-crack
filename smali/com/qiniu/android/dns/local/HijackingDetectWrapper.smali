.class public final Lcom/qiniu/android/dns/local/HijackingDetectWrapper;
.super Ljava/lang/Object;
.source "HijackingDetectWrapper.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# instance fields
.field private final resolver:Lcom/qiniu/android/dns/local/Resolver;


# direct methods
.method public constructor <init>(Lcom/qiniu/android/dns/local/Resolver;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    invoke-virtual {v0, p1, p2}, Lcom/qiniu/android/dns/local/Resolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object p2

    .line 23
    iget-boolean v0, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 25
    array-length v0, p2

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p2, v2

    .line 26
    invoke-virtual {v3}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 32
    :cond_2
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v0, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v0, v0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 33
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 36
    :cond_3
    :goto_2
    iget v0, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v0, :cond_6

    .line 37
    array-length v0, p2

    :goto_3
    if-ge v1, v0, :cond_6

    aget-object v2, p2, v1

    .line 38
    invoke-virtual {v2}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v3

    if-nez v3, :cond_5

    .line 39
    iget v3, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v4, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-gt v3, v4, :cond_4

    goto :goto_4

    .line 40
    :cond_4
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    iget-object v0, p0, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;->resolver:Lcom/qiniu/android/dns/local/Resolver;

    iget-object v0, v0, Lcom/qiniu/android/dns/local/Resolver;->address:Ljava/net/InetAddress;

    .line 41
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, v2, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {p2, p1, v0, v1}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :cond_5
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object p2
.end method
