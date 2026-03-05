.class final Ldoodle/dialog/DialogController$7;
.super Ljava/lang/Object;
.source "DialogController.java"

# interfaces
.implements Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/dialog/DialogController;->showSelectImageDialog(Landroid/app/Activity;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$listener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V
    .locals 0

    .line 188
    iput-object p1, p0, Ldoodle/dialog/DialogController$7;->val$dialog:Landroid/app/Dialog;

    iput-object p2, p0, Ldoodle/dialog/DialogController$7;->val$listener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 1

    .line 191
    iget-object v0, p0, Ldoodle/dialog/DialogController$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 192
    iget-object v0, p0, Ldoodle/dialog/DialogController$7;->val$listener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    if-eqz v0, :cond_0

    .line 193
    invoke-interface {v0}, Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;->onCancel()V

    :cond_0
    return-void
.end method

.method public onEnter(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Ldoodle/dialog/DialogController$7;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 200
    iget-object v0, p0, Ldoodle/dialog/DialogController$7;->val$listener:Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;

    if-eqz v0, :cond_0

    .line 201
    invoke-interface {v0, p1}, Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;->onEnter(Ljava/util/List;)V

    :cond_0
    return-void
.end method
