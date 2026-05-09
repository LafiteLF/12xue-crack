.class Landroids/views/ScrollPickerView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ScrollPickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/views/ScrollPickerView;->autoScrollFast(IJFLandroid/view/animation/Interpolator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroids/views/ScrollPickerView;


# direct methods
.method constructor <init>(Landroids/views/ScrollPickerView;)V
    .locals 0

    .line 534
    iput-object p1, p0, Landroids/views/ScrollPickerView$2;->this$0:Landroids/views/ScrollPickerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 537
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 538
    iget-object p1, p0, Landroids/views/ScrollPickerView$2;->this$0:Landroids/views/ScrollPickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroids/views/ScrollPickerView;->access$302(Landroids/views/ScrollPickerView;Z)Z

    return-void
.end method
