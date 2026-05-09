.class Lcom/apicloud/a/i/a/e/b/bh;
.super Lcom/apicloud/a/i/a/e/b/b;


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/apicloud/a/i/a/e/b/bh;->a:[C

    return-void

    :array_0
    .array-data 2
        0x3fs
        0x53s
        0x42s
        0x42s
        0x42s
        0x44s
        0x44s
        0x44s
    .end array-data
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 2

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bh;->a:[C

    const-string v1, "strokeText"

    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/apicloud/a/d;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bh;->a:[C

    invoke-direct {p0, p2, p1, v0}, Lcom/apicloud/a/i/a/e/b/b;-><init>(Lcom/apicloud/a/d;Ljava/lang/String;[C)V

    return-void
.end method

.method protected static a(Ljava/lang/String;ILandroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 8

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7fffffff

    :goto_0
    move v3, p1

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x17

    if-lt p1, v0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2, v3}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    sget-object p1, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    const/4 p1, 0x0

    const/high16 p2, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, p2}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p0, v0}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    goto :goto_1

    :cond_1
    new-instance p1, Landroid/text/StaticLayout;

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    move-object p0, p1

    :goto_1
    return-object p0
.end method

.method private a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;FFF)V
    .locals 3

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->e()Landroid/graphics/Canvas;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    new-instance v1, Landroid/text/TextPaint;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/text/TextPaint;-><init>(Landroid/graphics/Paint;)V

    float-to-int p5, p5

    invoke-static {p2, p5, v1}, Lcom/apicloud/a/i/a/e/b/bh;->a(Ljava/lang/String;ILandroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object p2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->q()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0, p3, p4, p2}, Lcom/apicloud/a/i/a/e/b/bj;->a(Ljava/lang/String;Landroid/graphics/Canvas;FFLandroid/text/StaticLayout;)V

    invoke-virtual {p2, v0}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v0}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method


# virtual methods
.method protected a(Lcom/apicloud/a/i/a/e/b/x;)V
    .locals 2

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->d()Landroid/graphics/Paint;

    move-result-object v0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/e/b/x;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/e/b/x;Lcom/apicloud/a/i/a/e/a/d;)V
    .locals 7

    sget-object v0, Lcom/apicloud/a/i/a/e/b/bh;->a:[C

    array-length v0, v0

    invoke-virtual {p0, p2, v0}, Lcom/apicloud/a/i/a/e/b/bh;->a(Lcom/apicloud/a/i/a/e/a/d;I)V

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->e(I)Ljava/lang/String;

    move-result-object v3

    const/4 v0, 0x5

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v4

    const/4 v0, 0x6

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v5

    const/4 v0, 0x7

    invoke-interface {p2, v0}, Lcom/apicloud/a/i/a/e/a/d;->c(I)F

    move-result v6

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/b/bh;->a(Lcom/apicloud/a/i/a/e/b/x;)V

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v6}, Lcom/apicloud/a/i/a/e/b/bh;->a(Lcom/apicloud/a/i/a/e/b/x;Ljava/lang/String;FFF)V

    return-void
.end method
