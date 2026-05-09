.class public final Lcom/deepe/c/b/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Landroid/content/Context;)V
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x22

    if-lt p0, v0, :cond_0

    invoke-static {}, Lcom/deepe/c/b/o;->a()V

    :cond_0
    return-void
.end method
