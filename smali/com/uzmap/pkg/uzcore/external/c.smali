.class public Lcom/uzmap/pkg/uzcore/external/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzcore/external/c$a;,
        Lcom/uzmap/pkg/uzcore/external/c$b;,
        Lcom/uzmap/pkg/uzcore/external/c$c;
    }
.end annotation


# static fields
.field public static final a:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 2

    if-eqz p0, :cond_3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/app/AlertDialog;->create()V

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_1
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_2
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAllCaps(Z)V

    :cond_3
    :goto_0
    return-object p0
.end method

.method private static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;)Landroid/app/AlertDialog;
    .locals 3

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->d(Lcom/uzmap/pkg/uzcore/external/c$b;)Z

    move-result p1

    invoke-static {p0, v0, v1, p1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;
    .locals 2

    new-instance v0, Landroid/app/AlertDialog$Builder;

    const v1, 0x10302d2

    invoke-direct {v0, p0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0, p3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/c$b;

    invoke-direct {v0, p0, p1}, Lcom/uzmap/pkg/uzcore/external/c$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;)Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, -0x1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->a(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$13;

    invoke-direct {v1, p2}, Lcom/uzmap/pkg/uzcore/external/c$13;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V

    invoke-virtual {p0, v0, p1, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "forceFinishConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepe/b;->L:Ljava/lang/String;

    sget-object v1, Lcom/deepe/b;->K:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p0

    const/4 v0, -0x2

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    sget-object v2, Lcom/uzmap/pkg/uzcore/external/c;->a:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v0, -0x1

    sget-object v1, Lcom/deepe/b;->z:Ljava/lang/String;

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$11;

    invoke-direct {v2, p1}, Lcom/uzmap/pkg/uzcore/external/c$11;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "finishConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepe/b;->A:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p0

    const/4 p1, -0x1

    sget-object v0, Lcom/deepe/b;->z:Ljava/lang/String;

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$1;

    invoke-direct {v1, p2}, Lcom/uzmap/pkg/uzcore/external/c$1;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "showJsAlert but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 3

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

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
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_1

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance p0, Lcom/uzmap/pkg/uzcore/external/c$15;

    invoke-direct {p0, p3, v0}, Lcom/uzmap/pkg/uzcore/external/c$15;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;Landroid/widget/EditText;)V

    const/4 p2, -0x1

    sget-object p3, Lcom/deepe/b;->z:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    sget-object p3, Lcom/deepe/b;->f:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "showJsPrompt but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

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
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$16;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/external/c$16;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    aget-object v2, v2, v3

    new-instance v3, Lcom/uzmap/pkg/uzcore/external/c$17;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/external/c$17;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "showApiAlert but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;ILjava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "buttonIndex"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->f:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, ""

    :goto_0
    const-string p1, "text"

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {v0}, Lcom/deepe/c/i/i;->b()Lorg/json/JSONObject;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method

.method public static b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;)Landroid/app/AlertDialog;

    move-result-object p0

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/c$14;

    invoke-direct {v0, p2}, Lcom/uzmap/pkg/uzcore/external/c$14;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->a(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 p2, -0x1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->a(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p2, v1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->e(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 p2, -0x2

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/external/c$b;->e(Lcom/uzmap/pkg/uzcore/external/c$b;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-object p0

    :cond_3
    :goto_0
    const-string p0, "alertOrConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(Landroid/content/Context;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 2

    invoke-static {p0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepe/b;->g:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object p0

    new-instance p1, Lcom/uzmap/pkg/uzcore/external/c$12;

    invoke-direct {p1, p2}, Lcom/uzmap/pkg/uzcore/external/c$12;-><init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V

    const/4 p2, -0x1

    sget-object v0, Lcom/deepe/b;->z:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    sget-object v0, Lcom/deepe/b;->f:Ljava/lang/String;

    invoke-virtual {p0, p2, v0, p1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_1
    :goto_0
    const-string p0, "showJsConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

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
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$18;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/external/c$18;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$19;

    invoke-direct {v1, v0, p0}, Lcom/uzmap/pkg/uzcore/external/c$19;-><init>(Landroid/app/AlertDialog;Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v2, -0x2

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v0, v2, v4, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v2, -0x3

    aget-object v3, p0, v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    array-length v2, p0

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    const/4 v2, -0x1

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-virtual {v0, v2, p0, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "showApiConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static c(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Landroid/app/AlertDialog;

    move-result-object v0

    new-instance v1, Landroid/widget/EditText;

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->g:I

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v1, v3}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->c:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$20;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/external/c$20;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$21;

    invoke-direct {v2, v0, p0, v1}, Lcom/uzmap/pkg/uzcore/external/c$21;-><init>(Landroid/app/AlertDialog;Lcom/uzmap/pkg/uzcore/uzmodule/b/c;Landroid/widget/EditText;)V

    iget-object p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v1, -0x2

    const/4 v4, 0x0

    aget-object v4, p0, v4

    invoke-virtual {v0, v1, v4, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v1, -0x3

    aget-object v3, p0, v3

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    array-length v1, p0

    const/4 v3, 0x3

    if-lt v1, v3, :cond_2

    const/4 v1, -0x1

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-virtual {v0, v1, p0, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    :cond_2
    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    :goto_0
    const-string p0, "showApiPrompt but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static d(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 3

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    aget-object v0, v2, v0

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$2;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/external/c$2;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

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
    const-string p0, "showApiUIAlert but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lcom/uzmap/pkg/uzcore/external/c$3;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/external/c$3;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    aget-object v0, v2, v0

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$4;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/external/c$4;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x3

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v0, v0, v2

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$5;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/external/c$5;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

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

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/c$6;

    invoke-direct {v1, p0}, Lcom/uzmap/pkg/uzcore/external/c$6;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v0, v1}, Lcom/deepe/a/g/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v0}, Lcom/deepe/a/g/a;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "showApiUIConfirm but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method

.method public static f(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
    .locals 4

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->getContext()Landroid/content/Context;

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

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lcom/deepe/a/g/a$a;->a(Z)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    new-instance v3, Lcom/uzmap/pkg/uzcore/external/c$7;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/external/c$7;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/deepe/a/g/a$a;->b(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    aget-object v2, v2, v0

    new-instance v3, Lcom/uzmap/pkg/uzcore/external/c$8;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/external/c$8;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/deepe/a/g/a$a;->a(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->e:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    new-instance v3, Lcom/uzmap/pkg/uzcore/external/c$9;

    invoke-direct {v3, p0}, Lcom/uzmap/pkg/uzcore/external/c$9;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v2, v3}, Lcom/deepe/a/g/a$a;->c(Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/deepe/a/g/a$a;

    :cond_1
    const v2, -0x11ddcd

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->b(I)Lcom/deepe/a/g/a$a;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->a(I)Lcom/deepe/a/g/a$a;

    const/high16 v2, 0x41300000    # 11.0f

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->a(F)Lcom/deepe/a/g/a$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/deepe/a/g/a$a;->a(ZLjava/lang/String;)Lcom/deepe/a/g/a$a;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a$a;->c(Ljava/lang/String;)Lcom/deepe/a/g/a$a;

    invoke-virtual {v1}, Lcom/deepe/a/g/a$a;->a()Lcom/deepe/a/g/a;

    move-result-object v1

    new-instance v2, Lcom/uzmap/pkg/uzcore/external/c$10;

    invoke-direct {v2, p0}, Lcom/uzmap/pkg/uzcore/external/c$10;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V

    invoke-virtual {v1, v2}, Lcom/deepe/a/g/a;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    invoke-virtual {v1}, Lcom/deepe/a/g/a;->b()Landroid/widget/EditText;

    move-result-object v2

    iget p0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->g:I

    invoke-virtual {v2, p0}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    invoke-virtual {v1}, Lcom/deepe/a/g/a;->show()V

    return-void

    :cond_2
    :goto_0
    const-string p0, "showApiUIPrompt but Context not a Activity or Activity not valid."

    invoke-static {p0}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void
.end method
