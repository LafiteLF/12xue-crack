.class Ldoodle/DoodleActivity$6;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;)V
    .locals 0

    .line 374
    iput-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 0

    if-gtz p2, :cond_0

    .line 378
    iget-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$200(Ldoodle/DoodleActivity;)Landroid/widget/SeekBar;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void

    .line 381
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->getSize()F

    move-result p1

    float-to-int p1, p1

    if-ne p1, p2, :cond_1

    return-void

    .line 384
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    int-to-float p2, p2

    invoke-interface {p1, p2}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 385
    iget-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 386
    iget-object p1, p0, Ldoodle/DoodleActivity$6;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, p2}, Ldoodle/core/IDoodleSelectableItem;->setSize(F)V

    :cond_2
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    return-void
.end method
