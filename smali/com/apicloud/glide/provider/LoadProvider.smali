.class public interface abstract Lcom/apicloud/glide/provider/LoadProvider;
.super Ljava/lang/Object;
.source "LoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/DataLoadProvider;


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
        "Lcom/apicloud/glide/provider/DataLoadProvider<",
        "TT;TZ;>;"
    }
.end annotation


# virtual methods
.method public abstract getModelLoader()Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract getTranscoder()Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TZ;TR;>;"
        }
    .end annotation
.end method
