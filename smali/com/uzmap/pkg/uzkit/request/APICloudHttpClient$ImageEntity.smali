.class public Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageEntity"
.end annotation


# static fields
.field public static final BITMAP:I = 0x0

.field public static final FILE:I = 0x1


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;

.field public lastModified:J

.field public local:Ljava/lang/String;

.field public localthumbnail:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    return-void
.end method


# virtual methods
.method public copy(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;)V
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    iput v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->url:Ljava/lang/String;

    iput-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->url:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    iput-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->localthumbnail:Ljava/lang/String;

    iput-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->localthumbnail:Ljava/lang/String;

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    iget-wide v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->lastModified:J

    iput-wide v0, p1, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->lastModified:J

    return-void
.end method

.method public hasThumbnail()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->localthumbnail:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isWell()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public sizeOf()I
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getAllocationByteCount()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    :goto_0
    return v0

    :cond_2
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->type:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Bitmap@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$ImageEntity;->local:Ljava/lang/String;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
