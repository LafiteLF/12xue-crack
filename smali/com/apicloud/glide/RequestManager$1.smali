.class Lcom/apicloud/glide/RequestManager$1;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/glide/RequestManager;-><init>(Landroid/content/Context;Lcom/apicloud/glide/manager/Lifecycle;Lcom/apicloud/glide/manager/RequestManagerTreeNode;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/ConnectivityMonitorFactory;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/glide/RequestManager;

.field final synthetic val$lifecycle:Lcom/apicloud/glide/manager/Lifecycle;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/manager/Lifecycle;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/apicloud/glide/RequestManager$1;->this$0:Lcom/apicloud/glide/RequestManager;

    iput-object p2, p0, Lcom/apicloud/glide/RequestManager$1;->val$lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 75
    iget-object v0, p0, Lcom/apicloud/glide/RequestManager$1;->val$lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    iget-object v1, p0, Lcom/apicloud/glide/RequestManager$1;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-interface {v0, v1}, Lcom/apicloud/glide/manager/Lifecycle;->addListener(Lcom/apicloud/glide/manager/LifecycleListener;)V

    return-void
.end method
