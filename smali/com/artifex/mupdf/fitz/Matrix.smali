.class public Lcom/artifex/mupdf/fitz/Matrix;
.super Ljava/lang/Object;
.source "Matrix.java"


# instance fields
.field public a:F

.field public b:F

.field public c:F

.field public d:F

.field public e:F

.field public f:F


# direct methods
.method public constructor <init>()V
    .locals 7

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p1

    .line 25
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v4, p2

    .line 21
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 7

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 9
    iput p2, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 10
    iput p3, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 11
    iput p4, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    .line 12
    iput p5, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    .line 13
    iput p6, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Matrix;)V
    .locals 7

    .line 33
    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Matrix;)V
    .locals 5

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iget v0, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    iget v1, p2, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    iget v2, p2, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float v3, v1, v2

    add-float/2addr v0, v3

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 38
    iget v0, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    iget v3, p2, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v3

    iget v3, p2, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v3

    add-float/2addr v0, v1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 39
    iget v0, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    iget v1, p2, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v2, v4

    add-float/2addr v0, v2

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 40
    iget v0, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    iget v2, p2, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v2

    mul-float/2addr v4, v3

    add-float/2addr v0, v4

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    .line 41
    iget v0, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    iget v3, p2, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v3, v1

    add-float/2addr v0, v3

    iget v3, p2, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v0, v3

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    .line 42
    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    mul-float/2addr p1, v2

    iget v0, p2, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v0

    add-float/2addr p1, v1

    iget p2, p2, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr p1, p2

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    return-void
.end method

.method public static Identity()Lcom/artifex/mupdf/fitz/Matrix;
    .locals 8

    .line 125
    new-instance v7, Lcom/artifex/mupdf/fitz/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static Rotate(F)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 8

    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p0, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p0, v2

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v1, p0, v2

    if-ltz v1, :cond_1

    sub-float/2addr p0, v2

    goto :goto_1

    :cond_1
    sub-float v1, v0, p0

    .line 148
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide v3, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v1, v1, v3

    const/high16 v2, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    if-gez v1, :cond_2

    move v3, v0

    goto :goto_3

    :cond_2
    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v1, p0

    .line 151
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v6, v1

    cmpg-double v1, v6, v3

    if-gez v1, :cond_3

    move v3, v5

    :goto_2
    move v5, v0

    goto :goto_3

    :cond_3
    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr v1, p0

    .line 154
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v3

    if-gez v1, :cond_4

    move v3, v0

    move v5, v2

    goto :goto_3

    :cond_4
    const/high16 v1, 0x43870000    # 270.0f

    sub-float/2addr v1, p0

    .line 157
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v5, v1

    cmpg-double v1, v5, v3

    if-gez v1, :cond_5

    move v5, v0

    move v3, v2

    goto :goto_3

    :cond_5
    float-to-double v0, p0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 161
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p0, v2

    .line 162
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    move v3, p0

    goto :goto_2

    .line 165
    :goto_3
    new-instance p0, Lcom/artifex/mupdf/fitz/Matrix;

    neg-float v4, v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p0

    move v2, v5

    invoke-direct/range {v1 .. v7}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-object p0
.end method

.method public static Scale(F)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 8

    .line 129
    new-instance v7, Lcom/artifex/mupdf/fitz/Matrix;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v4, p0

    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static Scale(FF)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 8

    .line 133
    new-instance v7, Lcom/artifex/mupdf/fitz/Matrix;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move v1, p0

    move v4, p1

    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method

.method public static Translate(FF)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 8

    .line 137
    new-instance v7, Lcom/artifex/mupdf/fitz/Matrix;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move-object v0, v7

    move v5, p0

    move v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Matrix;-><init>(FFFFFF)V

    return-object v7
.end method


# virtual methods
.method public concat(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 10

    .line 46
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float v2, v0, v1

    iget v3, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float v5, v3, v4

    add-float/2addr v2, v5

    .line 47
    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v5

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v3, v6

    add-float/2addr v0, v3

    .line 48
    iget v3, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float v7, v3, v1

    iget v8, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float v9, v8, v4

    add-float/2addr v7, v9

    mul-float/2addr v3, v5

    mul-float/2addr v8, v6

    add-float/2addr v3, v8

    .line 50
    iget v8, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    mul-float/2addr v1, v8

    iget v9, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    mul-float/2addr v4, v9

    add-float/2addr v1, v4

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v1, v4

    mul-float/2addr v8, v5

    mul-float/2addr v9, v6

    add-float/2addr v8, v9

    .line 51
    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v8, p1

    iput v8, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    .line 53
    iput v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 54
    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 55
    iput v7, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 56
    iput v3, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    .line 57
    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    return-object p0
.end method

.method public rotate(F)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 7

    :goto_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    if-gez v1, :cond_0

    add-float/2addr p1, v2

    goto :goto_0

    :cond_0
    :goto_1
    cmpl-float v1, p1, v2

    if-ltz v1, :cond_1

    sub-float/2addr p1, v2

    goto :goto_1

    :cond_1
    sub-float/2addr v0, p1

    .line 86
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/high16 v0, 0x42b40000    # 90.0f

    sub-float/2addr v0, p1

    .line 88
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 89
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 90
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 91
    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 92
    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    neg-float p1, p1

    .line 93
    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    neg-float p1, v0

    .line 94
    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    goto/16 :goto_2

    :cond_3
    const/high16 v0, 0x43340000    # 180.0f

    sub-float/2addr v0, p1

    .line 95
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 96
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    neg-float p1, p1

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 97
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    neg-float p1, p1

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 98
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    neg-float p1, p1

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 99
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    neg-float p1, p1

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    goto :goto_2

    :cond_4
    const/high16 v0, 0x43870000    # 270.0f

    sub-float/2addr v0, p1

    .line 100
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 101
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 102
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 103
    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    neg-float v1, v1

    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 104
    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    neg-float v1, v1

    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 105
    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 106
    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    goto :goto_2

    :cond_5
    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    .line 108
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float p1, v2

    .line 109
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 110
    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 111
    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float v3, v0, v1

    .line 112
    iget v4, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float v5, p1, v4

    add-float/2addr v3, v5

    iput v3, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float v3, v0, v2

    .line 113
    iget v5, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float v6, p1, v5

    add-float/2addr v3, v6

    iput v3, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    neg-float p1, p1

    mul-float/2addr v1, p1

    mul-float/2addr v4, v0

    add-float/2addr v1, v4

    .line 114
    iput v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr p1, v2

    mul-float/2addr v0, v5

    add-float/2addr p1, v0

    .line 115
    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    :goto_2
    return-object p0
.end method

.method public scale(F)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 0

    .line 71
    invoke-virtual {p0, p1, p1}, Lcom/artifex/mupdf/fitz/Matrix;->scale(FF)Lcom/artifex/mupdf/fitz/Matrix;

    move-result-object p1

    return-object p1
.end method

.method public scale(FF)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 1

    .line 63
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    .line 64
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, p1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    .line 65
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    .line 66
    iget p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public translate(FF)Lcom/artifex/mupdf/fitz/Matrix;
    .locals 3

    .line 75
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v2, p2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    .line 76
    iget v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr p2, v1

    add-float/2addr p1, p2

    add-float/2addr v0, p1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    return-object p0
.end method
