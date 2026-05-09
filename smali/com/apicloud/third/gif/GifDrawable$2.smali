.class Lcom/apicloud/third/gif/GifDrawable$2;
.super Lcom/apicloud/third/gif/SafeRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/third/gif/GifDrawable;->seekTo(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/third/gif/GifDrawable;

.field private final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/apicloud/third/gif/GifDrawable;Lcom/apicloud/third/gif/GifDrawable;I)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/third/gif/GifDrawable$2;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    iput p3, p0, Lcom/apicloud/third/gif/GifDrawable$2;->val$position:I

    invoke-direct {p0, p2}, Lcom/apicloud/third/gif/SafeRunnable;-><init>(Lcom/apicloud/third/gif/GifDrawable;)V

    return-void
.end method


# virtual methods
.method public doWork()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable$2;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mNativeInfoHandle:Lcom/apicloud/third/gif/GifInfoHandle;

    iget v1, p0, Lcom/apicloud/third/gif/GifDrawable$2;->val$position:I

    iget-object v2, p0, Lcom/apicloud/third/gif/GifDrawable$2;->this$0:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v2, v2, Lcom/apicloud/third/gif/GifDrawable;->mBuffer:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/third/gif/GifInfoHandle;->seekToTime(ILandroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/apicloud/third/gif/GifDrawable$2;->mGifDrawable:Lcom/apicloud/third/gif/GifDrawable;

    iget-object v0, v0, Lcom/apicloud/third/gif/GifDrawable;->mInvalidationHandler:Lcom/apicloud/third/gif/InvalidationHandler;

    const/4 v1, -0x1

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/apicloud/third/gif/InvalidationHandler;->sendEmptyMessageAtTime(IJ)Z

    return-void
.end method
