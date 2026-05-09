.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;
.super Ljava/lang/Object;
.source "LargeImageView.java"

# interfaces
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .line 855
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 858
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v1

    mul-float/2addr v0, v1

    .line 863
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    goto :goto_0

    .line 865
    :cond_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_3

    .line 866
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    .line 868
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$3;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v1, v0, v2, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->setScale(FII)V

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    return-void
.end method
