.class public final Lcom/apicloud/third/gif/InputSource$AssetSource;
.super Lcom/apicloud/third/gif/InputSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/third/gif/InputSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssetSource"
.end annotation


# instance fields
.field private final mAssetManager:Landroid/content/res/AssetManager;

.field private final mAssetName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/apicloud/third/gif/InputSource;-><init>(Lcom/apicloud/third/gif/InputSource;)V

    iput-object p1, p0, Lcom/apicloud/third/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iput-object p2, p0, Lcom/apicloud/third/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method open()Lcom/apicloud/third/gif/GifInfoHandle;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/apicloud/third/gif/GifInfoHandle;

    iget-object v1, p0, Lcom/apicloud/third/gif/InputSource$AssetSource;->mAssetManager:Landroid/content/res/AssetManager;

    iget-object v2, p0, Lcom/apicloud/third/gif/InputSource$AssetSource;->mAssetName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/apicloud/third/gif/GifInfoHandle;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    return-object v0
.end method
