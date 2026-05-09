.class public final Lorg/simple/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/simple/eventbus/EventBus$EventDispatcher;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String;

.field private static sDefaultBus:Lorg/simple/eventbus/EventBus;


# instance fields
.field private mDesc:Ljava/lang/String;

.field mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

.field mLocalEvents:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lorg/simple/eventbus/EventType;",
            ">;>;"
        }
    .end annotation
.end field

.field mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

.field private final mSubcriberMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    const-class v0, Lorg/simple/eventbus/EventBus;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/simple/eventbus/EventBus;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 104
    sget-object v0, Lorg/simple/eventbus/EventBus;->DESCRIPTOR:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/simple/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Lorg/simple/eventbus/EventBus;->DESCRIPTOR:Ljava/lang/String;

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    .line 73
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    .line 78
    new-instance v0, Lorg/simple/eventbus/EventBus$1;

    invoke-direct {v0, p0}, Lorg/simple/eventbus/EventBus$1;-><init>(Lorg/simple/eventbus/EventBus;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    .line 87
    new-instance v0, Lorg/simple/eventbus/EventBus$EventDispatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/simple/eventbus/EventBus$EventDispatcher;-><init>(Lorg/simple/eventbus/EventBus;Lorg/simple/eventbus/EventBus$EventDispatcher;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    .line 93
    new-instance v0, Lorg/simple/eventbus/SubsciberMethodHunter;

    iget-object v1, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    invoke-direct {v0, v1}, Lorg/simple/eventbus/SubsciberMethodHunter;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    .line 113
    iput-object p1, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lorg/simple/eventbus/EventBus;)Ljava/util/Map;
    .locals 0

    .line 73
    iget-object p0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    return-object p0
.end method

.method public static getDefault()Lorg/simple/eventbus/EventBus;
    .locals 2

    .line 120
    sget-object v0, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    if-nez v0, :cond_1

    .line 121
    const-class v0, Lorg/simple/eventbus/EventBus;

    monitor-enter v0

    .line 122
    :try_start_0
    sget-object v1, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    if-nez v1, :cond_0

    .line 123
    new-instance v1, Lorg/simple/eventbus/EventBus;

    invoke-direct {v1}, Lorg/simple/eventbus/EventBus;-><init>()V

    sput-object v1, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    .line 121
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 127
    :cond_1
    :goto_0
    sget-object v0, Lorg/simple/eventbus/EventBus;->sDefaultBus:Lorg/simple/eventbus/EventBus;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 1

    monitor-enter p0

    .line 238
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 239
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescriptor()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEventQueue()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue<",
            "Lorg/simple/eventbus/EventType;",
            ">;"
        }
    .end annotation

    .line 231
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    return-object v0
.end method

.method public getSubscriberMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/simple/eventbus/EventType;",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lorg/simple/eventbus/Subscription;",
            ">;>;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mSubcriberMap:Ljava/util/Map;

    return-object v0
.end method

.method public post(Ljava/lang/Object;)V
    .locals 1

    const-string v0, "default_tag"

    .line 166
    invoke-virtual {p0, p1, v0}, Lorg/simple/eventbus/EventBus;->post(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public post(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 3

    .line 176
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mLocalEvents:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    new-instance v1, Lorg/simple/eventbus/EventType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/simple/eventbus/EventType;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    .line 177
    iget-object p2, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    invoke-virtual {p2, p1}, Lorg/simple/eventbus/EventBus$EventDispatcher;->dispatchEvents(Ljava/lang/Object;)V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 142
    :cond_0
    monitor-enter p0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->findSubcribeMethods(Ljava/lang/Object;)V

    .line 142
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setAsyncEventHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 213
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mAsyncEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public setMatchPolicy(Lorg/simple/eventbus/matchpolicy/MatchPolicy;)V
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mMatchPolicy:Lorg/simple/eventbus/matchpolicy/MatchPolicy;

    return-void
.end method

.method public setPostThreadHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mPostThreadHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public setUIThreadEventHandler(Lorg/simple/eventbus/handler/EventHandler;)V
    .locals 1

    .line 195
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mDispatcher:Lorg/simple/eventbus/EventBus$EventDispatcher;

    iput-object p1, v0, Lorg/simple/eventbus/EventBus$EventDispatcher;->mUIThreadEventHandler:Lorg/simple/eventbus/handler/EventHandler;

    return-void
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 155
    :cond_0
    monitor-enter p0

    .line 156
    :try_start_0
    iget-object v0, p0, Lorg/simple/eventbus/EventBus;->mMethodHunter:Lorg/simple/eventbus/SubsciberMethodHunter;

    invoke-virtual {v0, p1}, Lorg/simple/eventbus/SubsciberMethodHunter;->removeMethodsFromMap(Ljava/lang/Object;)V

    .line 155
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
