.class public Lcom/artifex/mupdf/fitz/Rect;
.super Ljava/lang/Object;
.source "Rect.java"


# instance fields
.field public x0:F

.field public x1:F

.field public y0:F

.field public y1:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    .line 22
    iput p2, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    .line 23
    iput p3, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    .line 24
    iput p4, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Quad;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Lcom/artifex/mupdf/fitz/Quad;->ll_x:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    .line 30
    iget v0, p1, Lcom/artifex/mupdf/fitz/Quad;->ll_y:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    .line 31
    iget v0, p1, Lcom/artifex/mupdf/fitz/Quad;->ur_x:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    .line 32
    iget p1, p1, Lcom/artifex/mupdf/fitz/Quad;->ur_y:F

    iput p1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 3

    .line 37
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/artifex/mupdf/fitz/Rect;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/RectI;)V
    .locals 3

    .line 42
    iget v0, p1, Lcom/artifex/mupdf/fitz/RectI;->x0:I

    int-to-float v0, v0

    iget v1, p1, Lcom/artifex/mupdf/fitz/RectI;->y0:I

    int-to-float v1, v1

    iget v2, p1, Lcom/artifex/mupdf/fitz/RectI;->x1:I

    int-to-float v2, v2

    iget p1, p1, Lcom/artifex/mupdf/fitz/RectI;->y1:I

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/artifex/mupdf/fitz/Rect;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public native adjustForStroke(Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public contains(FF)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 111
    :cond_0
    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    cmpg-float p1, p1, v0

    if-gez p1, :cond_1

    iget p1, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public contains(Lcom/artifex/mupdf/fitz/Rect;)Z
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Rect;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/artifex/mupdf/fitz/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isEmpty()Z
    .locals 2

    .line 124
    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

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

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public transform(Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;
    .locals 8

    .line 54
    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v1, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v0, v1

    .line 55
    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->a:F

    mul-float/2addr v1, v2

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    move v7, v1

    move v1, v0

    move v0, v7

    .line 64
    :cond_0
    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v2, v3

    .line 65
    iget v3, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->c:F

    mul-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_1

    move v7, v3

    move v3, v2

    move v2, v7

    .line 73
    :cond_1
    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v2, v4

    add-float/2addr v0, v2

    .line 74
    iget v2, p1, Lcom/artifex/mupdf/fitz/Matrix;->e:F

    add-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 76
    iget v2, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v3, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v2, v3

    .line 77
    iget v3, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v4, p1, Lcom/artifex/mupdf/fitz/Matrix;->b:F

    mul-float/2addr v3, v4

    cmpl-float v4, v2, v3

    if-lez v4, :cond_2

    move v7, v3

    move v3, v2

    move v2, v7

    .line 86
    :cond_2
    iget v4, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v5, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v4, v5

    .line 87
    iget v5, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->d:F

    mul-float/2addr v5, v6

    cmpl-float v6, v4, v5

    if-lez v6, :cond_3

    move v7, v5

    move v5, v4

    move v4, v7

    .line 95
    :cond_3
    iget v6, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v4, v6

    add-float/2addr v2, v4

    .line 96
    iget p1, p1, Lcom/artifex/mupdf/fitz/Matrix;->f:F

    add-float/2addr v5, p1

    add-float/2addr v3, v5

    .line 98
    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    .line 99
    iput v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    .line 100
    iput v2, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    .line 101
    iput v3, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    return-object p0
.end method

.method public union(Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    .line 132
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    .line 133
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    .line 134
    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iput p1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    goto :goto_0

    .line 138
    :cond_0
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1

    .line 139
    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    .line 140
    :cond_1
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    cmpg-float v1, v0, v1

    if-gez v1, :cond_2

    .line 141
    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    .line 142
    :cond_2
    iget v0, p1, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v1, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    .line 143
    iput v0, p0, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    .line 144
    :cond_3
    iget p1, p1, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget v0, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 145
    iput p1, p0, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    :cond_4
    :goto_0
    return-void
.end method
