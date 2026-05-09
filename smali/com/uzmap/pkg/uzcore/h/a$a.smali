.class Lcom/uzmap/pkg/uzcore/h/a$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/h/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/h/a;

.field private final b:Lcom/uzmap/pkg/uzcore/h/a$b;

.field private final c:Lcom/uzmap/pkg/uzcore/h/a$b;


# direct methods
.method private constructor <init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->b:Lcom/uzmap/pkg/uzcore/h/a$b;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->c:Lcom/uzmap/pkg/uzcore/h/a$b;

    return-void
.end method

.method synthetic constructor <init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$a;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/h/a$a;-><init>(Lcom/uzmap/pkg/uzcore/h/a;Lcom/uzmap/pkg/uzcore/h/a$b;Lcom/uzmap/pkg/uzcore/h/a$b;)V

    return-void
.end method

.method private a()V
    .locals 6

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v3}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v3

    aget v3, v3, v2

    sub-float/2addr v1, v3

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->a(Lcom/uzmap/pkg/uzcore/h/a;F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    const/4 v3, 0x1

    aget v1, v1, v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v4

    aget v4, v4, v3

    sub-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->f(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v1

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->f(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    mul-float/2addr v1, v4

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->g(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/h/a;->g(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v1, v4

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->h(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v1

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->i(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    sub-float/2addr v1, v4

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->h(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->d(Lcom/uzmap/pkg/uzcore/h/a;F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->i(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v1

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->h(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    div-float/2addr v1, v4

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/h/a;->e(Lcom/uzmap/pkg/uzcore/h/a;F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    aget v1, v1, v2

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->f(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/h/a;->j(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    aget v1, v1, v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->g(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/h/a;->j(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v0, v3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    aget v1, v1, v2

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->f(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v5}, Lcom/uzmap/pkg/uzcore/h/a;->k(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v5

    mul-float/2addr v4, v5

    sub-float/2addr v1, v4

    aput v1, v0, v2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v1

    aget v1, v1, v3

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/a;->g(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v2

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v4}, Lcom/uzmap/pkg/uzcore/h/a;->k(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v4

    mul-float/2addr v2, v4

    sub-float/2addr v1, v2

    aput v1, v0, v3

    return-void
.end method

.method private a(Landroid/graphics/Canvas;)V
    .locals 8

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->b:Lcom/uzmap/pkg/uzcore/h/a$b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->a(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/h/a$b;->a(Lcom/uzmap/pkg/uzcore/h/a$b;F[F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->c:Lcom/uzmap/pkg/uzcore/h/a$b;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/h/a;->a(Lcom/uzmap/pkg/uzcore/h/a;)F

    move-result v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/h/a$b;->a(Lcom/uzmap/pkg/uzcore/h/a$b;F[F)V

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->d(Lcom/uzmap/pkg/uzcore/h/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/h/a$a;->a()V

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    const/4 v1, 0x0

    aget v3, v0, v1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->b(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    const/4 v2, 0x1

    aget v4, v0, v2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    aget v5, v0, v1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->c(Lcom/uzmap/pkg/uzcore/h/a;)[F

    move-result-object v0

    aget v6, v0, v2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/a$a;->a:Lcom/uzmap/pkg/uzcore/h/a;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/a;->e(Lcom/uzmap/pkg/uzcore/h/a;)Landroid/graphics/Paint;

    move-result-object v7

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic a(Lcom/uzmap/pkg/uzcore/h/a$a;Landroid/graphics/Canvas;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/h/a$a;->a(Landroid/graphics/Canvas;)V

    return-void
.end method
