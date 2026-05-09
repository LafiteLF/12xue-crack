.class Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;
.super Ljava/lang/Object;
.source "TouchGestureDetector.java"

# interfaces
.implements Landroids/TouchGestureDetector$IOnTouchGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroids/TouchGestureDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnTouchGestureListenerProxy"
.end annotation


# instance fields
.field private mHasScaled:Z

.field private mIsScrolling:Z

.field private mLastScrollMotionEvent:Landroid/view/MotionEvent;

.field private mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

.field final synthetic this$0:Landroids/TouchGestureDetector;


# direct methods
.method public constructor <init>(Landroids/TouchGestureDetector;Landroids/TouchGestureDetector$IOnTouchGestureListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->this$0:Landroids/TouchGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 97
    iput-boolean p1, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mHasScaled:Z

    .line 98
    iput-boolean p1, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    .line 103
    iput-object p2, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 170
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 175
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mHasScaled:Z

    .line 110
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    .line 111
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 126
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 131
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScale(Landroids/ScaleGestureDetectorApi27;)Z
    .locals 1

    .line 185
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScale(Landroids/ScaleGestureDetectorApi27;)Z

    move-result p1

    return p1
.end method

.method public onScaleBegin(Landroids/ScaleGestureDetectorApi27;)Z
    .locals 1

    const/4 v0, 0x1

    .line 190
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mHasScaled:Z

    .line 191
    iget-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 192
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    .line 193
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mLastScrollMotionEvent:Landroid/view/MotionEvent;

    invoke-virtual {p0, v0}, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->onScrollEnd(Landroid/view/MotionEvent;)V

    .line 195
    :cond_0
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScaleBegin(Landroids/ScaleGestureDetectorApi27;)Z

    move-result p1

    return p1
.end method

.method public onScaleEnd(Landroids/ScaleGestureDetectorApi27;)V
    .locals 1

    .line 200
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScaleEnd(Landroids/ScaleGestureDetectorApi27;)V

    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    .line 146
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->this$0:Landroids/TouchGestureDetector;

    invoke-static {v0}, Landroids/TouchGestureDetector;->access$000(Landroids/TouchGestureDetector;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mHasScaled:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 147
    iput-boolean p1, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    return p1

    .line 150
    :cond_0
    iget-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 151
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    .line 152
    invoke-virtual {p0, p1}, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->onScrollBegin(Landroid/view/MotionEvent;)V

    .line 154
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mLastScrollMotionEvent:Landroid/view/MotionEvent;

    .line 155
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result p1

    return p1
.end method

.method public onScrollBegin(Landroid/view/MotionEvent;)V
    .locals 1

    .line 136
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScrollBegin(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onScrollEnd(Landroid/view/MotionEvent;)V
    .locals 1

    .line 141
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onScrollEnd(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 1

    .line 160
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onShowPress(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 180
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 165
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onUpOrCancel(Landroid/view/MotionEvent;)V
    .locals 1

    .line 116
    iget-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mListener:Landroids/TouchGestureDetector$IOnTouchGestureListener;

    invoke-interface {v0, p1}, Landroids/TouchGestureDetector$IOnTouchGestureListener;->onUpOrCancel(Landroid/view/MotionEvent;)V

    .line 117
    iget-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 118
    iput-boolean v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mIsScrolling:Z

    const/4 v0, 0x0

    .line 119
    iput-object v0, p0, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->mLastScrollMotionEvent:Landroid/view/MotionEvent;

    .line 120
    invoke-virtual {p0, p1}, Landroids/TouchGestureDetector$OnTouchGestureListenerProxy;->onScrollEnd(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method
