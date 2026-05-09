.class public Lcom/apicloud/glide/provider/FixedLoadProvider;
.super Ljava/lang/Object;
.source "FixedLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/LoadProvider;


# annotations
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
        ">",
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/provider/LoadProvider<",
        "TA;TT;TZ;TR;>;"
    }
.end annotation


# instance fields
.field private final dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field private final transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/provider/DataLoadProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;",
            "Lcom/apicloud/glide/provider/DataLoadProvider<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    .line 30
    iput-object p1, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    if-eqz p2, :cond_1

    .line 35
    iput-object p2, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz p3, :cond_0

    .line 40
    iput-object p3, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;

    return-void

    .line 38
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "DataLoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Transcoder must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ModelLoader must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/DataLoadProvider;->getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation

    .line 88
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/DataLoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public getModelLoader()Lcom/apicloud/glide/load/model/ModelLoader;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    return-object v0
.end method

.method public getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceEncoder()Lcom/apicloud/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->dataLoadProvider:Lcom/apicloud/glide/provider/DataLoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/DataLoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

    move-result-object v0

    return-object v0
.end method

.method public getTranscoder()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Lcom/apicloud/glide/provider/FixedLoadProvider;->transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    return-object v0
.end method
