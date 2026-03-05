.class interface abstract Lcom/apicloud/glide/load/engine/EngineJobListener;
.super Ljava/lang/Object;
.source "EngineJobListener.java"


# virtual methods
.method public abstract onEngineJobCancelled(Lcom/apicloud/glide/load/engine/EngineJob;Lcom/apicloud/glide/load/Key;)V
.end method

.method public abstract onEngineJobComplete(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/EngineResource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            "Lcom/apicloud/glide/load/engine/EngineResource<",
            "*>;)V"
        }
    .end annotation
.end method
