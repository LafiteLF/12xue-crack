.class Ldoodle/dialog/ColorPickerDialog$2;
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


# direct methods
.method constructor <init>(Ldoodle/dialog/ColorPickerDialog;Ldoodle/dialog/ColorPickerView;)V
    .locals 0

    .line 83
    iput-object p1, p0, Ldoodle/dialog/ColorPickerDialog$2;->this$0:Ldoodle/dialog/ColorPickerDialog;

    iput-object p2, p0, Ldoodle/dialog/ColorPickerDialog$2;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 86
    check-cast p1, Landroid/widget/ImageView;

    .line 87
    iget-object v0, p0, Ldoodle/dialog/ColorPickerDialog$2;->val$colorPickerView:Ldoodle/dialog/ColorPickerView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0, p1}, Ldoodle/dialog/ColorPickerView;->setDrawable(Landroid/graphics/drawable/BitmapDrawable;)V

    return-void
.end method
