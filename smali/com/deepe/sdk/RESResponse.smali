.class public Lcom/deepe/sdk/RESResponse;
.super Ljava/lang/Object;


# instance fields
.field public data:Ljava/io/InputStream;

.field public encoding:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field private resTags:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/deepe/sdk/RESResponse;-><init>(Ljava/io/InputStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/RESResponse;->data:Ljava/io/InputStream;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/RESResponse;->resTags:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addResTag(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/RESResponse;->resTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/sdk/RESResponse;->resTags:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getResTag()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/sdk/RESResponse;->resTags:Ljava/util/List;

    return-object v0
.end method

.method public setData(Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/RESResponse;->data:Ljava/io/InputStream;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/RESResponse;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/RESResponse;->mimeType:Ljava/lang/String;

    return-void
.end method
