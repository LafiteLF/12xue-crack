.class public Lcom/deepe/sdk/ModalHelper;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/sdk/ModalHelper$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static uiAlert(Lcom/deepe/sdk/ModalHelper$Builder;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$0(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/deepe/a/g/a$a;

    invoke-direct {v1, v0}, Lcom/deepe/a/g/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$1(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$2(Lcom/deepe/sdk/ModalHelper$Builder;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$3(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$4(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$5(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object p0

    invoke-virtual {v1, v0, p0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    const p0, -0x11ddcd

    invoke-virtual {v1, p0}, Lcom/deepe/a/g/a$a;->b(I)Lcom/deepe/a/g/a$a;

    const/16 p0, 0x11

    invoke-virtual {v1, p0}, Lcom/deepe/a/g/a$a;->a(I)Lcom/deepe/a/g/a$a;

    const/high16 p0, 0x41300000    # 11.0f

    invoke-virtual {v1, p0}, Lcom/deepe/a/g/a$a;->a(F)Lcom/deepe/a/g/a$a;

    invoke-virtual {v1}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object p0

    invoke-virtual {p0}, Lcom/deepe/a/g/a;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "ModalHelper showApiUIAlert but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static uiConfirm(Lcom/deepe/sdk/ModalHelper$Builder;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$0(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/deepe/a/g/a$a;

    invoke-direct {v1, v0}, Lcom/deepe/a/g/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$1(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$2(Lcom/deepe/sdk/ModalHelper$Builder;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$3(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$6(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$7(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$4(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$5(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$8(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$8(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$9(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    :cond_1
    const v0, -0x11ddcd

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->b(I)Lcom/deepe/a/g/a$a;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(I)Lcom/deepe/a/g/a$a;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(F)Lcom/deepe/a/g/a$a;

    invoke-virtual {v1}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object v0

    new-instance v1, Lcom/deepe/sdk/ModalHelper$1;

    invoke-direct {v1, p0}, Lcom/deepe/sdk/ModalHelper$1;-><init>(Lcom/deepe/sdk/ModalHelper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/deepe/a/g/a;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "ModalHelper showApiUIConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static uiPrompt(Lcom/deepe/sdk/ModalHelper$Builder;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$0(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/deepe/a/g/a$a;

    invoke-direct {v1, v0}, Lcom/deepe/a/g/a$a;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$1(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$2(Lcom/deepe/sdk/ModalHelper$Builder;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$3(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$6(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$7(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$4(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$5(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$8(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$8(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$9(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    :cond_1
    const v0, -0x11ddcd

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->b(I)Lcom/deepe/a/g/a$a;

    const/16 v0, 0x11

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(I)Lcom/deepe/a/g/a$a;

    const/high16 v0, 0x41300000    # 11.0f

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(F)Lcom/deepe/a/g/a$a;

    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/deepe/a/g/a$a;->a(ZLjava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-static {p0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$10(Lcom/deepe/sdk/ModalHelper$Builder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->c(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-virtual {v1}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object v0

    new-instance v1, Lcom/deepe/sdk/ModalHelper$2;

    invoke-direct {v1, p0}, Lcom/deepe/sdk/ModalHelper$2;-><init>(Lcom/deepe/sdk/ModalHelper$Builder;)V

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/deepe/a/g/a;->b()Landroid/widget/EditText;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {v0}, Lcom/deepe/a/g/a;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "ModalHelper showApiUIPrompt but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method
