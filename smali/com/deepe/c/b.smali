.class public Lcom/deepe/c/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = false

.field private static b:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static final a(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepe/c/b;->a:Z

    return-void
.end method

.method public static final a()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/c/b;->a:Z

    return v0
.end method

.method public static final b(Z)V
    .locals 0

    sput-boolean p0, Lcom/deepe/c/b;->b:Z

    return-void
.end method

.method public static final b()Z
    .locals 2

    sget-boolean v0, Lcom/deepe/c/b;->b:Z

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
