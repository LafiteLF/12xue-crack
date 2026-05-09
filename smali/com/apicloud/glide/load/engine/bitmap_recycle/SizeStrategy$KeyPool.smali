.class Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;
.super Lcom/apicloud/glide/load/engine/bitmap_recycle/BaseKeyPool;
.source "SizeStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "KeyPool"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/load/engine/bitmap_recycle/BaseKeyPool<",
        "Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/apicloud/glide/load/engine/bitmap_recycle/BaseKeyPool;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic create()Lcom/apicloud/glide/load/engine/bitmap_recycle/Poolable;
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->create()Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    move-result-object v0

    return-object v0
.end method

.method protected create()Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1

    .line 116
    new-instance v0, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    invoke-direct {v0, p0}, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;-><init>(Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;)V

    return-object v0
.end method

.method public get(I)Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;
    .locals 1

    .line 109
    invoke-virtual {p0}, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$KeyPool;->get()Lcom/apicloud/glide/load/engine/bitmap_recycle/Poolable;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;

    .line 110
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/load/engine/bitmap_recycle/SizeStrategy$Key;->init(I)V

    return-object v0
.end method
