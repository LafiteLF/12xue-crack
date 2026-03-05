.class Lcom/uzmap/pkg/uzcore/h/f;
.super Ljava/lang/Object;


# static fields
.field static final a:I

.field static final b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/b/c/c;->a()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzcore/h/f;->a:I

    sput v0, Lcom/uzmap/pkg/uzcore/h/f;->b:I

    return-void
.end method

.method public static a(Landroid/view/View;)I
    .locals 1

    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x11

    if-lt p0, v0, :cond_0

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p0

    return p0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result p0

    return p0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
