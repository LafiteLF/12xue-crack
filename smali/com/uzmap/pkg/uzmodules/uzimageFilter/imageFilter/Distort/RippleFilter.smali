.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;
.source "RippleFilter.java"


# instance fields
.field _amplitude:I

.field _sinType:I

.field _waveLength:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/BilinearDistort;-><init>()V

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 32
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_waveLength:I

    if-lt p2, v0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    .line 33
    :goto_1
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_amplitude:I

    .line 34
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_sinType:I

    return-void
.end method


# virtual methods
.method public calc_undistorted_coord(IIDD)[D
    .locals 6

    .line 39
    iget-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->clone:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result p3

    int-to-double p3, p3

    int-to-double p5, p1

    add-double/2addr p5, p3

    .line 40
    invoke-virtual {p0, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->shift_amount(I)D

    move-result-wide v0

    add-double/2addr p5, v0

    rem-double v0, p5, p3

    const-wide/high16 p5, 0x3ff0000000000000L    # 1.0

    sub-double v4, p3, p5

    const-wide/16 v2, 0x0

    .line 41
    invoke-static/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClampDouble(DDD)D

    move-result-wide p3

    int-to-double p1, p2

    const/4 p5, 0x2

    new-array p5, p5, [D

    const/4 p6, 0x0

    aput-wide p3, p5, p6

    const/4 p3, 0x1

    aput-wide p1, p5, p3

    return-object p5
.end method

.method shift_amount(I)D
    .locals 7

    .line 48
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_sinType:I

    if-lez v0, :cond_0

    .line 49
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_amplitude:I

    int-to-double v0, v0

    mul-int/lit8 p1, p1, 0x2

    int-to-double v2, p1

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v4

    iget p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_waveLength:I

    int-to-double v4, p1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0

    .line 51
    :cond_0
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_amplitude:I

    int-to-double v0, v0

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Distort/RippleFilter;->_waveLength:I

    rem-int/2addr p1, v2

    int-to-double v3, p1

    int-to-double v5, v2

    div-double/2addr v3, v5

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    return-wide v0
.end method
