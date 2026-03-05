.class Landroids/views/ScrollPickerView$FlingOnGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/views/ScrollPickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingOnGestureListener"
.end annotation


# instance fields
.field private mIsScrollingLastTime:Z

.field final synthetic this$0:Landroids/views/ScrollPickerView;


# direct methods
.method private constructor <init>(Landroids/views/ScrollPickerView;)V
    .locals 0

    .line 640
    iput-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    const/4 p1, 0x0

    .line 642
    iput-boolean p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    return-void
.end method

.method synthetic constructor <init>(Landroids/views/ScrollPickerView;Landroids/views/ScrollPickerView$1;)V
    .locals 0

    .line 640
    invoke-direct {p0, p1}, Landroids/views/ScrollPickerView$FlingOnGestureListener;-><init>(Landroids/views/ScrollPickerView;)V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 645
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v0}, Landroids/views/ScrollPickerView;->access$500(Landroids/views/ScrollPickerView;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 646
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {v0}, Landroids/views/ScrollPickerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 648
    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 651
    :cond_0
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {v0}, Landroids/views/ScrollPickerView;->isScrolling()Z

    move-result v0

    iput-boolean v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    .line 653
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {v0}, Landroids/views/ScrollPickerView;->cancelScroll()V

    .line 654
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-static {v0, v2}, Landroids/views/ScrollPickerView;->access$602(Landroids/views/ScrollPickerView;F)F

    .line 655
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Landroids/views/ScrollPickerView;->access$702(Landroids/views/ScrollPickerView;F)F

    return v1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 663
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$800(Landroids/views/ScrollPickerView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 664
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroids/views/ScrollPickerView;->cancelScroll()V

    .line 665
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$900(Landroids/views/ScrollPickerView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 666
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1000(Landroids/views/ScrollPickerView;)F

    move-result p2

    invoke-static {p1, p2, p3}, Landroids/views/ScrollPickerView;->access$1100(Landroids/views/ScrollPickerView;FF)V

    goto :goto_0

    .line 668
    :cond_0
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1000(Landroids/views/ScrollPickerView;)F

    move-result p2

    invoke-static {p1, p2, p4}, Landroids/views/ScrollPickerView;->access$1100(Landroids/views/ScrollPickerView;FF)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 676
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v0, v1}, Landroids/views/ScrollPickerView;->access$602(Landroids/views/ScrollPickerView;F)F

    .line 677
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-static {v0, p1}, Landroids/views/ScrollPickerView;->access$702(Landroids/views/ScrollPickerView;F)F

    .line 679
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroids/views/ScrollPickerView;->isHorizontal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 680
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1300(Landroids/views/ScrollPickerView;)I

    move-result v0

    invoke-static {p1, v0}, Landroids/views/ScrollPickerView;->access$1202(Landroids/views/ScrollPickerView;I)I

    .line 681
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$700(Landroids/views/ScrollPickerView;)F

    move-result p1

    goto :goto_0

    .line 683
    :cond_0
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1400(Landroids/views/ScrollPickerView;)I

    move-result v0

    invoke-static {p1, v0}, Landroids/views/ScrollPickerView;->access$1202(Landroids/views/ScrollPickerView;I)I

    .line 684
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$600(Landroids/views/ScrollPickerView;)F

    move-result p1

    .line 686
    :goto_0
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v0}, Landroids/views/ScrollPickerView;->access$1500(Landroids/views/ScrollPickerView;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->mIsScrollingLastTime:Z

    if-nez v0, :cond_3

    .line 687
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v0}, Landroids/views/ScrollPickerView;->access$1200(Landroids/views/ScrollPickerView;)I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v0}, Landroids/views/ScrollPickerView;->access$1200(Landroids/views/ScrollPickerView;)I

    move-result v0

    iget-object v1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v1}, Landroids/views/ScrollPickerView;->access$1600(Landroids/views/ScrollPickerView;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_1

    .line 688
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroids/views/ScrollPickerView;->performClick()Z

    goto :goto_1

    .line 689
    :cond_1
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {v0}, Landroids/views/ScrollPickerView;->access$1200(Landroids/views/ScrollPickerView;)I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_2

    .line 690
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1600(Landroids/views/ScrollPickerView;)I

    move-result v1

    .line 691
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    const-wide/16 v2, 0x96

    invoke-static {}, Landroids/views/ScrollPickerView;->access$1700()Landroids/views/ScrollPickerView$SlotInterpolator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 693
    :cond_2
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1600(Landroids/views/ScrollPickerView;)I

    move-result p1

    neg-int v1, p1

    .line 694
    iget-object v0, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    const-wide/16 v2, 0x96

    invoke-static {}, Landroids/views/ScrollPickerView;->access$1700()Landroids/views/ScrollPickerView$SlotInterpolator;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V

    goto :goto_1

    .line 697
    :cond_3
    iget-object p1, p0, Landroids/views/ScrollPickerView$FlingOnGestureListener;->this$0:Landroids/views/ScrollPickerView;

    invoke-static {p1}, Landroids/views/ScrollPickerView;->access$1800(Landroids/views/ScrollPickerView;)V

    :goto_1
    const/4 p1, 0x1

    return p1
.end method
