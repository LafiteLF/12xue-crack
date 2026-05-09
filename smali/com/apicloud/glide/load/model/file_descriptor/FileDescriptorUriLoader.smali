.class public Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorUriLoader;
.super Lcom/apicloud/glide/load/model/UriLoader;
.source "FileDescriptorUriLoader.java"

# interfaces
.implements Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorUriLoader$Factory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/load/model/UriLoader<",
        "Landroid/os/ParcelFileDescriptor;",
        ">;",
        "Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorModelLoader<",
        "Landroid/net/Uri;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 39
    const-class v0, Lcom/apicloud/glide/load/model/GlideUrl;

    invoke-static {v0, p1}, Lcom/apicloud/glide/Glide;->buildFileDescriptorModelLoader(Ljava/lang/Class;Landroid/content/Context;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorUriLoader;-><init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "Lcom/apicloud/glide/load/model/GlideUrl;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/apicloud/glide/load/model/UriLoader;-><init>(Landroid/content/Context;Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-void
.end method


# virtual methods
.method protected getAssetPathFetcher(Landroid/content/Context;Ljava/lang/String;)Lcom/apicloud/glide/load/data/DataFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/apicloud/glide/load/data/DataFetcher<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 53
    new-instance v0, Lcom/apicloud/glide/load/data/FileDescriptorAssetPathFetcher;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/data/FileDescriptorAssetPathFetcher;-><init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    return-object v0
.end method

.method protected getLocalUriFetcher(Landroid/content/Context;Landroid/net/Uri;)Lcom/apicloud/glide/load/data/DataFetcher;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            ")",
            "Lcom/apicloud/glide/load/data/DataFetcher<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/apicloud/glide/load/data/FileDescriptorLocalUriFetcher;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/load/data/FileDescriptorLocalUriFetcher;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    return-object v0
.end method
