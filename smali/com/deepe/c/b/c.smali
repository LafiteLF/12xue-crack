.class public Lcom/deepe/c/b/c;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x10

    const/4 v0, 0x0

    sput v0, Lcom/deepe/c/b/c;->a:I

    const/high16 v0, 0x1000000

    sput v0, Lcom/deepe/c/b/c;->b:I

    return-void
.end method

.method public static a(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const v0, 0xffffff

    and-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p0, p1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "alpha must be between 0 and 255."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
