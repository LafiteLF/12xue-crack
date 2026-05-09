.class public interface abstract Lcom/apicloud/glide/provider/DataLoadProvider;
.super Ljava/lang/Object;
.source "DataLoadProvider.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TZ;>;"
        }
    .end annotation
.end method

.method public abstract getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "TZ;>;"
        }
    .end annotation
.end method

.method public abstract getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "TT;TZ;>;"
        }
    .end annotation
.end method

.method public abstract getSourceEncoder()Lcom/apicloud/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/Encoder<",
            "TT;>;"
        }
    .end annotation
.end method
