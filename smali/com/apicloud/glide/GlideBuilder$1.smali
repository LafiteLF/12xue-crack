.class Lcom/apicloud/glide/GlideBuilder$1;
.super Ljava/lang/Object;
.source "GlideBuilder.java"

# interfaces
.implements Lcom/apicloud/glide/load/engine/cache/DiskCache$Factory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/glide/GlideBuilder;->setDiskCache(Lcom/apicloud/glide/load/engine/cache/DiskCache;)Lcom/apicloud/glide/GlideBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/glide/GlideBuilder;

.field final synthetic val$diskCache:Lcom/apicloud/glide/load/engine/cache/DiskCache;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/GlideBuilder;Lcom/apicloud/glide/load/engine/cache/DiskCache;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/apicloud/glide/GlideBuilder$1;->this$0:Lcom/apicloud/glide/GlideBuilder;

    iput-object p2, p0, Lcom/apicloud/glide/GlideBuilder$1;->val$diskCache:Lcom/apicloud/glide/load/engine/cache/DiskCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/apicloud/glide/load/engine/cache/DiskCache;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/apicloud/glide/GlideBuilder$1;->val$diskCache:Lcom/apicloud/glide/load/engine/cache/DiskCache;

    return-object v0
.end method
