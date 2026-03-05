.class Landroids/views/ScrollPickerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollPickerView.java"


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

.field final synthetic val$temp:Z


# direct methods
.method constructor <init>(Landroids/views/ScrollPickerView;Z)V
    .locals 0

    .line 607
    iput-object p1, p0, Landroids/views/ScrollPickerView$4;->this$0:Landroids/views/ScrollPickerView;

    iput-boolean p2, p0, Landroids/views/ScrollPickerView$4;->val$temp:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 610
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 611
    iget-object p1, p0, Landroids/views/ScrollPickerView$4;->this$0:Landroids/views/ScrollPickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroids/views/ScrollPickerView;->access$302(Landroids/views/ScrollPickerView;Z)Z

    .line 612
    iget-object p1, p0, Landroids/views/ScrollPickerView$4;->this$0:Landroids/views/ScrollPickerView;

    iget-boolean v0, p0, Landroids/views/ScrollPickerView$4;->val$temp:Z

    invoke-static {p1, v0}, Landroids/views/ScrollPickerView;->access$402(Landroids/views/ScrollPickerView;Z)Z

    return-void
.end method
