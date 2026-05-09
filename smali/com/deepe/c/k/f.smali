.class public Lcom/deepe/c/k/f;
.super Ljava/lang/Object;


# static fields
.field private static a:Z = true

.field private static b:Z = false

.field private static c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/deepe/c/k/f;->c:I

    return-void
.end method

.method public static a(I)V
    .locals 1

    if-gtz p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    if-le p0, v0, :cond_1

    move p0, v0

    :cond_1
    sput p0, Lcom/deepe/c/k/f;->c:I

    return-void
.end method

.method public static a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcom/deepe/c/j/e/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/deepe/c/k/f;->a()Z

    move-result p0

    invoke-static {p0}, Lcom/deepe/c/j/e/m;->a(Z)V

    return-void
.end method

.method public static a(Z)V
    .locals 1

    sput-boolean p0, Lcom/deepe/c/k/f;->a:Z

    invoke-static {}, Lcom/deepe/c/j/e/m;->a()Lcom/deepe/c/j/e/m;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/deepe/c/j/e/m;->b(Z)V

    return-void
.end method

.method public static a()Z
    .locals 1

    sget-boolean v0, Lcom/deepe/c/k/f;->a:Z

    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lcom/deepe/c/k/f;->c:I

    return v0
.end method
