.class public Lcom/artifex/mupdf/fitz/RectI;
.super Ljava/lang/Object;
.source "RectI.java"


# instance fields
.field public x0:I

.field public x1:I

.field public y0:I

.field public y1:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    .line 17
    iput p2, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    .line 18
    iput p3, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    .line 19
    iput p4, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    .line 28
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    .line 29
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    .line 30
    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/RectI;)V
    .locals 3

    .line 23
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    iget v1, p1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    iget v2, p1, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    iget p1, p1, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/artifex/mupdf/fitz/RectI;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public contains(II)Z
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/RectI;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 91
    :cond_0
    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    if-ge p1, v0, :cond_1

    iget p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    if-lt p2, p1, :cond_1

    iget p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    if-ge p2, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public contains(Lcom/artifex/mupdf/fitz/Rect;)Z
    .locals 3

    .line 96
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/RectI;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/artifex/mupdf/fitz/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 104
    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/RectI;
    .locals 8

    .line 38
    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    int-to-float v0, v0

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    .line 39
    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    int-to-float v1, v1

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 47
    :cond_0
    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    int-to-float v2, v2

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v2, v3

    .line 48
    iget v3, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    int-to-float v3, v3

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    move v7, v3

    move v3, v2

    move v2, v7

    .line 55
    :cond_1
    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 56
    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 58
    iget v2, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    int-to-float v2, v2

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v2, v3

    .line 59
    iget v3, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    int-to-float v3, v3

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    move v7, v3

    move v3, v2

    move v2, v7

    .line 67
    :cond_2
    iget v4, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    int-to-float v4, v4

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v4, v5

    .line 68
    iget v5, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    int-to-float v5, v5

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v5, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    move v7, v5

    move v5, v4

    move v4, v7

    .line 75
    :cond_3
    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 76
    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v5, p1

    add-float/2addr v3, v5

    float-to-double v4, v0

    .line 78
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int p1, v4

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    float-to-double v0, v1

    .line 79
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    float-to-double v0, v2

    .line 80
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    float-to-double v0, v3

    .line 81
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    return-object p0
.end method

.method public union(Lcom/artifex/mupdf/fitz/RectI;)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/RectI;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    .line 112
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    .line 113
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    .line 114
    iget p1, p1, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    goto :goto_0

    .line 118
    :cond_0
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    if-ge v0, v1, :cond_1

    .line 119
    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    .line 120
    :cond_1
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    if-ge v0, v1, :cond_2

    .line 121
    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    .line 122
    :cond_2
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    iget v1, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    if-le v0, v1, :cond_3

    .line 123
    iput v0, p0, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    .line 124
    :cond_3
    iget p1, p1, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    iget v0, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    if-le p1, v0, :cond_4

    .line 125
    iput p1, p0, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    :cond_4
    :goto_0
    return-void
.end method
