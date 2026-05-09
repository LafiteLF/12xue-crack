.class Ldoodle/DoodleActivity$5;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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

    .line 346
    iput-object p1, p0, Ldoodle/DoodleActivity$5;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4

    .line 349
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 350
    invoke-static {}, Ldoodle/DoodleParams;->getDialogInterceptor()Ldoodle/DoodleParams$DialogInterceptor;

    move-result-object p1

    iget-object v0, p0, Ldoodle/DoodleActivity$5;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object v1

    sget-object v2, Ldoodle/DoodleParams$DialogType;->CLEAR_ALL:Ldoodle/DoodleParams$DialogType;

    invoke-interface {p1, v0, v1, v2}, Ldoodle/DoodleParams$DialogInterceptor;->onShow(Landroid/app/Activity;Ldoodle/core/IDoodle;Ldoodle/DoodleParams$DialogType;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 351
    :cond_0
    iget-object p1, p0, Ldoodle/DoodleActivity$5;->this$0:Ldoodle/DoodleActivity;

    sget v0, Lcom/kukugtu/moduleplotting/R$string;->doodle_clear_screen:I

    .line 352
    invoke-virtual {p1, v0}, Ldoodle/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldoodle/DoodleActivity$5;->this$0:Ldoodle/DoodleActivity;

    sget v2, Lcom/kukugtu/moduleplotting/R$string;->doodle_cant_undo_after_clearing:I

    invoke-virtual {v1, v2}, Ldoodle/DoodleActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ldoodle/DoodleActivity$5$1;

    invoke-direct {v2, p0}, Ldoodle/DoodleActivity$5$1;-><init>(Ldoodle/DoodleActivity$5;)V

    const/4 v3, 0x0

    .line 351
    invoke-static {p1, v0, v1, v2, v3}, Ldoodle/dialog/DialogController;->showEnterCancelDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
