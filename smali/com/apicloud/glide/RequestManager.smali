.class public Lcom/apicloud/glide/RequestManager;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/apicloud/glide/manager/LifecycleListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/RequestManager$RequestManagerConnectivityListener;,
        Lcom/apicloud/glide/RequestManager$OptionsApplier;,
        Lcom/apicloud/glide/RequestManager$GenericModelRequest;,
        Lcom/apicloud/glide/RequestManager$ImageModelRequest;,
        Lcom/apicloud/glide/RequestManager$VideoModelRequest;,
        Lcom/apicloud/glide/RequestManager$DefaultOptions;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final glide:Lcom/apicloud/glide/Glide;

.field private final lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

.field private options:Lcom/apicloud/glide/RequestManager$DefaultOptions;

.field private final optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

.field private final requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

.field private final treeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/manager/RequestManagerTreeNode;)V
    .locals 6

    .line 53
    new-instance v4, Lcom/apicloud/glide/manager/RequestTracker;

    invoke-direct {v4}, Lcom/apicloud/glide/manager/RequestTracker;-><init>()V

    new-instance v5, Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;

    invoke-direct {v5}, Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/apicloud/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/manager/RequestManagerTreeNode;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/manager/RequestManagerTreeNode;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/apicloud/glide/RequestManager;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    .line 60
    iput-object p3, p0, Lcom/apicloud/glide/RequestManager;->treeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

    .line 61
    iput-object p4, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    .line 62
    invoke-static {p1}, Lcom/apicloud/glide/Glide;->get(Landroid/content/Context;)Lcom/apicloud/glide/Glide;

    move-result-object p3

    iput-object p3, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    .line 63
    new-instance p3, Lcom/apicloud/glide/RequestManager$OptionsApplier;

    invoke-direct {p3, p0}, Lcom/apicloud/glide/RequestManager$OptionsApplier;-><init>(Lcom/apicloud/glide/RequestManager;)V

    iput-object p3, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    .line 65
    new-instance p3, Lcom/apicloud/glide/RequestManager$RequestManagerConnectivityListener;

    invoke-direct {p3, p4}, Lcom/apicloud/glide/RequestManager$RequestManagerConnectivityListener;-><init>(Lcom/apicloud/glide/manager/RequestTracker;)V

    invoke-virtual {p5, p1, p3}, Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;->build(Landroid/content/Context;Lcom/apicloud/glide/manager/ConnectivityMonitor$ConnectivityListener;)Lcom/apicloud/glide/manager/ConnectivityMonitor;

    move-result-object p1

    .line 71
    invoke-static {}, Lcom/apicloud/glide/util/Util;->isOnBackgroundThread()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 72
    new-instance p3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p4

    invoke-direct {p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p4, Lcom/apicloud/glide/RequestManager$1;

    invoke-direct {p4, p0, p2}, Lcom/apicloud/glide/RequestManager$1;-><init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/manager/Lifecycle;)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 79
    :cond_0
    invoke-interface {p2, p0}, Lcom/apicloud/glide/manager/Lifecycle;->addListener(Lcom/apicloud/glide/manager/LifecycleListener;)V

    .line 81
    :goto_0
    invoke-interface {p2, p1}, Lcom/apicloud/glide/manager/Lifecycle;->addListener(Lcom/apicloud/glide/manager/LifecycleListener;)V

    return-void
.end method

.method static synthetic access$000(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0

    .line 43
    invoke-static {p0}, Lcom/apicloud/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/apicloud/glide/RequestManager;)Landroid/content/Context;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/Glide;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    return-object p0
.end method

.method static synthetic access$300(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/manager/RequestTracker;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    return-object p0
.end method

.method static synthetic access$400(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/manager/Lifecycle;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    return-object p0
.end method

.method static synthetic access$500(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/RequestManager$OptionsApplier;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    return-object p0
.end method

.method static synthetic access$800(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/RequestManager$DefaultOptions;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager;->options:Lcom/apicloud/glide/RequestManager$DefaultOptions;

    return-object p0
.end method

.method private static getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 625
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/apicloud/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v3

    .line 626
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    .line 627
    invoke-static {p1, v0}, Lcom/apicloud/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v4

    if-eqz p1, :cond_1

    if-nez v3, :cond_1

    if-eqz v4, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ". You must provide a Model of a type for which there is a registered ModelLoader, if you are using a custom model, you must first call Glide#register with a ModelLoaderFactory for your custom model class"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 634
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v10, Lcom/apicloud/glide/DrawableTypeRequest;

    iget-object v5, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    iget-object v7, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    iget-object v8, p0, Lcom/apicloud/glide/RequestManager;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    iget-object v9, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    move-object v1, v10

    move-object v2, p1

    invoke-direct/range {v1 .. v9}, Lcom/apicloud/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v10}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 621
    invoke-direct {p0, p1}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object p1

    return-object p1
.end method

.method public fromBytes()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .line 576
    const-class v0, [B

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    new-instance v1, Lcom/apicloud/glide/signature/StringSignature;

    .line 577
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/apicloud/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableTypeRequest;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/apicloud/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    .line 578
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 579
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public fromFile()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 454
    const-class v0, Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromMediaStore()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 413
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/apicloud/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v0

    .line 414
    new-instance v3, Lcom/apicloud/glide/load/model/stream/MediaStoreStreamLoader;

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    invoke-direct {v3, v1, v0}, Lcom/apicloud/glide/load/model/stream/MediaStoreStreamLoader;-><init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V

    .line 415
    const-class v0, Landroid/net/Uri;

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    .line 416
    invoke-static {v0, v1}, Lcom/apicloud/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v4

    .line 418
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v10, Lcom/apicloud/glide/DrawableTypeRequest;

    const-class v2, Landroid/net/Uri;

    iget-object v5, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    iget-object v6, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    iget-object v7, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    iget-object v8, p0, Lcom/apicloud/glide/RequestManager;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    iget-object v9, p0, Lcom/apicloud/glide/RequestManager;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/apicloud/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V

    invoke-virtual {v0, v10}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public fromResource()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 492
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager;->context:Landroid/content/Context;

    .line 493
    invoke-static {v1}, Lcom/apicloud/glide/signature/ApplicationVersionSignature;->obtain(Landroid/content/Context;)Lcom/apicloud/glide/load/Key;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/DrawableTypeRequest;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object v0
.end method

.method public fromString()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 304
    const-class v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromUri()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 339
    const-class v0, Landroid/net/Uri;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public fromUrl()Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 527
    const-class v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 136
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 137
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/RequestTracker;->isPaused()Z

    move-result v0

    return v0
.end method

.method public load(Landroid/net/Uri;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 317
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromUri()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load(Ljava/io/File;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 431
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromFile()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Integer;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 466
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromResource()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 598
    invoke-static {p1}, Lcom/apicloud/glide/RequestManager;->getSafeClass(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/apicloud/glide/RequestManager;->loadGeneric(Ljava/lang/Class;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load(Ljava/lang/String;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 284
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromString()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load(Ljava/net/URL;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 509
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromUrl()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load([B)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .line 561
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromBytes()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public load([BLjava/lang/String;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/lang/String;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "[B>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 549
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/RequestManager;->load([B)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object p1

    new-instance v0, Lcom/apicloud/glide/signature/StringSignature;

    invoke-direct {v0, p2}, Lcom/apicloud/glide/signature/StringSignature;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/glide/DrawableTypeRequest;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public loadFromMediaStore(Landroid/net/Uri;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 381
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->fromMediaStore()Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public loadFromMediaStore(Landroid/net/Uri;Ljava/lang/String;JI)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "JI)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 368
    new-instance v0, Lcom/apicloud/glide/signature/MediaStoreSignature;

    invoke-direct {v0, p2, p3, p4, p5}, Lcom/apicloud/glide/signature/MediaStoreSignature;-><init>(Ljava/lang/String;JI)V

    .line 369
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/RequestManager;->loadFromMediaStore(Landroid/net/Uri;)Lcom/apicloud/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/apicloud/glide/DrawableTypeRequest;->signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/RequestTracker;->clearRequests()V

    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v0}, Lcom/apicloud/glide/Glide;->clearMemory()V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 203
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->resumeRequests()V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 212
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->pauseRequests()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/Glide;->trimMemory(I)V

    return-void
.end method

.method public pauseRequests()V
    .locals 1

    .line 147
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 148
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/RequestTracker;->pauseRequests()V

    return-void
.end method

.method public pauseRequestsRecursive()V
    .locals 2

    .line 165
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 166
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->pauseRequests()V

    .line 167
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->treeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/apicloud/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/glide/RequestManager;

    .line 168
    invoke-virtual {v1}, Lcom/apicloud/glide/RequestManager;->pauseRequests()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resumeRequests()V
    .locals 1

    .line 179
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 180
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/RequestTracker;->resumeRequests()V

    return-void
.end method

.method public resumeRequestsRecursive()V
    .locals 2

    .line 189
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    .line 190
    invoke-virtual {p0}, Lcom/apicloud/glide/RequestManager;->resumeRequests()V

    .line 191
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager;->treeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

    invoke-interface {v0}, Lcom/apicloud/glide/manager/RequestManagerTreeNode;->getDescendants()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/glide/RequestManager;

    .line 192
    invoke-virtual {v1}, Lcom/apicloud/glide/RequestManager;->resumeRequests()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setDefaultOptions(Lcom/apicloud/glide/RequestManager$DefaultOptions;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/apicloud/glide/RequestManager;->options:Lcom/apicloud/glide/RequestManager$DefaultOptions;

    return-void
.end method

.method public using(Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;)Lcom/apicloud/glide/RequestManager$GenericModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Lcom/apicloud/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>;"
        }
    .end annotation

    .line 238
    new-instance v0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;

    invoke-direct {v0, p0, p1, p2}, Lcom/apicloud/glide/RequestManager$GenericModelRequest;-><init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;)V

    return-object v0
.end method

.method public using(Lcom/apicloud/glide/load/model/stream/StreamByteArrayLoader;)Lcom/apicloud/glide/RequestManager$ImageModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/model/stream/StreamByteArrayLoader;",
            ")",
            "Lcom/apicloud/glide/RequestManager$ImageModelRequest<",
            "[B>;"
        }
    .end annotation

    .line 260
    new-instance v0, Lcom/apicloud/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/glide/RequestManager$ImageModelRequest;-><init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public using(Lcom/apicloud/glide/load/model/stream/StreamModelLoader;)Lcom/apicloud/glide/RequestManager$ImageModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/model/stream/StreamModelLoader<",
            "TT;>;)",
            "Lcom/apicloud/glide/RequestManager$ImageModelRequest<",
            "TT;>;"
        }
    .end annotation

    .line 249
    new-instance v0, Lcom/apicloud/glide/RequestManager$ImageModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/glide/RequestManager$ImageModelRequest;-><init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-object v0
.end method

.method public using(Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorModelLoader;)Lcom/apicloud/glide/RequestManager$VideoModelRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
            "TT;>;)",
            "Lcom/apicloud/glide/RequestManager$VideoModelRequest<",
            "TT;>;"
        }
    .end annotation

    .line 271
    new-instance v0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/glide/RequestManager$VideoModelRequest;-><init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-object v0
.end method
