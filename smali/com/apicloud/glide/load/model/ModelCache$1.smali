.class Lcom/apicloud/glide/load/model/ModelCache$1;
.super Lcom/apicloud/glide/util/LruCache;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/glide/load/model/ModelCache;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/util/LruCache<",
        "Lcom/apicloud/glide/load/model/ModelCache$ModelKey<",
        "TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/glide/load/model/ModelCache;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/load/model/ModelCache;I)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/apicloud/glide/load/model/ModelCache$1;->this$0:Lcom/apicloud/glide/load/model/ModelCache;

    invoke-direct {p0, p2}, Lcom/apicloud/glide/util/LruCache;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected onItemEvicted(Lcom/apicloud/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/model/ModelCache$ModelKey<",
            "TA;>;TB;)V"
        }
    .end annotation

    .line 29
    invoke-virtual {p1}, Lcom/apicloud/glide/load/model/ModelCache$ModelKey;->release()V

    return-void
.end method

.method protected bridge synthetic onItemEvicted(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p1, Lcom/apicloud/glide/load/model/ModelCache$ModelKey;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/glide/load/model/ModelCache$1;->onItemEvicted(Lcom/apicloud/glide/load/model/ModelCache$ModelKey;Ljava/lang/Object;)V

    return-void
.end method
