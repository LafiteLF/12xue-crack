.class public Lcom/uzmap/pkg/uzcore/e/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/e/a;->b(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v0, "user"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static b(Landroid/content/Context;)Z
    .locals 0

    sget-boolean p0, Lcom/uzmap/pkg/uzcore/e/a;->a:Z

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/uzmap/pkg/uzcore/e/a;->b:Z

    return p0

    :cond_0
    sget-boolean p0, Lcom/uzmap/pkg/uzcore/e/a;->b:Z

    return p0
.end method
