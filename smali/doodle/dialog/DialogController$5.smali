.class final Ldoodle/dialog/DialogController$5;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/dialog/DialogController;->showInputTextDialog(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$enterBtn:Landroid/widget/TextView;

.field final synthetic val$enterClick:Landroid/view/View$OnClickListener;

.field final synthetic val$textView:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/widget/TextView;Landroid/widget/EditText;)V
    .locals 0

    .line 161
    iput-object p1, p0, Ldoodle/dialog/DialogController$5;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Ldoodle/dialog/DialogController$5;->val$enterClick:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Ldoodle/dialog/DialogController$5;->val$enterBtn:Landroid/widget/TextView;

    iput-object p4, p0, Ldoodle/dialog/DialogController$5;->val$textView:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 164
    iget-object p1, p0, Ldoodle/dialog/DialogController$5;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 165
    iget-object p1, p0, Ldoodle/dialog/DialogController$5;->val$enterClick:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 166
    iget-object p1, p0, Ldoodle/dialog/DialogController$5;->val$enterBtn:Landroid/widget/TextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldoodle/dialog/DialogController$5;->val$textView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Ldoodle/dialog/DialogController$5;->val$enterClick:Landroid/view/View$OnClickListener;

    iget-object v0, p0, Ldoodle/dialog/DialogController$5;->val$enterBtn:Landroid/widget/TextView;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
