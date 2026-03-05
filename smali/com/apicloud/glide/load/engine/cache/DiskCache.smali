.class public interface abstract Lcom/apicloud/glide/load/engine/cache/DiskCache;
.super Ljava/lang/Object;
.source "DiskCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/engine/cache/DiskCache$Writer;,
        Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;
    }
.end annotation


# virtual methods
.method public abstract clear()V
.end method

.method public abstract delete(Lcom/apicloud/glide/load/Key;)V
.end method

.method public abstract get(Lcom/apicloud/glide/load/Key;)Ljava/io/File;
.end method

.method public abstract put(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/cache/DiskCache$Writer;)V
.end method
