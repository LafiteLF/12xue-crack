.class public Lcom/uzmap/pkg/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a()V
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/a/b;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/a/a;->a()V

    :cond_0
    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/uzmap/pkg/a/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/a/a;->a(Landroid/content/Context;)V

    const/4 p0, 0x1

    sput-boolean p0, Lcom/uzmap/pkg/a/b;->a:Z

    return-void
.end method

.method public static b()Z
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/a/a;->b()Z

    move-result v0

    return v0
.end method
