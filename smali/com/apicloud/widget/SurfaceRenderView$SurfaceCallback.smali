.class final Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mFormat:I

.field private mHeight:I

.field private mIsFormatChanged:Z

.field private mRenderCallbackMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/apicloud/widget/IRenderView$IRenderCallback;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mWeakSurfaceView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apicloud/widget/SurfaceRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/apicloud/widget/SurfaceRenderView;)V
    .locals 1

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 191
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_0

    .line 200
    new-instance v0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/SurfaceRenderView;

    iget-object v2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 202
    iget v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-boolean v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 207
    new-instance v0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/SurfaceRenderView;

    iget-object v2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {v0, v1, v2}, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 209
    :cond_1
    iget v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    iget v2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V

    :cond_2
    return-void
.end method

.method public removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 247
    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x1

    .line 248
    iput-boolean p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 249
    iput p2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 250
    iput p3, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 251
    iput p4, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 255
    new-instance p1, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/SurfaceRenderView;

    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p1, v0, v1}, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 256
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 257
    invoke-interface {v1, p1, p2, p3, p4}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 219
    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 221
    iput v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 222
    iput v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 223
    iput v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 224
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "surfaceCreated: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "SurfaceRenderView"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p1, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/SurfaceRenderView;

    iget-object v2, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p1, v1, v2}, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 226
    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 227
    invoke-interface {v2, p1, v0, v0}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    const/4 p1, 0x0

    .line 233
    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 p1, 0x0

    .line 234
    iput-boolean p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 235
    iput p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mFormat:I

    .line 236
    iput p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWidth:I

    .line 237
    iput p1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mHeight:I

    .line 239
    new-instance p1, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;

    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mWeakSurfaceView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/SurfaceRenderView;

    iget-object v1, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-direct {p1, v0, v1}, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V

    .line 240
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 241
    invoke-interface {v1, p1}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    :cond_0
    return-void
.end method
