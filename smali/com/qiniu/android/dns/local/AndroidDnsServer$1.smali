.class final Lcom/qiniu/android/dns/local/AndroidDnsServer$1;
.super Ljava/lang/Object;
.source "AndroidDnsServer.java"

# interfaces
.implements Lcom/qiniu/android/dns/IResolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qiniu/android/dns/local/AndroidDnsServer;->defaultResolver()Lcom/qiniu/android/dns/IResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByReflection()[Ljava/net/InetAddress;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    invoke-static {}, Lcom/qiniu/android/dns/local/AndroidDnsServer;->getByCommand()[Ljava/net/InetAddress;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_8

    .line 118
    new-instance v1, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;

    new-instance v2, Lcom/qiniu/android/dns/local/Resolver;

    const/4 v3, 0x0

    aget-object v4, v0, v3

    invoke-direct {v2, v4}, Lcom/qiniu/android/dns/local/Resolver;-><init>(Ljava/net/InetAddress;)V

    invoke-direct {v1, v2}, Lcom/qiniu/android/dns/local/HijackingDetectWrapper;-><init>(Lcom/qiniu/android/dns/local/Resolver;)V

    .line 119
    invoke-interface {v1, p1, p2}, Lcom/qiniu/android/dns/IResolver;->resolve(Lcom/qiniu/android/dns/Domain;Lcom/qiniu/android/dns/NetworkInfo;)[Lcom/qiniu/android/dns/Record;

    move-result-object p2

    .line 120
    iget-boolean v1, p1, Lcom/qiniu/android/dns/Domain;->hasCname:Z

    if-eqz v1, :cond_4

    .line 122
    array-length v1, p2

    move v2, v3

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p2, v2

    .line 123
    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    :goto_1
    if-eqz v1, :cond_3

    goto :goto_2

    .line 129
    :cond_3
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v0, v0, v3

    .line 130
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 133
    :cond_4
    :goto_2
    iget v1, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-eqz v1, :cond_7

    .line 134
    array-length v1, p2

    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_7

    aget-object v4, p2, v2

    .line 135
    invoke-virtual {v4}, Lcom/qiniu/android/dns/Record;->isCname()Z

    move-result v5

    if-nez v5, :cond_6

    .line 136
    iget v5, v4, Lcom/qiniu/android/dns/Record;->ttl:I

    iget v6, p1, Lcom/qiniu/android/dns/Domain;->maxTtl:I

    if-gt v5, v6, :cond_5

    goto :goto_4

    .line 137
    :cond_5
    new-instance p2, Lcom/qiniu/android/dns/local/DnshijackingException;

    iget-object p1, p1, Lcom/qiniu/android/dns/Domain;->domain:Ljava/lang/String;

    aget-object v0, v0, v3

    .line 138
    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    iget v1, v4, Lcom/qiniu/android/dns/Record;->ttl:I

    invoke-direct {p2, p1, v0, v1}, Lcom/qiniu/android/dns/local/DnshijackingException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-object p2

    .line 116
    :cond_8
    new-instance p1, Ljava/io/IOException;

    const-string p2, "cant get local dns server"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
