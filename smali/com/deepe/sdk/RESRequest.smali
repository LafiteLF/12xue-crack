.class public Lcom/deepe/sdk/RESRequest;
.super Ljava/lang/Object;


# instance fields
.field private final hasGesture:Z

.field private final isForMainFrame:Z

.field private loadedResTag:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final method:Ljava/lang/String;

.field private final requestHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final url:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;ZZLjava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/RESRequest;->url:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/deepe/sdk/RESRequest;->isForMainFrame:Z

    iput-boolean p3, p0, Lcom/deepe/sdk/RESRequest;->hasGesture:Z

    iput-object p4, p0, Lcom/deepe/sdk/RESRequest;->method:Ljava/lang/String;

    iput-object p5, p0, Lcom/deepe/sdk/RESRequest;->requestHeaders:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getMethod()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/RESRequest;->method:Ljava/lang/String;

    return-object v0
.end method

.method public getRequestHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/sdk/RESRequest;->requestHeaders:Ljava/util/Map;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/RESRequest;->url:Ljava/lang/String;

    return-object v0
.end method

.method public hasGesture()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/sdk/RESRequest;->hasGesture:Z

    return v0
.end method

.method public isForMainFrame()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/sdk/RESRequest;->isForMainFrame:Z

    return v0
.end method

.method public isLoaded(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/RESRequest;->loadedResTag:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setLoadedResTag(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/deepe/sdk/RESRequest;->loadedResTag:Ljava/util/List;

    return-void
.end method
