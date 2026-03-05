.class public Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorStringLoader$Factory;
.super Ljava/lang/Object;
.source "FileDescriptorStringLoader.java"

# interfaces
.implements Lcom/apicloud/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorStringLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/load/model/ModelLoaderFactory<",
        "Ljava/lang/String;",
        "Landroid/os/ParcelFileDescriptor;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Landroid/content/Context;Lcom/apicloud/glide/load/model/GenericLoaderFactory;)Lcom/apicloud/glide/load/model/ModelLoader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/apicloud/glide/load/model/GenericLoaderFactory;",
            ")",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "Ljava/lang/String;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation

    .line 26
    new-instance p1, Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorStringLoader;

    const-class v0, Landroid/net/Uri;

    const-class v1, Landroid/os/ParcelFileDescriptor;

    invoke-virtual {p2, v0, v1}, Lcom/apicloud/glide/load/model/GenericLoaderFactory;->buildModelLoader(Ljava/lang/Class;Ljava/lang/Class;)Lcom/apicloud/glide/load/model/ModelLoader;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/apicloud/glide/load/model/file_descriptor/FileDescriptorStringLoader;-><init>(Lcom/apicloud/glide/load/model/ModelLoader;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
