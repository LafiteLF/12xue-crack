.class Lcom/uzmap/pkg/uzcore/h/a$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/graphics/PathMeasure;

.field private final b:Landroid/graphics/PathMeasure;

.field private final c:F

.field private final d:F


# direct methods
.method private constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->a:Landroid/graphics/PathMeasure;

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1, p2, v1}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->b:Landroid/graphics/PathMeasure;

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->a:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->c:F

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->b:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->d:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Path;Landroid/graphics/Path;Lcom/uzmap/pkg/uzcore/h/a$b;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/a$b;-><init>(Landroid/graphics/Path;Landroid/graphics/Path;)V

    return-void
.end method

.method private a(F[F)V
    .locals 4

    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v1, p1, v0

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-gtz v1, :cond_0

    mul-float/2addr p1, v3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->a:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->c:F

    goto :goto_0

    :cond_0
    sub-float/2addr p1, v0

    mul-float/2addr p1, v3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->b:Landroid/graphics/PathMeasure;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/h/a$b;->d:F

    :goto_0
    mul-float/2addr v1, p1

    invoke-virtual {v0, v1, p2, v2}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/a$b;F[F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/uzcore/h/a$b;->a(F[F)V

    return-void
.end method
