.class Lcom/deepe/sdk/EasyPermission$1;
.super Lcom/deepe/c/f/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/sdk/EasyPermission;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/deepe/sdk/EasyPermission$PermissionCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;


# direct methods
.method constructor <init>(Ljava/util/List;Lcom/deepe/sdk/EasyPermission$PermissionCallback;Landroid/app/Activity;)V
    .locals 0

    iput-object p2, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    iput-object p3, p0, Lcom/deepe/sdk/EasyPermission$1;->val$activity:Landroid/app/Activity;

    invoke-direct {p0, p1}, Lcom/deepe/c/f/d;-><init>(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/EasyPermission$1;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public needPermissionSetting()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onPermission(ILcom/deepe/c/f/q;)V
    .locals 1

    iget-object p1, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Lcom/deepe/c/f/q;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/deepe/sdk/EasyPermission$PermissionCallback;->onReault(Z)V

    return-void

    :cond_1
    invoke-virtual {p2}, Lcom/deepe/c/f/q;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/deepe/sdk/EasyPermission$PermissionCallback;->onReault(Z)V

    invoke-virtual {p2}, Lcom/deepe/c/f/q;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    invoke-virtual {p1}, Lcom/deepe/sdk/EasyPermission$PermissionCallback;->onNeverAskAgain()V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p2}, Lcom/deepe/c/f/q;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    invoke-virtual {v0, p1}, Lcom/deepe/sdk/EasyPermission$PermissionCallback;->onGranted(Ljava/util/List;)V

    :cond_4
    invoke-virtual {p2}, Lcom/deepe/c/f/q;->e()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_5

    iget-object p2, p0, Lcom/deepe/sdk/EasyPermission$1;->val$callback:Lcom/deepe/sdk/EasyPermission$PermissionCallback;

    invoke-virtual {p2, p1}, Lcom/deepe/sdk/EasyPermission$PermissionCallback;->onDenied(Ljava/util/List;)V

    :cond_5
    return-void
.end method
