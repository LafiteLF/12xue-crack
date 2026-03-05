.class Landroids/ScaleGestureDetectorApi27$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ScaleGestureDetectorApi27.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/ScaleGestureDetectorApi27;->setQuickScaleEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroids/ScaleGestureDetectorApi27;


# direct methods
.method constructor <init>(Landroids/ScaleGestureDetectorApi27;)V
    .locals 0

    .line 396
    iput-object p1, p0, Landroids/ScaleGestureDetectorApi27$1;->this$0:Landroids/ScaleGestureDetectorApi27;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 400
    iget-object v0, p0, Landroids/ScaleGestureDetectorApi27$1;->this$0:Landroids/ScaleGestureDetectorApi27;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-static {v0, v1}, Landroids/ScaleGestureDetectorApi27;->access$002(Landroids/ScaleGestureDetectorApi27;F)F

    .line 401
    iget-object v0, p0, Landroids/ScaleGestureDetectorApi27$1;->this$0:Landroids/ScaleGestureDetectorApi27;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {v0, p1}, Landroids/ScaleGestureDetectorApi27;->access$102(Landroids/ScaleGestureDetectorApi27;F)F

    .line 402
    iget-object p1, p0, Landroids/ScaleGestureDetectorApi27$1;->this$0:Landroids/ScaleGestureDetectorApi27;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroids/ScaleGestureDetectorApi27;->access$202(Landroids/ScaleGestureDetectorApi27;I)I

    return v0
.end method
