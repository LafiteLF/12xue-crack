.class Ldoodle/DoodleActivity$11;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->onClick(Landroid/view/View;)V
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

    .line 502
    iput-object p1, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(II)V
    .locals 3

    .line 504
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(I)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 505
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 506
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodleSelectableItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    .line 508
    instance-of v2, v0, Ldoodle/DoodleColor;

    if-eqz v2, :cond_0

    .line 509
    check-cast v0, Ldoodle/DoodleColor;

    invoke-virtual {v0, p1}, Ldoodle/DoodleColor;->setColor(I)V

    .line 511
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v1}, Ldoodle/core/IDoodleSelectableItem;->setSize(F)V

    .line 513
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1500(Ldoodle/DoodleActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public colorChanged(Landroid/graphics/drawable/Drawable;I)V
    .locals 3

    .line 518
    invoke-static {p1}, Landroids/utils/ImageUtils;->getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 519
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    new-instance v1, Ldoodle/DoodleColor;

    invoke-direct {v1, p1}, Ldoodle/DoodleColor;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setColor(Ldoodle/core/IDoodleColor;)V

    .line 520
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v0

    int-to-float v1, p2

    invoke-interface {v0, v1}, Ldoodle/core/IDoodle;->setSize(F)V

    .line 521
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 522
    iget-object v0, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object v0

    invoke-virtual {v0}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object v0

    invoke-interface {v0}, Ldoodle/core/IDoodleSelectableItem;->getColor()Ldoodle/core/IDoodleColor;

    move-result-object v0

    .line 523
    instance-of v2, v0, Ldoodle/DoodleColor;

    if-eqz v2, :cond_0

    .line 524
    check-cast v0, Ldoodle/DoodleColor;

    invoke-virtual {v0, p1}, Ldoodle/DoodleColor;->setColor(Landroid/graphics/Bitmap;)V

    .line 526
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$800(Ldoodle/DoodleActivity;)Ldoodle/DoodleOnTouchGestureListener;

    move-result-object p1

    invoke-virtual {p1}, Ldoodle/DoodleOnTouchGestureListener;->getSelectedItem()Ldoodle/core/IDoodleSelectableItem;

    move-result-object p1

    invoke-interface {p1, v1}, Ldoodle/core/IDoodleSelectableItem;->setSize(F)V

    .line 528
    :cond_1
    iget-object p1, p0, Ldoodle/DoodleActivity$11;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$1500(Ldoodle/DoodleActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
