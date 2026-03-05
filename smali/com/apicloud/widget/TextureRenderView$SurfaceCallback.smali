.class final Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SurfaceCallback"
.end annotation


# instance fields
.field private mHeight:I

.field private mIsFormatChanged:Z

.field private volatile mOwnSurfaceTexture:Z

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

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private mWeakRenderView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/apicloud/widget/TextureRenderView;",
            ">;"
        }
    .end annotation
.end field

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/apicloud/widget/TextureRenderView;)V
    .locals 1

    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    .line 230
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    .line 233
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public addRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 4

    .line 241
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 246
    new-instance v0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/TextureRenderView;

    invoke-direct {v0, v1}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    .line 248
    iget v1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 251
    :goto_0
    iget-boolean v1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    .line 253
    new-instance v0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/widget/TextureRenderView;

    invoke-direct {v0, v1}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    :cond_1
    const/4 v1, 0x0

    .line 255
    iget v2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    iget v3, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V

    :cond_2
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 266
    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 267
    iget-object p2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "TextureRenderView"

    const-string p2, "!!!!!Too bad, textureview in callback is released. function will not work normally"

    .line 269
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    :cond_0
    iget-object p2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {p2}, Lcom/apicloud/widget/TextureRenderView;->getLastSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p2

    if-nez p2, :cond_1

    .line 273
    iget-object p2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {p2, p1}, Lcom/apicloud/widget/TextureRenderView;->setLastSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 277
    iput-boolean p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 278
    iput p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 279
    iput p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 281
    new-instance p2, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object p3, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apicloud/widget/TextureRenderView;

    invoke-direct {p2, p3}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    .line 282
    iget-object p3, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/IRenderView$IRenderCallback;

    .line 283
    invoke-interface {v0, p2, p1, p1}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceCreated(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;II)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 302
    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x0

    .line 303
    iput-boolean p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 304
    iput p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 305
    iput p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 307
    new-instance p1, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/TextureRenderView;

    invoke-direct {p1, v0}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    .line 308
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    .line 309
    invoke-interface {v1, p1}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceDestroyed(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;)V

    goto :goto_0

    .line 312
    :cond_0
    iget-boolean p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return p1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3

    .line 289
    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 p1, 0x1

    .line 290
    iput-boolean p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mIsFormatChanged:Z

    .line 291
    iput p2, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWidth:I

    .line 292
    iput p3, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mHeight:I

    .line 294
    new-instance p1, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;

    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mWeakRenderView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/widget/TextureRenderView;

    invoke-direct {p1, v0}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;-><init>(Lcom/apicloud/widget/TextureRenderView;)V

    .line 295
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

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

    const/4 v2, 0x0

    .line 296
    invoke-interface {v1, p1, v2, p2, p3}, Lcom/apicloud/widget/IRenderView$IRenderCallback;->onSurfaceChanged(Lcom/apicloud/widget/IRenderView$ISurfaceHolder;III)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public removeRenderCallback(Lcom/apicloud/widget/IRenderView$IRenderCallback;)V
    .locals 1

    .line 260
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mRenderCallbackMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setOwnSurfaceTexture(Z)V
    .locals 0

    .line 237
    iput-boolean p1, p0, Lcom/apicloud/widget/TextureRenderView$SurfaceCallback;->mOwnSurfaceTexture:Z

    return-void
.end method
