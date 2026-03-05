.class public Lcom/deepe/sdk/EasyPermission;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/sdk/EasyPermission$PermissionCallback;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/deepe/c/f/c;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    const/16 v0, 0x7596

    if-ne p0, v0, :cond_0

    invoke-static {p1, p2}, Lcom/deepe/c/f/c;->a(ILandroid/content/Intent;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static varargs onRequestPermissionsResult(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/deepe/c/f/c;->a(I[Ljava/lang/String;[I[Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static requestPermissions(Landroid/app/Activity;[Ljava/lang/String;Lcom/deepe/sdk/EasyPermission$PermissionCallback;)V
    .locals 4

    new-instance v0, Lcom/deepe/c/f/k;

    const/16 v1, 0x7597

    invoke-direct {v0, v1}, Lcom/deepe/c/f/k;-><init>(I)V

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Lcom/deepe/c/f/k;->a(Z)V

    new-instance p1, Lcom/deepe/sdk/EasyPermission$1;

    invoke-virtual {v0}, Lcom/deepe/c/f/k;->c()Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v1, p2, p0}, Lcom/deepe/sdk/EasyPermission$1;-><init>(Ljava/util/List;Lcom/deepe/sdk/EasyPermission$PermissionCallback;Landroid/app/Activity;)V

    invoke-static {v0, p1}, Lcom/deepe/c/f/c;->a(Lcom/deepe/c/f/k;Lcom/deepe/c/f/d;)V

    return-void

    :cond_0
    aget-object v3, p1, v2

    invoke-virtual {v0, v3}, Lcom/deepe/c/f/k;->b(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static startPermissionSettings(Landroid/app/Activity;)V
    .locals 1

    const/16 v0, 0x7596

    invoke-static {p0, v0}, Lcom/deepe/c/f/n;->a(Landroid/app/Activity;I)Z

    return-void
.end method
