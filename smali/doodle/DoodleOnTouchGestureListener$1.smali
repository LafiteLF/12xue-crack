.class Ldoodle/DoodleOnTouchGestureListener$1;
.super Ljava/lang/Object;
.source "DoodleOnTouchGestureListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleOnTouchGestureListener;->onScaleEnd(Landroids/ScaleGestureDetectorApi27;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleOnTouchGestureListener;


# direct methods
.method constructor <init>(Ldoodle/DoodleOnTouchGestureListener;)V
    .locals 0

    .line 325
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 328
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 329
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 330
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v1}, Ldoodle/DoodleOnTouchGestureListener;->access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;

    move-result-object v1

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v2}, Ldoodle/DoodleOnTouchGestureListener;->access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;

    move-result-object v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v3}, Ldoodle/DoodleOnTouchGestureListener;->access$000(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v3

    invoke-virtual {v2, v3}, Ldoodle/DoodleView;->toX(F)F

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v3}, Ldoodle/DoodleOnTouchGestureListener;->access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;

    move-result-object v3

    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v4}, Ldoodle/DoodleOnTouchGestureListener;->access$200(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v4

    invoke-virtual {v3, v4}, Ldoodle/DoodleView;->toY(F)F

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Ldoodle/DoodleView;->setDoodleScale(FFF)V

    .line 331
    iget-object v0, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v0}, Ldoodle/DoodleOnTouchGestureListener;->access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v1}, Ldoodle/DoodleOnTouchGestureListener;->access$300(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float/2addr v1, v2

    iget-object p1, p0, Ldoodle/DoodleOnTouchGestureListener$1;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {p1}, Ldoodle/DoodleOnTouchGestureListener;->access$400(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result p1

    mul-float/2addr p1, v2

    invoke-virtual {v0, v1, p1}, Ldoodle/DoodleView;->setDoodleTranslation(FF)V

    return-void
.end method
