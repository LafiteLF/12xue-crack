.class public Lcom/apicloud/glide/GifTypeRequest;
.super Lcom/apicloud/glide/GifRequestBuilder;
.source "GifTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/glide/GifRequestBuilder<",
        "TModelType;>;"
    }
.end annotation


# instance fields
.field private final optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

.field private final streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/apicloud/glide/GenericRequestBuilder;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/apicloud/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 41
    iget-object v0, p1, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    const-class v1, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lcom/apicloud/glide/GifTypeRequest;->buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;

    move-result-object v0

    const-class v1, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-direct {p0, v0, v1, p1}, Lcom/apicloud/glide/GifRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    .line 42
    iput-object p2, p0, Lcom/apicloud/glide/GifTypeRequest;->streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 43
    iput-object p3, p0, Lcom/apicloud/glide/GifTypeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    .line 46
    invoke-virtual {p0}, Lcom/apicloud/glide/GifTypeRequest;->crossFade()Lcom/apicloud/glide/GifRequestBuilder;

    return-void
.end method

.method private static buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/Glide;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "TR;>;)",
            "Lcom/apicloud/glide/provider/FixedLoadProvider<",
            "TA;",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p3, :cond_1

    .line 32
    const-class p3, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, p3, p2}, Lcom/apicloud/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p3

    .line 34
    :cond_1
    const-class p2, Ljava/io/InputStream;

    const-class v0, Lcom/apicloud/glide/load/resource/gif/GifDrawable;

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/provider/DataLoadProvider;

    move-result-object p0

    .line 36
    new-instance p2, Lcom/apicloud/glide/provider/FixedLoadProvider;

    invoke-direct {p2, p1, p3, p0}, Lcom/apicloud/glide/provider/FixedLoadProvider;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/provider/DataLoadProvider;)V

    return-object p2
.end method


# virtual methods
.method public toBytes()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "[B>;"
        }
    .end annotation

    .line 79
    new-instance v0, Lcom/apicloud/glide/load/resource/transcode/GifDrawableBytesTranscoder;

    invoke-direct {v0}, Lcom/apicloud/glide/load/resource/transcode/GifDrawableBytesTranscoder;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/glide/GifTypeRequest;->transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "TR;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;",
            "Ljava/io/InputStream;",
            "Lcom/apicloud/glide/load/resource/gif/GifDrawable;",
            "TR;>;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/apicloud/glide/GifTypeRequest;->glide:Lcom/apicloud/glide/Glide;

    iget-object v1, p0, Lcom/apicloud/glide/GifTypeRequest;->streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    invoke-static {v0, v1, p2, p1}, Lcom/apicloud/glide/GifTypeRequest;->buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;

    move-result-object p1

    .line 65
    iget-object v0, p0, Lcom/apicloud/glide/GifTypeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/apicloud/glide/GenericRequestBuilder;

    invoke-direct {v1, p1, p2, p0}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    return-object p1
.end method
