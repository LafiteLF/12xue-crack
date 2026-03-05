.class Ldoodle/dialog/ColorPickerDialog$4;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/dialog/ColorPickerDialog;->show(Ldoodle/core/IDoodle;Landroid/graphics/drawable/Drawable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/dialog/ColorPickerDialog;

.field final synthetic val$colorPickerView:Ldoodle/dialog/ColorPickerView;

.field final synthetic val$seekBar:Landroid/widget/SeekBar;


# direct methods
.method constructor <init>(Ldoodle/dialog/ColorPickerDialog;Ldoodle/dialog/ColorPickerView;Landroid/widget/SeekBar;)V
    .locals 0

    .line 102
    iput-object p1, p0, Ldoodle/dialog/ColorPickerDialog$4;->this$0:Ldoodle/dialog/ColorPickerDialog;

    iput-object p2, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    iput-object p3, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object p1, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    invoke-virtual {p1}, Ldoodle/dialog/ColorPickerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Ldoodle/dialog/ColorPickerDialog$4;->this$0:Ldoodle/dialog/ColorPickerDialog;

    invoke-static {p1}, Ldoodle/dialog/ColorPickerDialog;->access$000(Ldoodle/dialog/ColorPickerDialog;)Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;

    move-result-object p1

    iget-object v0, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    invoke-virtual {v0}, Ldoodle/dialog/ColorPickerView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;->colorChanged(Landroid/graphics/drawable/Drawable;I)V

    goto :goto_0

    .line 108
    :cond_0
    iget-object p1, p0, Ldoodle/dialog/ColorPickerDialog$4;->this$0:Ldoodle/dialog/ColorPickerDialog;

    invoke-static {p1}, Ldoodle/dialog/ColorPickerDialog;->access$000(Ldoodle/dialog/ColorPickerDialog;)Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;

    move-result-object p1

    iget-object v0, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    invoke-virtual {v0}, Ldoodle/dialog/ColorPickerView;->getColor()I

    move-result v0

    iget-object v1, p0, Ldoodle/dialog/ColorPickerDialog$4;->val$seekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    invoke-interface {p1, v0, v1}, Ldoodle/dialog/ColorPickerDialog$OnColorChangedListener;->colorChanged(II)V

    .line 110
    :goto_0
    iget-object p1, p0, Ldoodle/dialog/ColorPickerDialog$4;->this$0:Ldoodle/dialog/ColorPickerDialog;

    invoke-virtual {p1}, Ldoodle/dialog/ColorPickerDialog;->dismiss()V

    return-void
.end method
