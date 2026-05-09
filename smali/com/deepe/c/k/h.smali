.class public Lcom/deepe/c/k/h;
.super Ljava/lang/Object;


# static fields
.field private static a:Z


# direct methods
.method public static a()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/deepe/c/k/h;->a:Z

    invoke-static {v0}, Lcom/deepe/c/b;->a(Z)V

    return-void
.end method

.method public static b()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/deepe/c/k/h;->a:Z

    invoke-static {v0}, Lcom/deepe/c/b;->a(Z)V

    return-void
.end method

.method public static c()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/c/k/h;->a:Z

    return v0
.end method
