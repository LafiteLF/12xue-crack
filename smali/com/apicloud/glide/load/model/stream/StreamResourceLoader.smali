.class public Lcom/apicloud/glide/load/model/stream/StreamResourceLoader;
.super Lcom/apicloud/glide/load/model/ResourceLoader;
.source "StreamResourceLoader.java"

# interfaces
.implements Lcom/apicloud/glide/load/model/stream/StreamModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/model/stream/StreamResourceLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/load/model/ResourceLoader<",
        "Ljava/io/InputStream;",
        ">;",
        "Lcom/apicloud/glide/load/model/stream/StreamModelLoader<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 36
    const-class v0, Landroid/net/Uri;

    invoke-static {v0, p1}, Lcom/apicloud/glide/Glide;->buildStreamModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/glide/load/model/stream/StreamResourceLoader;-><init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "Landroid/net/Uri;",
            "Ljava/io/InputStream;",
            ">;)V"
        }
    .end annotation

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/apicloud/glide/load/model/ResourceLoader;-><init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-void
.end method
