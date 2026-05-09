.class Lcom/apicloud/third/gif/GifDrawable$1;
.super Lcom/apicloud/third/gif/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/third/gif/GifDrawable;->reset()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/third/gif/GifDrawable;


# direct methods
.method constructor <init>(Lcom/apicloud/third/gif/GifDrawable;Lcom/apicloud/third/gif/GifDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable$1;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    invoke-direct {p0, p2}, Lcom/apicloud/third/gif/SafeRunnable;-><init>(Lcom/apicloud/third/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable$1;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifInfoHandle;->reset()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable$1;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    invoke-virtual {v0}, Lcom/apicloud/third/gif/GifDrawable;->start()V

    :cond_0
    return-void
.end method
