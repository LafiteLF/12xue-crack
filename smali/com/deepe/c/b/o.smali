.class public final Lcom/deepe/c/b/o;
.super Ljava/lang/Object;


# direct methods
.method public static final a()V
    .locals 4

    :try_start_0
    const-string v0, "ZGFsdmlrLnN5c3RlbS5aaXBQYXRoVmFsaWRhdG9y"

    invoke-static {v0}, Lcom/deepe/c/i/e;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/r;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "clearCallback"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
