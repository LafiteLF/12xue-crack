.class public interface abstract Lcom/apicloud/glide/load/Transformation;
.super Ljava/lang/Object;
.source "Transformation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract getId()Ljava/lang/String;
.end method

.method public abstract transform(Lcom/apicloud/glide/load/engine/Resource;II)Lcom/apicloud/glide/load/engine/Resource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "TT;>;II)",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "TT;>;"
        }
    .end annotation
.end method
