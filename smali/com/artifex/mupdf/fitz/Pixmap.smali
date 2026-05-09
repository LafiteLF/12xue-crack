.class public Lcom/artifex/mupdf/fitz/Pixmap;
.super Ljava/lang/Object;
.source "Pixmap.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Pixmap;->pointer:J

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;II)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    .line 37
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Pixmap;-><init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIII)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 29
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Pixmap;-><init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/artifex/mupdf/fitz/Pixmap;->newNative(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Pixmap;->pointer:J

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIZ)V
    .locals 7

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move v6, p4

    .line 33
    invoke-direct/range {v0 .. v6}, Lcom/artifex/mupdf/fitz/Pixmap;-><init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 1

    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/Pixmap;-><init>(Lcom/artifex/mupdf/fitz/ColorSpace;Lcom/artifex/mupdf/fitz/Rect;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/ColorSpace;Lcom/artifex/mupdf/fitz/Rect;Z)V
    .locals 8

    .line 41
    iget v0, p2, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    float-to-int v3, v0

    iget v0, p2, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    float-to-int v4, v0

    iget v0, p2, Lcom/artifex/mupdf/fitz/Rect;->x1:F

    iget v1, p2, Lcom/artifex/mupdf/fitz/Rect;->x0:F

    sub-float/2addr v0, v1

    float-to-int v5, v0

    iget v0, p2, Lcom/artifex/mupdf/fitz/Rect;->y1:F

    iget p2, p2, Lcom/artifex/mupdf/fitz/Rect;->y0:F

    sub-float/2addr v0, p2

    float-to-int v6, v0

    move-object v1, p0

    move-object v2, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/artifex/mupdf/fitz/Pixmap;-><init>(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)V

    return-void
.end method

.method private native clearWithValue(I)V
.end method

.method private native newNative(Lcom/artifex/mupdf/fitz/ColorSpace;IIIIZ)J
.end method


# virtual methods
.method public native clear()V
.end method

.method public clear(I)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/Pixmap;->clearWithValue(I)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Pixmap;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native gamma(F)V
.end method

.method public native getAlpha()Z
.end method

.method public getBounds()Lcom/artifex/mupdf/fitz/Rect;
    .locals 6

    .line 73
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getX()I

    move-result v0

    .line 74
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getY()I

    move-result v1

    .line 75
    new-instance v2, Lcom/artifex/mupdf/fitz/Rect;

    int-to-float v3, v0

    int-to-float v4, v1

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getWidth()I

    move-result v5

    add-int/2addr v0, v5

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getHeight()I

    move-result v5

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-direct {v2, v3, v4, v0, v1}, Lcom/artifex/mupdf/fitz/Rect;-><init>(FFFF)V

    return-object v2
.end method

.method public native getColorSpace()Lcom/artifex/mupdf/fitz/ColorSpace;
.end method

.method public native getHeight()I
.end method

.method public native getNumberOfComponents()I
.end method

.method public native getPixels()[I
.end method

.method public native getSample(III)B
.end method

.method public native getSamples()[B
.end method

.method public native getStride()I
.end method

.method public native getWidth()I
.end method

.method public native getX()I
.end method

.method public native getXResolution()I
.end method

.method public native getY()I
.end method

.method public native getYResolution()I
.end method

.method public native invert()V
.end method

.method public native saveAsPNG(Ljava/lang/String;)V
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pixmap(w="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " x="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getX()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " y="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getY()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " n="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getNumberOfComponents()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " alpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getAlpha()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " cs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Pixmap;->getColorSpace()Lcom/artifex/mupdf/fitz/ColorSpace;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
