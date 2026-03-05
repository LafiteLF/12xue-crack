.class final Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;
.super Ljava/lang/Object;
.source "SurfaceRenderView.java"

# interfaces
.implements Lcom/apicloud/widget/IRenderView$ISurfaceHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/widget/SurfaceRenderView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalSurfaceHolder"
.end annotation


# instance fields
.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Lcom/apicloud/widget/SurfaceRenderView;


# direct methods
.method public constructor <init>(Lcom/apicloud/widget/SurfaceRenderView;Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/apicloud/widget/SurfaceRenderView;

    .line 129
    iput-object p2, p0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-void
.end method


# virtual methods
.method public bindToMediaPlayer(Ltv/danmaku/ijk/media/player/IMediaPlayer;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {p1, v0}, Ltv/danmaku/ijk/media/player/IMediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method public getRenderView()Lcom/apicloud/widget/IRenderView;
    .locals 1

    .line 140
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceView:Lcom/apicloud/widget/SurfaceRenderView;

    return-object v0
.end method

.method public openSurface()Landroid/view/Surface;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/apicloud/widget/SurfaceRenderView$InternalSurfaceHolder;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_0
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method
