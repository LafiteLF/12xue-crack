.class Lcom/apicloud/ijkplayer/RootView$7;
.super Ljava/lang/Object;
.source "RootView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/RootView;->onTotalCacheUpdate(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/RootView;

.field final synthetic val$milliSeconds:J


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/RootView;J)V
    .locals 0

    .line 825
    iput-object p1, p0, Lcom/apicloud/ijkplayer/RootView$7;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iput-wide p2, p0, Lcom/apicloud/ijkplayer/RootView$7;->val$milliSeconds:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 829
    iget-object v0, p0, Lcom/apicloud/ijkplayer/RootView$7;->this$0:Lcom/apicloud/ijkplayer/RootView;

    iget-wide v1, p0, Lcom/apicloud/ijkplayer/RootView$7;->val$milliSeconds:J

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/apicloud/ijkplayer/RootView;->setCache(I)V

    return-void
.end method
