.class public interface abstract Lcom/apicloud/glide/load/engine/cache/MemoryCache$ResourceRemovedListener;
.super Ljava/lang/Object;
.source "MemoryCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/load/engine/cache/MemoryCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ResourceRemovedListener"
.end annotation


# virtual methods
.method public abstract onResourceRemoved(Lcom/apicloud/glide/load/engine/Resource;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/Resource<",
            "*>;)V"
        }
    .end annotation
.end method
