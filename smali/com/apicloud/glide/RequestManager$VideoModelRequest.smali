.class public final Lcom/apicloud/glide/RequestManager$VideoModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "VideoModelRequest"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final loader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/apicloud/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TT;",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 653
    iput-object p1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 654
    iput-object p2, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->loader:Lcom/apicloud/glide/load/model/ModelLoader;

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableTypeRequest;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/apicloud/glide/DrawableTypeRequest<",
            "TT;>;"
        }
    .end annotation

    .line 658
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-static {v0}, Lcom/apicloud/glide/RequestManager;->access$500(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/RequestManager$OptionsApplier;

    move-result-object v0

    new-instance v10, Lcom/apicloud/glide/DrawableTypeRequest;

    invoke-static {p1}, Lcom/apicloud/glide/RequestManager;->access$000(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v2

    iget-object v4, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->loader:Lcom/apicloud/glide/load/model/ModelLoader;

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    .line 659
    invoke-static {v1}, Lcom/apicloud/glide/RequestManager;->access$100(Lcom/apicloud/glide/RequestManager;)Landroid/content/Context;

    move-result-object v5

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-static {v1}, Lcom/apicloud/glide/RequestManager;->access$200(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/Glide;

    move-result-object v6

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-static {v1}, Lcom/apicloud/glide/RequestManager;->access$300(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/manager/RequestTracker;

    move-result-object v7

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-static {v1}, Lcom/apicloud/glide/RequestManager;->access$400(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/manager/Lifecycle;

    move-result-object v8

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$VideoModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-static {v1}, Lcom/apicloud/glide/RequestManager;->access$500(Lcom/apicloud/glide/RequestManager;)Lcom/apicloud/glide/RequestManager$OptionsApplier;

    move-result-object v9

    const/4 v3, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lcom/apicloud/glide/DrawableTypeRequest;-><init>(Ljava/lang/Class;Lcom/apicloud/glide/load/model/ModelLoader;Lcom/apicloud/glide/load/model/ModelLoader;Landroid/content/Context;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/RequestManager$OptionsApplier;)V

    .line 658
    invoke-virtual {v0, v10}, Lcom/apicloud/glide/RequestManager$OptionsApplier;->apply(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/DrawableTypeRequest;

    .line 660
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/DrawableTypeRequest;->load(Ljava/lang/Object;)Lcom/apicloud/glide/DrawableRequestBuilder;

    move-result-object p1

    check-cast p1, Lcom/apicloud/glide/DrawableTypeRequest;

    return-object p1
.end method
