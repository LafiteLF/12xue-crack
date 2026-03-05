.class public final Lcom/uzmap/pkg/uzapp/c;
.super Ljava/lang/Object;


# static fields
.field private static a:I = -0x1


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzapp/c;->a:I

    return-void
.end method

.method public static b()Z
    .locals 2

    sget v0, Lcom/uzmap/pkg/uzapp/c;->a:I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
