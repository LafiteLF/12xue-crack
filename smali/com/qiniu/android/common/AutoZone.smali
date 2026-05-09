.class public final Lcom/qiniu/android/common/AutoZone;
.super Lcom/qiniu/android/common/Zone;
.source "AutoZone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/common/AutoZone$ZoneIndex;
    }
.end annotation


# static fields
.field public static final autoZone:Lcom/qiniu/android/common/AutoZone;


# instance fields
.field private client:Lcom/qiniu/android/http/Client;

.field private final ucServer:Ljava/lang/String;

.field private zones:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/qiniu/android/common/AutoZone$ZoneIndex;",
            "Lcom/qiniu/android/common/ZoneInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 25
    new-instance v0, Lcom/qiniu/android/common/AutoZone;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qiniu/android/common/AutoZone;-><init>(Lcom/qiniu/android/dns/DnsManager;)V

    sput-object v0, Lcom/qiniu/android/common/AutoZone;->autoZone:Lcom/qiniu/android/common/AutoZone;

    return-void
.end method

.method public constructor <init>(Lcom/qiniu/android/dns/DnsManager;)V
    .locals 1

    const-string v0, "https://uc.qbox.me"

    .line 31
    invoke-direct {p0, v0, p1}, Lcom/qiniu/android/common/AutoZone;-><init>(Ljava/lang/String;Lcom/qiniu/android/dns/DnsManager;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/qiniu/android/dns/DnsManager;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/qiniu/android/common/Zone;-><init>()V

    .line 27
    new-instance p2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    .line 28
    new-instance p2, Lcom/qiniu/android/http/Client;

    invoke-direct {p2}, Lcom/qiniu/android/http/Client;-><init>()V

    iput-object p2, p0, Lcom/qiniu/android/common/AutoZone;->client:Lcom/qiniu/android/http/Client;

    .line 35
    iput-object p1, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/qiniu/android/common/AutoZone;)Ljava/util/Map;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    return-object p0
.end method

.method private getZoneJsonAsync(Lcom/qiniu/android/common/AutoZone$ZoneIndex;Lcom/qiniu/android/http/CompletionHandler;)V
    .locals 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/query?ak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->bucket:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 40
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->client:Lcom/qiniu/android/http/Client;

    sget-object v1, Lcom/qiniu/android/storage/UpToken;->NULL:Lcom/qiniu/android/storage/UpToken;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, p2}, Lcom/qiniu/android/http/Client;->asyncGet(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;Lcom/qiniu/android/storage/UpToken;Lcom/qiniu/android/http/CompletionHandler;)V

    return-void
.end method

.method private getZoneJsonSync(Lcom/qiniu/android/common/AutoZone$ZoneIndex;)Lcom/qiniu/android/http/ResponseInfo;
    .locals 2

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->ucServer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/v2/query?ak="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->accessKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&bucket="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->bucket:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->client:Lcom/qiniu/android/http/Client;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/qiniu/android/http/Client;->syncGet(Ljava/lang/String;Lcom/qiniu/android/utils/StringMap;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public declared-synchronized frozenDomain(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    if-eqz p1, :cond_2

    .line 150
    :try_start_0
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    .line 154
    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 155
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qiniu/android/common/ZoneInfo;

    .line 156
    iget-object v3, v2, Lcom/qiniu/android/common/ZoneInfo;->upDomainsList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_1
    if-eqz v0, :cond_2

    .line 162
    invoke-virtual {v0, p1}, Lcom/qiniu/android/common/ZoneInfo;->frozenDomain(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 165
    :cond_2
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public preQuery(Ljava/lang/String;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .locals 0

    .line 137
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->getFromToken(Ljava/lang/String;)Lcom/qiniu/android/common/AutoZone$ZoneIndex;

    move-result-object p1

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/qiniu/android/common/AutoZone;->preQueryIndex(Lcom/qiniu/android/common/AutoZone$ZoneIndex;Lcom/qiniu/android/common/Zone$QueryHandler;)V

    return-void
.end method

.method public preQuery(Ljava/lang/String;)Z
    .locals 0

    .line 143
    invoke-static {p1}, Lcom/qiniu/android/common/AutoZone$ZoneIndex;->getFromToken(Ljava/lang/String;)Lcom/qiniu/android/common/AutoZone$ZoneIndex;

    move-result-object p1

    .line 144
    invoke-virtual {p0, p1}, Lcom/qiniu/android/common/AutoZone;->preQueryIndex(Lcom/qiniu/android/common/AutoZone$ZoneIndex;)Z

    move-result p1

    return p1
.end method

.method preQueryIndex(Lcom/qiniu/android/common/AutoZone$ZoneIndex;Lcom/qiniu/android/common/Zone$QueryHandler;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, -0x5

    .line 75
    invoke-interface {p2, p1}, Lcom/qiniu/android/common/Zone$QueryHandler;->onFailure(I)V

    return-void

    .line 78
    :cond_0
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qiniu/android/common/ZoneInfo;

    if-eqz v0, :cond_1

    .line 80
    invoke-interface {p2}, Lcom/qiniu/android/common/Zone$QueryHandler;->onSuccess()V

    return-void

    .line 84
    :cond_1
    new-instance v0, Lcom/qiniu/android/common/AutoZone$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/qiniu/android/common/AutoZone$1;-><init>(Lcom/qiniu/android/common/AutoZone;Lcom/qiniu/android/common/AutoZone$ZoneIndex;Lcom/qiniu/android/common/Zone$QueryHandler;)V

    invoke-direct {p0, p1, v0}, Lcom/qiniu/android/common/AutoZone;->getZoneJsonAsync(Lcom/qiniu/android/common/AutoZone$ZoneIndex;Lcom/qiniu/android/http/CompletionHandler;)V

    return-void
.end method

.method preQueryIndex(Lcom/qiniu/android/common/AutoZone$ZoneIndex;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 108
    iget-object v1, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/common/ZoneInfo;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 113
    :cond_0
    :try_start_0
    invoke-direct {p0, p1}, Lcom/qiniu/android/common/AutoZone;->getZoneJsonSync(Lcom/qiniu/android/common/AutoZone$ZoneIndex;)Lcom/qiniu/android/http/ResponseInfo;

    move-result-object v1

    .line 114
    iget-object v1, v1, Lcom/qiniu/android/http/ResponseInfo;->response:Lorg/json/JSONObject;

    invoke-static {v1}, Lcom/qiniu/android/common/ZoneInfo;->buildFromJson(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object v1

    .line 115
    iget-object v2, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 118
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method queryByToken(Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 5

    const-string v0, ":"

    .line 59
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 60
    aget-object v2, p1, v1

    .line 61
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x2

    aget-object p1, p1, v4

    invoke-static {p1}, Lcom/qiniu/android/utils/UrlSafeBase64;->decode(Ljava/lang/String;)[B

    move-result-object p1

    const-string v4, "utf-8"

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 62
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "scope"

    .line 63
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 64
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, v1

    .line 65
    invoke-virtual {p0, v2, p1}, Lcom/qiniu/android/common/AutoZone;->zoneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized upHost(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/String;
    .locals 0

    monitor-enter p0

    .line 127
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/qiniu/android/common/AutoZone;->queryByToken(Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 129
    invoke-super {p0, p1, p2, p3}, Lcom/qiniu/android/common/Zone;->upHost(Lcom/qiniu/android/common/ZoneInfo;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    .line 131
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method zoneInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/qiniu/android/common/ZoneInfo;
    .locals 1

    .line 50
    new-instance v0, Lcom/qiniu/android/common/AutoZone$ZoneIndex;

    invoke-direct {v0, p1, p2}, Lcom/qiniu/android/common/AutoZone$ZoneIndex;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone;->zones:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/qiniu/android/common/ZoneInfo;

    return-object p1
.end method
