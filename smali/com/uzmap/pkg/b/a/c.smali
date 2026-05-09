.class public Lcom/uzmap/pkg/b/a/c;
.super Ljava/lang/Object;


# static fields
.field static a:I

.field static b:Lcom/deepe/c/i/i;

.field static c:Lcom/deepe/c/i/i;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static a(Landroid/content/Context;)I
    .locals 3

    sget v0, Lcom/uzmap/pkg/b/a/c;->a:I

    if-lez v0, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_1

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/d;->a(Landroid/content/Context;)I

    move-result v0

    :cond_1
    if-nez v0, :cond_2

    invoke-static {p0}, Lcom/deepe/a/b/d;->a(Landroid/content/Context;)I

    move-result v0

    :cond_2
    sput v0, Lcom/uzmap/pkg/b/a/c;->a:I

    return v0
.end method

.method public static a(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/a;)Lcom/deepe/c/i/i;
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    check-cast p1, Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 p1, 0x1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-gt p1, v0, :cond_0

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/c;->b(Landroid/content/Context;)Lcom/deepe/c/i/i;

    move-result-object p0

    return-object p0

    :cond_0
    sget-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    if-nez p0, :cond_1

    new-instance p0, Lcom/deepe/c/i/i;

    invoke-direct {p0}, Lcom/deepe/c/i/i;-><init>()V

    sput-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    const/4 p1, 0x0

    const-string v0, "top"

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    const-string v0, "left"

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    const-string v0, "right"

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    const-string v0, "bottom"

    invoke-virtual {p0, v0, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    :cond_1
    sget-object p0, Lcom/uzmap/pkg/b/a/c;->c:Lcom/deepe/c/i/i;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/deepe/c/i/i;
    .locals 3

    sget-object v0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    sput-object v0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    invoke-static {p0}, Lcom/uzmap/pkg/b/a/c;->c(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-static {p0}, Lcom/deepe/a/b/d;->a(Landroid/content/Context;)I

    move-result p0

    iput p0, v0, Landroid/graphics/Rect;->top:I

    :cond_1
    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "top"

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "left"

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "right"

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "bottom"

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v1

    const-string v2, "width"

    invoke-virtual {p0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result v0

    const-string v1, "height"

    invoke-virtual {p0, v1, v0}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    sget-object p0, Lcom/uzmap/pkg/b/a/c;->b:Lcom/deepe/c/i/i;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Landroid/graphics/Rect;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static {p0}, Lcom/uzmap/pkg/b/a/d;->b(Landroid/content/Context;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method
