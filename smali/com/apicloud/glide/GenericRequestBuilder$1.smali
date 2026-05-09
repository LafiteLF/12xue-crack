.class Lcom/apicloud/glide/GenericRequestBuilder$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/glide/GenericRequestBuilder;->into(II)Lcom/apicloud/glide/request/FutureTarget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/glide/GenericRequestBuilder;

.field final synthetic val$target:Lcom/apicloud/glide/request/RequestFutureTarget;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/GenericRequestBuilder;Lcom/apicloud/glide/request/RequestFutureTarget;)V
    .locals 0

    .line 725
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder$1;->this$0:Lcom/apicloud/glide/GenericRequestBuilder;

    iput-object p2, p0, Lcom/apicloud/glide/GenericRequestBuilder$1;->val$target:Lcom/apicloud/glide/request/RequestFutureTarget;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 728
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder$1;->val$target:Lcom/apicloud/glide/request/RequestFutureTarget;

    invoke-virtual {v0}, Lcom/apicloud/glide/request/RequestFutureTarget;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 729
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder$1;->this$0:Lcom/apicloud/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder$1;->val$target:Lcom/apicloud/glide/request/RequestFutureTarget;

    invoke-virtual {v0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;

    :cond_0
    return-void
.end method
