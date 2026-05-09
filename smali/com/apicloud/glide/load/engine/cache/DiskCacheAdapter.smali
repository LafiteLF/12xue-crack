.class public Lcom/apicloud/glide/load/engine/cache/DiskCacheAdapter;
.super Ljava/lang/Object;
.source "DiskCacheAdapter.java"

# interfaces
.implements Lcom/apicloud/glide/load/engine/cache/DiskCache;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public delete(Lcom/apicloud/glide/load/Key;)V
    .locals 0

    return-void
.end method

.method public get(Lcom/apicloud/glide/load/Key;)Ljava/io/File;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public put(Lcom/apicloud/glide/load/Key;Lcom/apicloud/glide/load/engine/cache/DiskCache$Writer;)V
    .locals 0

    return-void
.end method
