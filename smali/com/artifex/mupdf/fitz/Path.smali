.class public Lcom/artifex/mupdf/fitz/Path;
.super Ljava/lang/Object;
.source "Path.java"

# interfaces
.implements Lcom/artifex/mupdf/fitz/PathWalker;


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    invoke-direct {p0}, Lcom/artifex/mupdf/fitz/Path;->newNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Path;->pointer:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Path;->pointer:J

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Path;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-direct {p1}, Lcom/artifex/mupdf/fitz/Path;->cloneNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Path;->pointer:J

    return-void
.end method

.method private native cloneNative()J
.end method

.method private native newNative()J
.end method


# virtual methods
.method public native closePath()V
.end method

.method public native currentPoint()Lcom/artifex/mupdf/fitz/Point;
.end method

.method public native curveTo(FFFFFF)V
.end method

.method public curveTo(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;)V
    .locals 7

    .line 52
    iget v1, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget v2, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v3, p2, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget v4, p2, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v5, p3, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget v6, p3, Lcom/artifex/mupdf/fitz/Point;->y:F

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Path;->curveTo(FFFFFF)V

    return-void
.end method

.method public native curveToV(FFFF)V
.end method

.method public curveToV(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;)V
    .locals 2

    .line 56
    iget v0, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p1, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v1, p2, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p2, p2, Lcom/artifex/mupdf/fitz/Point;->y:F

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/artifex/mupdf/fitz/Path;->curveToV(FFFF)V

    return-void
.end method

.method public native curveToY(FFFF)V
.end method

.method public curveToY(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;)V
    .locals 2

    .line 60
    iget v0, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p1, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    iget v1, p2, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p2, p2, Lcom/artifex/mupdf/fitz/Point;->y:F

    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/artifex/mupdf/fitz/Path;->curveToY(FFFF)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Path;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Path;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getBounds(Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;
.end method

.method public native lineTo(FF)V
.end method

.method public lineTo(Lcom/artifex/mupdf/fitz/Point;)V
    .locals 1

    .line 48
    iget v0, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p1, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/artifex/mupdf/fitz/Path;->lineTo(FF)V

    return-void
.end method

.method public native moveTo(FF)V
.end method

.method public moveTo(Lcom/artifex/mupdf/fitz/Point;)V
    .locals 1

    .line 44
    iget v0, p1, Lcom/artifex/mupdf/fitz/Point;->x:F

    iget p1, p1, Lcom/artifex/mupdf/fitz/Point;->y:F

    invoke-virtual {p0, v0, p1}, Lcom/artifex/mupdf/fitz/Path;->moveTo(FF)V

    return-void
.end method

.method public native rect(IIII)V
.end method

.method public native transform(Lcom/artifex/mupdf/fitz/Matrix;)V
.end method

.method public native walk(Lcom/artifex/mupdf/fitz/PathWalker;)V
.end method
