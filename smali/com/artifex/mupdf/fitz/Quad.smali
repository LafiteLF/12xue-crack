.class public Lcom/artifex/mupdf/fitz/Quad;
.super Ljava/lang/Object;
.source "Quad.java"


# instance fields
.field public ll_x:F

.field public ll_y:F

.field public lr_x:F

.field public lr_y:F

.field public ul_x:F

.field public ul_y:F

.field public ur_x:F

.field public ur_y:F


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    .line 12
    iput p2, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    .line 13
    iput p3, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    .line 14
    iput p4, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    .line 15
    iput p5, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    .line 16
    iput p6, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    .line 17
    iput p7, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    .line 18
    iput p8, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    return-void
.end method


# virtual methods
.method public toRect()Lcom/artifex/mupdf/fitz/Rect;
    .locals 6

    .line 22
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 23
    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 24
    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v4, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 25
    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v4, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iget v4, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v5, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 26
    new-instance v4, Lcom/artifex/mupdf/fitz/Rect;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/artifex/mupdf/fitz/Rect;-><init>(FFFF)V

    return-object v4
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Quad;
    .locals 10

    .line 47
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v0, v1

    .line 48
    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v1, v2

    .line 49
    iget v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v2, v3

    .line 50
    iget v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v3, v4

    iget v4, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v4, v5

    add-float/2addr v3, v4

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v3, v4

    .line 51
    iget v4, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v4, v5

    iget v5, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v4, v5

    .line 52
    iget v5, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v7, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v5, v6

    .line 53
    iget v6, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    iget v7, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v6, v7

    iget v7, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    iget v8, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v7, v8

    add-float/2addr v6, v7

    iget v7, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v6, v7

    .line 54
    iget v7, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    iget v8, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v7, v8

    iget v8, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    iget v9, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v7, p1

    .line 55
    iput v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    .line 56
    iput v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    .line 57
    iput v2, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    .line 58
    iput v3, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    .line 59
    iput v4, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    .line 60
    iput v5, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    .line 61
    iput v6, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    .line 62
    iput v7, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    return-object p0
.end method

.method public transformed(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Quad;
    .locals 11

    .line 30
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float v3, v0, v1

    .line 31
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ul_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float v4, v0, v1

    .line 32
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float v5, v0, v1

    .line 33
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float v6, v0, v1

    .line 34
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float v7, v0, v1

    .line 35
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float v8, v0, v1

    .line 36
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float v9, v0, v1

    .line 37
    iget v0, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_x:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Quad;->lr_y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float v10, v0, p1

    .line 38
    new-instance p1, Lcom/artifex/mupdf/fitz/Quad;

    move-object v2, p1

    invoke-direct/range {v2 .. v10}, Lcom/artifex/mupdf/fitz/Quad;-><init>(FFFFFFFF)V

    return-object p1
.end method
