.class public Lcom/apicloud/glide/GenericTranscodeRequest;
.super Lcom/apicloud/glide/GenericRequestBuilder;
.source "GenericTranscodeRequest.java"

# interfaces
.implements Lcom/apicloud/glide/DownloadOptions;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/glide/GenericRequestBuilder<",
        "TModelType;TDataType;TResourceType;TResourceType;>;",
        "Lcom/apicloud/glide/DownloadOptions;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TDataType;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;"
        }
    .end annotation
.end field

.field private final optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

.field private final resourceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/Glide;Ljava/lang/Class;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apicloud/glide/Glide;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lcom/apicloud/glide/manager/RequestTracker;",
            "Lcom/apicloud/glide/manager/Lifecycle;",
            "Lcom/apicloud/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    .line 61
    invoke-static {}, Lcom/apicloud/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    move-object v5, p2

    .line 60
    invoke-static {p2, v9, v10, v11, v0}, Lcom/apicloud/glide/GenericTranscodeRequest;->build(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/LoadProvider;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    move-object/from16 v4, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    invoke-direct/range {v0 .. v7}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;)V

    .line 62
    iput-object v9, v8, Lcom/apicloud/glide/GenericTranscodeRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 63
    iput-object v10, v8, Lcom/apicloud/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 64
    iput-object v11, v8, Lcom/apicloud/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    move-object/from16 v0, p9

    .line 65
    iput-object v0, v8, Lcom/apicloud/glide/GenericTranscodeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    return-void
.end method

.method constructor <init>(Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;TDataType;>;",
            "Ljava/lang/Class<",
            "TDataType;>;",
            "Ljava/lang/Class<",
            "TResourceType;>;",
            "Lcom/apicloud/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 49
    iget-object v0, p2, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-static {}, Lcom/apicloud/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v1

    invoke-static {v0, p3, p4, p5, v1}, Lcom/apicloud/glide/GenericTranscodeRequest;->build(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/LoadProvider;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    .line 51
    iput-object p3, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 52
    iput-object p4, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    .line 53
    iput-object p5, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    .line 54
    iput-object p6, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    return-void
.end method

.method private static build(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/LoadProvider;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            "Z:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/Glide;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Class<",
            "TZ;>;",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 41
    invoke-virtual {p0, p2, p3}, Lcom/apicloud/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/provider/DataLoadProvider;

    move-result-object p0

    .line 42
    new-instance p2, Lcom/apicloud/glide/provider/FixedLoadProvider;

    invoke-direct {p2, p1, p4, p0}, Lcom/apicloud/glide/provider/FixedLoadProvider;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/provider/DataLoadProvider;)V

    return-object p2
.end method

.method private getDownloadOnlyRequest()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 100
    invoke-static {}, Lcom/apicloud/glide/load/resource/transcode/UnitTranscoder;->get()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->glide:Lcom/apicloud/glide/Glide;

    iget-object v2, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    const-class v3, Ljava/io/File;

    invoke-virtual {v1, v2, v3}, Lcom/apicloud/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/provider/DataLoadProvider;

    move-result-object v1

    .line 102
    new-instance v2, Lcom/apicloud/glide/provider/FixedLoadProvider;

    iget-object v3, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    invoke-direct {v2, v3, v0, v1}, Lcom/apicloud/glide/provider/FixedLoadProvider;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/provider/DataLoadProvider;)V

    .line 104
    iget-object v0, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/apicloud/glide/GenericRequestBuilder;

    const-class v3, Ljava/io/File;

    invoke-direct {v1, v2, v3, p0}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/apicloud/glide/Priority;->LOW:Lcom/apicloud/glide/Priority;

    .line 106
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    sget-object v1, Lcom/apicloud/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    .line 107
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    const/4 v1, 0x1

    .line 108
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public downloadOnly(II)Lcom/apicloud/glide/request/FutureTarget;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/request/FutureTarget<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Lcom/apicloud/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;->into(II)Lcom/apicloud/glide/request/FutureTarget;

    move-result-object p1

    return-object p1
.end method

.method public downloadOnly(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/apicloud/glide/request/target/Target<",
            "Ljava/io/File;",
            ">;>(TY;)TY;"
        }
    .end annotation

    .line 89
    invoke-direct {p0}, Lcom/apicloud/glide/GenericTranscodeRequest;->getDownloadOnlyRequest()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TranscodeType:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->glide:Lcom/apicloud/glide/Glide;

    iget-object v1, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    iget-object v2, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->dataClass:Ljava/lang/Class;

    iget-object v3, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->resourceClass:Ljava/lang/Class;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/apicloud/glide/GenericTranscodeRequest;->build(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/LoadProvider;

    move-result-object p1

    .line 81
    iget-object v0, p0, Lcom/apicloud/glide/GenericTranscodeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/apicloud/glide/GenericRequestBuilder;

    invoke-direct {v1, p1, p2, p0}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    return-object p1
.end method
