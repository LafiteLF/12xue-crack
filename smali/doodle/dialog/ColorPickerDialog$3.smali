.class Ldoodle/dialog/ColorPickerDialog$3;
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


# direct methods
.method constructor <init>(Ldoodle/dialog/ColorPickerDialog;)V
    .locals 0

    .line 96
    iput-object p1, p0, Ldoodle/dialog/ColorPickerDialog$3;->this$0:Ldoodle/dialog/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 99
    iget-object p1, p0, Ldoodle/dialog/ColorPickerDialog$3;->this$0:Ldoodle/dialog/ColorPickerDialog;

    invoke-virtual {p1}, Ldoodle/dialog/ColorPickerDialog;->dismiss()V

    return-void
.end method
