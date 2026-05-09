.class Lcom/apicloud/third/gif/GifTextureView$RenderThread$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/third/gif/GifTextureView$RenderThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

.field private final synthetic val$gifTextureView:Lcom/apicloud/third/gif/GifTextureView;


# direct methods
.method constructor <init>(Lcom/apicloud/third/gif/GifTextureView$RenderThread;Lcom/apicloud/third/gif/GifTextureView;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/third/gif/GifTextureView$RenderThread$1;->this$1:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    iput-object p2, p0, Lcom/apicloud/third/gif/GifTextureView$RenderThread$1;->val$gifTextureView:Lcom/apicloud/third/gif/GifTextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/third/gif/GifTextureView$RenderThread$1;->val$gifTextureView:Lcom/apicloud/third/gif/GifTextureView;

    iget-object v1, p0, Lcom/apicloud/third/gif/GifTextureView$RenderThread$1;->this$1:Lcom/apicloud/third/gif/GifTextureView$RenderThread;

    invoke-static {v1}, Lcom/apicloud/third/gif/GifTextureView$RenderThread;->access$0(Lcom/apicloud/third/gif/GifTextureView$RenderThread;)Lcom/apicloud/third/gif/GifInfoHandle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/third/gif/GifTextureView;->access$3(Lcom/apicloud/third/gif/GifTextureView;Lcom/apicloud/third/gif/GifInfoHandle;)V

    return-void
.end method
