.class Ldoodle/DoodleOnTouchGestureListener$2;
.super Ljava/lang/Object;
.source "DoodleOnTouchGestureListener.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleOnTouchGestureListener;->limitBound(Z)V
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

    .line 447
    iput-object p1, p0, Ldoodle/DoodleOnTouchGestureListener$2;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 450
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 451
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 452
    iget-object v1, p0, Ldoodle/DoodleOnTouchGestureListener$2;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v1}, Ldoodle/DoodleOnTouchGestureListener;->access$100(Ldoodle/DoodleOnTouchGestureListener;)Ldoodle/DoodleView;

    move-result-object v1

    iget-object v2, p0, Ldoodle/DoodleOnTouchGestureListener$2;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v2}, Ldoodle/DoodleOnTouchGestureListener;->access$500(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v2

    iget-object v3, p0, Ldoodle/DoodleOnTouchGestureListener$2;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v3}, Ldoodle/DoodleOnTouchGestureListener;->access$600(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v3

    iget-object v4, p0, Ldoodle/DoodleOnTouchGestureListener$2;->this$0:Ldoodle/DoodleOnTouchGestureListener;

    invoke-static {v4}, Ldoodle/DoodleOnTouchGestureListener;->access$500(Ldoodle/DoodleOnTouchGestureListener;)F

    move-result v4

    sub-float/2addr v3, v4

    mul-float/2addr v3, p1

    add-float/2addr v2, v3

    invoke-virtual {v1, v0, v2}, Ldoodle/DoodleView;->setDoodleTranslation(FF)V

    return-void
.end method
