.class public Lcom/apicloud/glide/BitmapTypeRequest;
.super Lcom/apicloud/glide/BitmapRequestBuilder;
.source "BitmapTypeRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/apicloud/glide/BitmapRequestBuilder<",
        "TModelType;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final fileDescriptorModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field private final glide:Lcom/apicloud/glide/Glide;

.field private final optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

.field private final streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/apicloud/glide/GenericRequestBuilder;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TModelType;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/apicloud/glide/RequestManager$OptionsApplier;",
            ")V"
        }
    .end annotation

    .line 52
    iget-object v0, p1, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    const-class v1, Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    invoke-static {v0, p2, p3, v1, v2}, Lcom/apicloud/glide/BitmapTypeRequest;->buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;

    move-result-object v0

    const-class v1, Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v1, p1}, Lcom/apicloud/glide/BitmapRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    .line 54
    iput-object p2, p0, Lcom/apicloud/glide/BitmapTypeRequest;->streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 55
    iput-object p3, p0, Lcom/apicloud/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 56
    iget-object p1, p1, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    iput-object p1, p0, Lcom/apicloud/glide/BitmapTypeRequest;->glide:Lcom/apicloud/glide/Glide;

    .line 57
    iput-object p4, p0, Lcom/apicloud/glide/BitmapTypeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    return-void
.end method

.method private static buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/Glide;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;",
            "Ljava/io/InputStream;",
            ">;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Ljava/lang/Class<",
            "TR;>;",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "TR;>;)",
            "Lcom/apicloud/glide/provider/FixedLoadProvider<",
            "TA;",
            "Lcom/apicloud/glide/load/model/ImageVideoWrapper;",
            "Landroid/graphics/Bitmap;",
            "TR;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-nez p4, :cond_1

    .line 38
    const-class p4, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p4, p3}, Lcom/apicloud/glide/Glide;->buildTranscoder(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;

    move-result-object p4

    .line 40
    :cond_1
    const-class p3, Lcom/apicloud/glide/load/model/ImageVideoWrapper;

    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p3, v0}, Lcom/apicloud/glide/Glide;->buildDataProvider(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/provider/DataLoadProvider;

    move-result-object p0

    .line 42
    new-instance p3, Lcom/apicloud/glide/load/model/ImageVideoModelLoader;

    invoke-direct {p3, p1, p2}, Lcom/apicloud/glide/load/model/ImageVideoModelLoader;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;)V

    .line 45
    new-instance p1, Lcom/apicloud/glide/provider/FixedLoadProvider;

    invoke-direct {p1, p3, p4, p0}, Lcom/apicloud/glide/provider/FixedLoadProvider;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Lcom/apicloud/glide/provider/DataLoadProvider;)V

    return-object p1
.end method


# virtual methods
.method public toBytes()Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;[B>;"
        }
    .end annotation

    .line 84
    new-instance v0, Lcom/apicloud/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0}, Lcom/apicloud/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>()V

    const-class v1, [B

    invoke-virtual {p0, v0, v1}, Lcom/apicloud/glide/BitmapTypeRequest;->transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public toBytes(Landroid/graphics/Bitmap$CompressFormat;I)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap$CompressFormat;",
            "I)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;[B>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/apicloud/glide/load/resource/transcode/BitmapBytesTranscoder;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/resource/transcode/BitmapBytesTranscoder;-><init>(Landroid/graphics/Bitmap$CompressFormat;I)V

    const-class p1, [B

    invoke-virtual {p0, v0, p1}, Lcom/apicloud/glide/BitmapTypeRequest;->transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/BitmapRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public transcode(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;Ljava/lang/Class;)Lcom/apicloud/glide/BitmapRequestBuilder;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "Landroid/graphics/Bitmap;",
            "TR;>;",
            "Ljava/lang/Class<",
            "TR;>;)",
            "Lcom/apicloud/glide/BitmapRequestBuilder<",
            "TModelType;TR;>;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/apicloud/glide/BitmapTypeRequest;->optionsApplier:Lcom/apicloud/glide/RequestManager$OptionsApplier;

    new-instance v1, Lcom/apicloud/glide/BitmapRequestBuilder;

    iget-object v2, p0, Lcom/apicloud/glide/BitmapTypeRequest;->glide:Lcom/apicloud/glide/Glide;

    iget-object v3, p0, Lcom/apicloud/glide/BitmapTypeRequest;->streamModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    iget-object v4, p0, Lcom/apicloud/glide/BitmapTypeRequest;->fileDescriptorModelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 71
    invoke-static {v2, v3, v4, p2, p1}, Lcom/apicloud/glide/BitmapTypeRequest;->buildProvider(Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/provider/FixedLoadProvider;

    move-result-object p1

    invoke-direct {v1, p1, p2, p0}, Lcom/apicloud/glide/BitmapRequestBuilder;-><init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V

    .line 70
    invoke-virtual {v0, v1}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/BitmapRequestBuilder;

    return-object p1
.end method
