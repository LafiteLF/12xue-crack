.class Landroids/views/ScrollPickerView$3;
.super Ljava/lang/Object;
.source "ScrollPickerView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/views/ScrollPickerView;->autoScrollTo(IJLandroid/view/animation/Interpolator;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroids/views/ScrollPickerView;

.field final synthetic val$endY:I


# direct methods
.method constructor <init>(Landroids/views/ScrollPickerView;I)V
    .locals 0

    .line 598
    iput-object p1, p0, Landroids/views/ScrollPickerView$3;->this$0:Landroids/views/ScrollPickerView;

    iput p2, p0, Landroids/views/ScrollPickerView$3;->val$endY:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 602
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v0

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v1

    long-to-float v1, v1

    div-float/2addr v0, v1

    .line 603
    iget-object v1, p0, Landroids/views/ScrollPickerView$3;->this$0:Landroids/views/ScrollPickerView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v2, p0, Landroids/views/ScrollPickerView$3;->val$endY:I

    invoke-static {v1, p1, v2, v0}, Landroids/views/ScrollPickerView;->access$200(Landroids/views/ScrollPickerView;IIF)V

    return-void
.end method
