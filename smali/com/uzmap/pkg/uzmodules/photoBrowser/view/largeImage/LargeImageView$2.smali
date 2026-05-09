.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "LargeImageView.java"


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

    .line 748
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 804
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 807
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$800(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$800(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;

    move-result-object v0

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-interface {v0, v3, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$OnDoubleClickListener;->onDoubleClick(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 810
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->hasLoad()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 814
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$900(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    goto :goto_0

    .line 817
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$900(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 818
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v1

    goto :goto_0

    .line 820
    :cond_4
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$900(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v1

    .line 824
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gez v0, :cond_6

    :cond_5
    move v1, v3

    goto :goto_1

    .line 826
    :cond_6
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$1100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 831
    :goto_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {v0, v1, v3, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->smoothScale(FII)V

    return v2
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 752
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/widget/ScrollerCompat;->isFinished()Z

    move-result p1

    if-nez p1, :cond_0

    .line 753
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$100(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/support/v4/widget/ScrollerCompat;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/widget/ScrollerCompat;->abortAnimation()V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 795
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 798
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    neg-float p2, p3

    float-to-int p2, p2

    neg-float p3, p4

    float-to-int p3, p3

    invoke-static {p1, p2, p3}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$700(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;II)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 785
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 788
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$600(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isLongClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 789
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$600(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnLongClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    :cond_1
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 10

    .line 776
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 779
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    float-to-int v1, p3

    float-to-int v2, p4

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollX()I

    move-result v3

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->getScrollY()I

    move-result v4

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$300(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)I

    move-result v5

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$400(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v0 .. v9}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$500(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;IIIIIIIIZ)Z

    const/4 p1, 0x1

    return p1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 765
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 768
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->isClickable()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 769
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;)Landroid/view/View$OnClickListener;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/LargeImageView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
