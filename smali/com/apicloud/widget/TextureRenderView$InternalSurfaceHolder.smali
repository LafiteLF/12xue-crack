.class final Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "TextureRenderView.java"

# interfaces
.implements Lcom/apicloud/widget/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/TextureRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mTextureView:Lcom/apicloud/widget/TextureRenderView;


# direct methods
.method public constructor <init>(Lcom/apicloud/widget/TextureRenderView;)V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput-object p1, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 2

    if-eqz p1, :cond_3

    .line 160
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v0}, Lcom/apicloud/widget/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 166
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v1}, Lcom/apicloud/widget/TextureRenderView;->getCurrentMediaPlayerCode()I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 168
    invoke-virtual {p0}, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->openSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setSurface(Landroid/view/Surface;)V

    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v0}, Lcom/apicloud/widget/TextureRenderView;->getLastSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v1}, Lcom/apicloud/widget/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 172
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v0}, Lcom/apicloud/widget/TextureRenderView;->getLastSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/apicloud/widget/TextureRenderView;->setSurfaceTexture(Landroid/graphics/SurfaceTexture;)V

    .line 175
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/apicloud/widget/TextureRenderView;->setCurrentMediaPlayerCode(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public getRenderView()Lcom/apicloud/widget/IRenderView;
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 2

    .line 185
    new-instance v0, Landroid/view/Surface;

    iget-object v1, p0, Lcom/apicloud/widget/TextureRenderView$InternalSurfaceHolder;->mTextureView:Lcom/apicloud/widget/TextureRenderView;

    invoke-virtual {v1}, Lcom/apicloud/widget/TextureRenderView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object v0
.end method
