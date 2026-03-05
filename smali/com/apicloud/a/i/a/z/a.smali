.class public Lcom/apicloud/a/i/a/z/a;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    sget v0, Lcom/apicloud/a/i/a/z/a;->a:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lcom/apicloud/a/i/a/z/b;->a(Landroid/content/Context;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/deepe/a/b/d;->a(Landroid/content/Context;)I

    move-result v0

    :cond_2
    sput v0, Lcom/apicloud/a/i/a/z/a;->a:I

    return v0
.end method
