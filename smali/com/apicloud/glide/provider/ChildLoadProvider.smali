.class public Lcom/apicloud/glide/provider/ChildLoadProvider;
.super Ljava/lang/Object;
.source "ChildLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/LoadProvider;
.implements Ljava/lang/Cloneable;


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
        "TA;TT;TZ;TR;>;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end field

.field private encoder:Lcom/apicloud/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end field

.field private final parent:Lcom/apicloud/glide/provider/LoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation
.end field

.field private sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation
.end field

.field private sourceEncoder:Lcom/apicloud/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation
.end field

.field private transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/glide/provider/LoadProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TA;TT;TZ;TR;>;)V"
        }
    .end annotation

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    return-void
.end method


# virtual methods
.method public clone()Lcom/apicloud/glide/provider/ChildLoadProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/provider/ChildLoadProvider<",
            "TA;TT;TZ;TR;>;"
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 151
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 20
    invoke-virtual {p0}, Lcom/apicloud/glide/provider/ChildLoadProvider;->clone()Lcom/apicloud/glide/provider/ChildLoadProvider;

    move-result-object v0

    return-object v0
.end method

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

    .line 90
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

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

    .line 126
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;

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

    .line 35
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getModelLoader()Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v0

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

    .line 102
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;

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

    .line 114
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 117
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getSourceEncoder()Lcom/apicloud/glide/load/Encoder;

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

    .line 138
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    if-eqz v0, :cond_0

    return-object v0

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->parent:Lcom/apicloud/glide/provider/LoadProvider;

    invoke-interface {v0}, Lcom/apicloud/glide/provider/LoadProvider;->getTranscoder()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object v0

    return-object v0
.end method

.method public setCacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-void
.end method

.method public setEncoder(Lcom/apicloud/glide/load/ResourceEncoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "TZ;>;)V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->encoder:Lcom/apicloud/glide/load/ResourceEncoder;

    return-void
.end method

.method public setSourceDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "TT;TZ;>;)V"
        }
    .end annotation

    .line 53
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->sourceDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-void
.end method

.method public setSourceEncoder(Lcom/apicloud/glide/load/Encoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Encoder<",
            "TT;>;)V"
        }
    .end annotation

    .line 82
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->sourceEncoder:Lcom/apicloud/glide/load/Encoder;

    return-void
.end method

.method public setTranscoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;)V"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/apicloud/glide/provider/ChildLoadProvider;->transcoder:Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    return-void
.end method
