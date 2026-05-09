.class public Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;
.super Ljava/lang/Object;
.source "StreamFileDataLoadProvider.java"

# interfaces
.implements Lcom/apicloud/glide/provider/DataLoadProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/provider/DataLoadProvider<",
        "Ljava/io/InputStream;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final ERROR_DECODER:Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;


# instance fields
.field private final cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private final encoder:Lcom/apicloud/glide/load/Encoder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 19
    new-instance v0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;-><init>(Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$1;)V

    sput-object v0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/apicloud/glide/load/resource/file/FileDecoder;

    invoke-direct {v0}, Lcom/apicloud/glide/load/resource/file/FileDecoder;-><init>()V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    .line 26
    new-instance v0, Lcom/apicloud/glide/load/model/StreamEncoder;

    invoke-direct {v0}, Lcom/apicloud/glide/load/model/StreamEncoder;-><init>()V

    iput-object v0, p0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lcom/apicloud/glide/load/Encoder;

    return-void
.end method


# virtual methods
.method public getCacheDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->cacheDecoder:Lcom/apicloud/glide/load/ResourceDecoder;

    return-object v0
.end method

.method public getEncoder()Lcom/apicloud/glide/load/ResourceEncoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 46
    invoke-static {}, Lcom/apicloud/glide/load/resource/NullResourceEncoder;->get()Lcom/apicloud/glide/load/resource/NullResourceEncoder;

    move-result-object v0

    return-object v0
.end method

.method public getSourceDecoder()Lcom/apicloud/glide/load/ResourceDecoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 36
    sget-object v0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->ERROR_DECODER:Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider$ErrorSourceDecoder;

    return-object v0
.end method

.method public getSourceEncoder()Lcom/apicloud/glide/load/Encoder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/load/Encoder<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/apicloud/glide/load/resource/file/StreamFileDataLoadProvider;->encoder:Lcom/apicloud/glide/load/Encoder;

    return-object v0
.end method
