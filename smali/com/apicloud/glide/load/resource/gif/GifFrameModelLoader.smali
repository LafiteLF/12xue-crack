.class Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader;
.super Ljava/lang/Object;
.source "GifFrameModelLoader.java"

# interfaces
.implements Lcom/apicloud/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/load/model/ModelLoader<",
        "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
        "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getResourceFetcher(Lcom/apicloud/glide/gifdecoder/GifDecoder;II)Lcom/apicloud/glide/load/data/DataFetcher;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            "II)",
            "Lcom/apicloud/glide/load/data/DataFetcher<",
            "Lcom/apicloud/glide/gifdecoder/GifDecoder;",
            ">;"
        }
    .end annotation

    .line 12
    new-instance p2, Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;

    invoke-direct {p2, p1}, Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader$GifFrameDataFetcher;-><init>(Lcom/apicloud/glide/gifdecoder/GifDecoder;)V

    return-object p2
.end method

.method public bridge synthetic getResourceFetcher(Ljava/lang/Object;II)Lcom/apicloud/glide/load/data/DataFetcher;
    .locals 0

    .line 8
    check-cast p1, Lcom/apicloud/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/apicloud/glide/load/resource/gif/GifFrameModelLoader;->getResourceFetcher(Lcom/apicloud/glide/gifdecoder/GifDecoder;II)Lcom/apicloud/glide/load/data/DataFetcher;

    move-result-object p1

    return-object p1
.end method
