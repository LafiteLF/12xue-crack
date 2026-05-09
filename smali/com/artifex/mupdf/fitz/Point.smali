.class public Lcom/artifex/mupdf/fitz/Point;
.super Ljava/lang/Object;
.source "Point.java"


# instance fields
.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/artifex/mupdf/fitz/Point;->x:F

    .line 10
    iput p2, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Point;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Point;->x:F

    .line 15
    iget p1, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    iput p1, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Point;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Point;
    .locals 4

    .line 23
    iget v0, p0, Lcom/artifex/mupdf/fitz/Point;->x:F

    .line 25
    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v1, v0

    iget v2, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v1, v2

    iput v1, p0, Lcom/artifex/mupdf/fitz/Point;->x:F

    .line 26
    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/artifex/mupdf/fitz/Point;->y:F

    return-object p0
.end method
