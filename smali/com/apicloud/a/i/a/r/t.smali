.class public Lcom/apicloud/a/i/a/r/t;
.super Ljava/lang/Object;


# static fields
.field public static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()Z
    .locals 1

    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/apicloud/a/i/a/r/t;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/deepe/c/b;->b()Z

    move-result v0

    return v0
.end method
