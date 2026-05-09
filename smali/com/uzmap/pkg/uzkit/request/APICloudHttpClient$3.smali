.class Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/n$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->requestQueueInitialize()Lcom/deepe/c/j/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/deepe/c/j/n$b<",
        "Lcom/uzmap/pkg/uzkit/request/Request;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$3;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRequestFinished(Lcom/deepe/c/j/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "Lcom/uzmap/pkg/uzkit/request/Request;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient$3;->a:Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {v0, p1}, Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;->access$1(Lcom/uzmap/pkg/uzkit/request/APICloudHttpClient;Ljava/lang/Runnable;)V

    return-void
.end method
