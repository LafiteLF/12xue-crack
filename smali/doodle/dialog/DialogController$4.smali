.class final Ldoodle/dialog/DialogController$4;
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
.field final synthetic val$cancelBtn:Landroid/view/View;

.field final synthetic val$cancelClick:Landroid/view/View$OnClickListener;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View;)V
    .locals 0

    .line 151
    iput-object p1, p0, Ldoodle/dialog/DialogController$4;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Ldoodle/dialog/DialogController$4;->val$cancelClick:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Ldoodle/dialog/DialogController$4;->val$cancelBtn:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 154
    iget-object p1, p0, Ldoodle/dialog/DialogController$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 155
    iget-object p1, p0, Ldoodle/dialog/DialogController$4;->val$cancelClick:Landroid/view/View$OnClickListener;

    if-eqz p1, :cond_0

    .line 156
    iget-object v0, p0, Ldoodle/dialog/DialogController$4;->val$cancelBtn:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
