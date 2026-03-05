.class public Lcom/apicloud/glide/load/engine/Engine;
.super Ljava/lang/Object;
.source "Engine.java"

# interfaces
.implements Lcom/apicloud/glide/load/engine/EngineJobListener;
.implements Lcom/apicloud/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.implements Lcom/apicloud/glide/load/engine/EngineResource$ResourceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;,
        Lcom/apicloud/glide/load/engine/Engine$RefQueueIdleHandler;,
        Lcom/apicloud/glide/load/engine/Engine$ResourceWeakReference;,
        Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;,
        Lcom/apicloud/glide/load/engine/Engine$LoadStatus;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Engine"


# instance fields
.field private final activeResources:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apicloud/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;>;>;"
        }
    .end annotation
.end field

.field private final cache:Lcom/apicloud/glide/load/engine/cache/MemoryCache;

.field private final diskCacheProvider:Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;

.field private final engineJobFactory:Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;

.field private final jobs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apicloud/glide/load/Key;",
            "Lcom/apicloud/glide/load/engine/EngineJob;",
            ">;"
        }
    .end annotation
.end field

.field private final keyFactory:Lcom/apicloud/glide/load/engine/EngineKeyFactory;

.field private final resourceRecycler:Lcom/apicloud/glide/load/engine/ResourceRecycler;

.field private resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/load/engine/cache/MemoryCache;Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;)V
    .locals 10

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 63
    invoke-direct/range {v0 .. v9}, Lcom/apicloud/glide/load/engine/Engine;-><init>(Lcom/apicloud/glide/load/engine/cache/MemoryCache;Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/apicloud/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;Lcom/apicloud/glide/load/engine/ResourceRecycler;)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/glide/load/engine/cache/MemoryCache;Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Ljava/util/Map;Lcom/apicloud/glide/load/engine/EngineKeyFactory;Ljava/util/Map;Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;Lcom/apicloud/glide/load/engine/ResourceRecycler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/cache/MemoryCache;",
            "Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/Map<",
            "Lcom/apicloud/glide/load/Key;",
            "Lcom/apicloud/glide/load/engine/EngineJob;",
            ">;",
            "Lcom/apicloud/glide/load/engine/EngineKeyFactory;",
            "Ljava/util/Map<",
            "Lcom/apicloud/glide/load/Key;",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;>;>;",
            "Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;",
            "Lcom/apicloud/glide/load/engine/ResourceRecycler;",
            ")V"
        }
    .end annotation

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/apicloud/glide/load/engine/Engine;->cache:Lcom/apicloud/glide/load/engine/cache/MemoryCache;

    .line 72
    new-instance v0, Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-direct {v0, p2}, Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;-><init>(Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;)V

    iput-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->diskCacheProvider:Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;

    if-nez p7, :cond_0

    .line 75
    new-instance p7, Ljava/util/HashMap;

    invoke-direct {p7}, Ljava/util/HashMap;-><init>()V

    .line 77
    :cond_0
    iput-object p7, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    if-nez p6, :cond_1

    .line 80
    new-instance p6, Lcom/apicloud/glide/load/engine/EngineKeyFactory;

    invoke-direct {p6}, Lcom/apicloud/glide/load/engine/EngineKeyFactory;-><init>()V

    .line 82
    :cond_1
    iput-object p6, p0, Lcom/apicloud/glide/load/engine/Engine;->keyFactory:Lcom/apicloud/glide/load/engine/EngineKeyFactory;

    if-nez p5, :cond_2

    .line 85
    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    .line 87
    :cond_2
    iput-object p5, p0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    if-nez p8, :cond_3

    .line 90
    new-instance p8, Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;

    invoke-direct {p8, p3, p4, p0}, Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;-><init>(Ljava/util/concurrent/ExecutorService;Ljava/util/concurrent/ExecutorService;Lcom/apicloud/glide/load/engine/EngineJobListener;)V

    .line 92
    :cond_3
    iput-object p8, p0, Lcom/apicloud/glide/load/engine/Engine;->engineJobFactory:Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;

    if-nez p9, :cond_4

    .line 95
    new-instance p9, Lcom/apicloud/glide/load/engine/ResourceRecycler;

    invoke-direct {p9}, Lcom/apicloud/glide/load/engine/ResourceRecycler;-><init>()V

    .line 97
    :cond_4
    iput-object p9, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceRecycler:Lcom/apicloud/glide/load/engine/ResourceRecycler;

    .line 99
    invoke-interface {p1, p0}, Lcom/apicloud/glide/load/engine/cache/MemoryCache;->setResourceRemovedListener(Lcom/apicloud/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;)V

    return-void
.end method

.method private getEngineResourceFromCache(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/load/engine/EngineResource;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            ")",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->cache:Lcom/apicloud/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1}, Lcom/apicloud/glide/load/engine/cache/MemoryCache;->remove(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/load/engine/Resource;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 237
    :cond_0
    instance-of v0, p1, Lcom/apicloud/glide/load/engine/EngineResource;

    if-eqz v0, :cond_1

    .line 239
    check-cast p1, Lcom/apicloud/glide/load/engine/EngineResource;

    goto :goto_0

    .line 241
    :cond_1
    new-instance v0, Lcom/apicloud/glide/load/engine/EngineResource;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/apicloud/glide/load/engine/EngineResource;-><init>(Lcom/apicloud/glide/load/engine/Resource;Z)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method

.method private getReferenceQueue()Ljava/lang/ref/ReferenceQueue;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/ReferenceQueue<",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;>;"
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    if-nez v0, :cond_0

    .line 303
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    .line 304
    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v0

    .line 305
    new-instance v1, Lcom/apicloud/glide/load/engine/Engine$RefQueueIdleHandler;

    iget-object v2, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    iget-object v3, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, v2, v3}, Lcom/apicloud/glide/load/engine/Engine$RefQueueIdleHandler;-><init>(Ljava/util/Map;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Landroid/os/MessageQueue;->addIdleHandler(Landroid/os/MessageQueue$IdleHandler;)V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceReferenceQueue:Ljava/lang/ref/ReferenceQueue;

    return-object v0
.end method

.method private loadFromActiveResources(Lcom/apicloud/glide/load/Key;Z)Lcom/apicloud/glide/load/engine/EngineResource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            "Z)",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    .line 204
    :cond_0
    iget-object p2, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_2

    .line 206
    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Lcom/apicloud/glide/load/engine/EngineResource;

    if-eqz v0, :cond_1

    .line 208
    invoke-virtual {v0}, Lcom/apicloud/glide/load/engine/EngineResource;->acquire()V

    goto :goto_0

    .line 210
    :cond_1
    iget-object p2, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object v0
.end method

.method private loadFromCache(Lcom/apicloud/glide/load/Key;Z)Lcom/apicloud/glide/load/engine/EngineResource;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            "Z)",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 222
    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/glide/load/engine/Engine;->getEngineResourceFromCache(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/load/engine/EngineResource;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 224
    invoke-virtual {p2}, Lcom/apicloud/glide/load/engine/EngineResource;->acquire()V

    .line 225
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/apicloud/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/apicloud/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/apicloud/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p2
.end method

.method private static logWithTimeAndKey(Ljava/lang/String;JLcom/apicloud/glide/load/Key;)V
    .locals 1

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Lcom/apicloud/glide/util/LogTime;->getElapsedMillis(J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p0, "ms, key: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Engine"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public clearDiskCache()V
    .locals 1

    .line 298
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->diskCacheProvider:Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;

    invoke-virtual {v0}, Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;->getDiskCache()Lcom/apicloud/glide/load/engine/cache/DiskCache;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/glide/load/engine/cache/DiskCache;->clear()V

    return-void
.end method

.method public load(Lcom/apicloud/glide/load/Key;IILcom/apicloud/glide/load/data/DataFetcher;Lcom/apicloud/glide/provider/DataLoadProvider;Lcom/apicloud/glide/load/Transformation;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/Priority;ZLcom/apicloud/glide/load/engine/DiskCacheStrategy;Lcom/apicloud/glide/request/ResourceCallback;)Lcom/apicloud/glide/load/engine/Engine$LoadStatus;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/Key;",
            "II",
            "Lcom/apicloud/glide/load/data/DataFetcher<",
            "TT;>;",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "TT;TZ;>;",
            "Lcom/apicloud/glide/load/Transformation<",
            "TZ;>;",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;",
            "Lcom/apicloud/glide/Priority;",
            "Z",
            "Lcom/apicloud/glide/load/engine/DiskCacheStrategy;",
            "Lcom/apicloud/glide/request/ResourceCallback;",
            ")",
            "Lcom/apicloud/glide/load/engine/Engine$LoadStatus;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p9

    move-object/from16 v2, p11

    .line 145
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 146
    invoke-static {}, Lcom/apicloud/glide/util/LogTime;->getLogTime()J

    move-result-wide v3

    .line 148
    invoke-interface/range {p4 .. p4}, Lcom/apicloud/glide/load/data/DataFetcher;->getId()Ljava/lang/String;

    move-result-object v6

    .line 149
    iget-object v5, v0, Lcom/apicloud/glide/load/engine/Engine;->keyFactory:Lcom/apicloud/glide/load/engine/EngineKeyFactory;

    invoke-interface/range {p5 .. p5}, Lcom/apicloud/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v10

    .line 150
    invoke-interface/range {p5 .. p5}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v11

    invoke-interface/range {p5 .. p5}, Lcom/apicloud/glide/provider/DataLoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

    move-result-object v13

    .line 151
    invoke-interface/range {p5 .. p5}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

    move-result-object v15

    move-object/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v12, p6

    move-object/from16 v14, p7

    .line 149
    invoke-virtual/range {v5 .. v15}, Lcom/apicloud/glide/load/engine/EngineKeyFactory;->buildKey(Ljava/lang/String;Lcom/apicloud/glide/load/Key;IILcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/ResourceDecoder;Lcom/apicloud/glide/load/Transformation;Lcom/apicloud/glide/load/ResourceEncoder;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/load/engine/EngineKey;

    move-result-object v5

    .line 153
    invoke-direct {v0, v5, v1}, Lcom/apicloud/glide/load/engine/Engine;->loadFromCache(Lcom/apicloud/glide/load/Key;Z)Lcom/apicloud/glide/load/engine/EngineResource;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x2

    const-string v9, "Engine"

    if-eqz v6, :cond_1

    .line 155
    invoke-interface {v2, v6}, Lcom/apicloud/glide/request/ResourceCallback;->onResourceReady(Lcom/apicloud/glide/load/engine/Resource;)V

    .line 156
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Loaded resource from cache"

    .line 157
    invoke-static {v1, v3, v4, v5}, Lcom/apicloud/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/apicloud/glide/load/Key;)V

    :cond_0
    return-object v7

    .line 162
    :cond_1
    invoke-direct {v0, v5, v1}, Lcom/apicloud/glide/load/engine/Engine;->loadFromActiveResources(Lcom/apicloud/glide/load/Key;Z)Lcom/apicloud/glide/load/engine/EngineResource;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 164
    invoke-interface {v2, v6}, Lcom/apicloud/glide/request/ResourceCallback;->onResourceReady(Lcom/apicloud/glide/load/engine/Resource;)V

    .line 165
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Loaded resource from active resources"

    .line 166
    invoke-static {v1, v3, v4, v5}, Lcom/apicloud/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/apicloud/glide/load/Key;)V

    :cond_2
    return-object v7

    .line 171
    :cond_3
    iget-object v6, v0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/apicloud/glide/load/engine/EngineJob;

    if-eqz v6, :cond_5

    .line 173
    invoke-virtual {v6, v2}, Lcom/apicloud/glide/load/engine/EngineJob;->addCallback(Lcom/apicloud/glide/request/ResourceCallback;)V

    .line 174
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "Added to existing load"

    .line 175
    invoke-static {v1, v3, v4, v5}, Lcom/apicloud/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/apicloud/glide/load/Key;)V

    .line 177
    :cond_4
    new-instance v1, Lcom/apicloud/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v1, v2, v6}, Lcom/apicloud/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/apicloud/glide/request/ResourceCallback;Lcom/apicloud/glide/load/engine/EngineJob;)V

    return-object v1

    .line 180
    :cond_5
    iget-object v6, v0, Lcom/apicloud/glide/load/engine/Engine;->engineJobFactory:Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;

    invoke-virtual {v6, v5, v1}, Lcom/apicloud/glide/load/engine/Engine$EngineJobFactory;->build(Lcom/apicloud/glide/load/Key;Z)Lcom/apicloud/glide/load/engine/EngineJob;

    move-result-object v1

    .line 181
    new-instance v6, Lcom/apicloud/glide/load/engine/DecodeJob;

    iget-object v7, v0, Lcom/apicloud/glide/load/engine/Engine;->diskCacheProvider:Lcom/apicloud/glide/load/engine/Engine$LazyDiskCacheProvider;

    move-object/from16 v16, v6

    move-object/from16 v17, v5

    move/from16 v18, p2

    move/from16 v19, p3

    move-object/from16 v20, p4

    move-object/from16 v21, p5

    move-object/from16 v22, p6

    move-object/from16 v23, p7

    move-object/from16 v24, v7

    move-object/from16 v25, p10

    move-object/from16 v26, p8

    invoke-direct/range {v16 .. v26}, Lcom/apicloud/glide/load/engine/DecodeJob;-><init>(Lcom/apicloud/glide/load/engine/EngineKey;IILcom/apicloud/glide/load/data/DataFetcher;Lcom/apicloud/glide/provider/DataLoadProvider;Lcom/apicloud/glide/load/Transformation;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/load/engine/DecodeJob$DiskCacheProvider;Lcom/apicloud/glide/load/engine/DiskCacheStrategy;Lcom/apicloud/glide/Priority;)V

    .line 183
    new-instance v7, Lcom/apicloud/glide/load/engine/EngineRunnable;

    move-object/from16 v10, p8

    invoke-direct {v7, v1, v6, v10}, Lcom/apicloud/glide/load/engine/EngineRunnable;-><init>(Lcom/apicloud/glide/load/engine/EngineRunnable$EngineRunnableManager;Lcom/apicloud/glide/load/engine/DecodeJob;Lcom/apicloud/glide/Priority;)V

    .line 184
    iget-object v6, v0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v6, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-virtual {v1, v2}, Lcom/apicloud/glide/load/engine/EngineJob;->addCallback(Lcom/apicloud/glide/request/ResourceCallback;)V

    .line 186
    invoke-virtual {v1, v7}, Lcom/apicloud/glide/load/engine/EngineJob;->start(Lcom/apicloud/glide/load/engine/EngineRunnable;)V

    .line 188
    invoke-static {v9, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "Started new load"

    .line 189
    invoke-static {v6, v3, v4, v5}, Lcom/apicloud/glide/load/engine/Engine;->logWithTimeAndKey(Ljava/lang/String;JLcom/apicloud/glide/load/Key;)V

    .line 191
    :cond_6
    new-instance v3, Lcom/apicloud/glide/load/engine/Engine$LoadStatus;

    invoke-direct {v3, v2, v1}, Lcom/apicloud/glide/load/engine/Engine$LoadStatus;-><init>(Lcom/apicloud/glide/request/ResourceCallback;Lcom/apicloud/glide/load/engine/EngineJob;)V

    return-object v3
.end method

.method public onEngineJobCancelled(Lcom/apicloud/glide/load/engine/EngineJob;Lcom/apicloud/glide/load/Key;)V
    .locals 1

    .line 273
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 274
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/load/engine/EngineJob;

    .line 275
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 276
    iget-object p1, p0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public onEngineJobComplete(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation

    .line 258
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    if-eqz p2, :cond_0

    .line 261
    invoke-virtual {p2, p1, p0}, Lcom/apicloud/glide/load/engine/EngineResource;->setResourceListener(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource$ResourceListener;)V

    .line 263
    invoke-virtual {p2}, Lcom/apicloud/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    new-instance v1, Lcom/apicloud/glide/load/engine/Engine$ResourceWeakReference;

    invoke-direct {p0}, Lcom/apicloud/glide/load/engine/Engine;->getReferenceQueue()Ljava/lang/ref/ReferenceQueue;

    move-result-object v2

    invoke-direct {v1, p1, p2, v2}, Lcom/apicloud/glide/load/engine/Engine$ResourceWeakReference;-><init>(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    :cond_0
    iget-object p2, p0, Lcom/apicloud/glide/load/engine/Engine;->jobs:Ljava/util/Map;

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onResourceReleased(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource;)V
    .locals 1

    .line 288
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 289
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->activeResources:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    invoke-virtual {p2}, Lcom/apicloud/glide/load/engine/EngineResource;->isCacheable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->cache:Lcom/apicloud/glide/load/engine/cache/MemoryCache;

    invoke-interface {v0, p1, p2}, Lcom/apicloud/glide/load/engine/cache/MemoryCache;->put(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/Resource;)Lcom/apicloud/glide/load/engine/Resource;

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceRecycler:Lcom/apicloud/glide/load/engine/ResourceRecycler;

    invoke-virtual {p1, p2}, Lcom/apicloud/glide/load/engine/ResourceRecycler;->recycle(Lcom/apicloud/glide/load/engine/Resource;)V

    :goto_0
    return-void
.end method

.method public onResourceRemoved(Lcom/apicloud/glide/load/engine/Resource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation

    .line 282
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 283
    iget-object v0, p0, Lcom/apicloud/glide/load/engine/Engine;->resourceRecycler:Lcom/apicloud/glide/load/engine/ResourceRecycler;

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/load/engine/ResourceRecycler;->recycle(Lcom/apicloud/glide/load/engine/Resource;)V

    return-void
.end method

.method public release(Lcom/apicloud/glide/load/engine/Resource;)V
    .locals 1

    .line 247
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 248
    instance-of v0, p1, Lcom/apicloud/glide/load/engine/EngineResource;

    if-eqz v0, :cond_0

    .line 249
    check-cast p1, Lcom/apicloud/glide/load/engine/EngineResource;

    invoke-virtual {p1}, Lcom/apicloud/glide/load/engine/EngineResource;->release()V

    return-void

    .line 251
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot release anything but an EngineResource"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
