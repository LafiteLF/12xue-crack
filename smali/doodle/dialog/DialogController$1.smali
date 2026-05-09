.class final Ldoodle/dialog/DialogController$1;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/dialog/DialogController;->showMsgDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cancelClick:Landroid/view/View$OnClickListener;

.field final synthetic val$enterClick:Landroid/view/View$OnClickListener;

.field final synthetic val$finalDialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 50
    iput-object p1, p0, Ldoodle/dialog/DialogController$1;->val$finalDialog:Landroid/app/Dialog;

    iput-object p2, p0, Ldoodle/dialog/DialogController$1;->val$enterClick:Landroid/view/View$OnClickListener;

    iput-object p3, p0, Ldoodle/dialog/DialogController$1;->val$cancelClick:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 52
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->dialog_bg:I

    if-ne v0, v1, :cond_0

    .line 53
    iget-object p1, p0, Ldoodle/dialog/DialogController$1;->val$finalDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_02:I

    if-ne v0, v1, :cond_1

    .line 55
    iget-object v0, p0, Ldoodle/dialog/DialogController$1;->val$finalDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 56
    iget-object v0, p0, Ldoodle/dialog/DialogController$1;->val$enterClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 57
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 59
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/kukugtu/moduleplotting/R$id;->dialog_enter_btn_01:I

    if-ne v0, v1, :cond_2

    .line 60
    iget-object v0, p0, Ldoodle/dialog/DialogController$1;->val$finalDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 61
    iget-object v0, p0, Ldoodle/dialog/DialogController$1;->val$cancelClick:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_2

    .line 62
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_2
    :goto_0
    return-void
.end method
