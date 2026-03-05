.class Lcom/deepe/c/c/a/a/j$f;
.super Lcom/deepe/c/c/a/a/j$i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field a:F

.field b:F

.field final c:Landroid/graphics/Path;

.field final synthetic d:Lcom/deepe/c/c/a/a/j;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/a/a/j;FFLandroid/graphics/Path;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/a/a/j$f;->d:Lcom/deepe/c/c/a/a/j;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/deepe/c/c/a/a/j$i;-><init>(Lcom/deepe/c/c/a/a/j$i;)V

    iput p2, p0, Lcom/deepe/c/c/a/a/j$f;->a:F

    iput p3, p0, Lcom/deepe/c/c/a/a/j$f;->b:F

    iput-object p4, p0, Lcom/deepe/c/c/a/a/j$f;->c:Landroid/graphics/Path;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 8

    iget-object v0, p0, Lcom/deepe/c/c/a/a/j$f;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v0}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$f;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v1

    iget-object v1, v1, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget v5, p0, Lcom/deepe/c/c/a/a/j$f;->a:F

    iget v6, p0, Lcom/deepe/c/c/a/a/j$f;->b:F

    move-object v2, p1

    move-object v7, v0

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$f;->c:Landroid/graphics/Path;

    invoke-virtual {v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;)V

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/j$f;->a:F

    iget-object v1, p0, Lcom/deepe/c/c/a/a/j$f;->d:Lcom/deepe/c/c/a/a/j;

    invoke-static {v1}, Lcom/deepe/c/c/a/a/j;->b(Lcom/deepe/c/c/a/a/j;)Lcom/deepe/c/c/a/a/j$g;

    move-result-object v2

    iget-object v2, v2, Lcom/deepe/c/c/a/a/j$g;->g:Landroid/graphics/Paint;

    invoke-static {v1, p1, v2}, Lcom/deepe/c/c/a/a/j;->a(Lcom/deepe/c/c/a/a/j;Ljava/lang/String;Landroid/graphics/Paint;)F

    move-result p1

    add-float/2addr v0, p1

    iput v0, p0, Lcom/deepe/c/c/a/a/j$f;->a:F

    return-void
.end method

.method public a(Lcom/deepe/c/c/a/a/k$ax;)Z
    .locals 2

    instance-of p1, p1, Lcom/deepe/c/c/a/a/k$ay;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    new-array v0, p1, [Ljava/lang/Object;

    const-string v1, "Using <textPath> elements in a clip path is not supported."

    invoke-static {v1, v0}, Lcom/deepe/c/c/a/a/j;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
