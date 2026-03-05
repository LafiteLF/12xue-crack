.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.source "WaterWaveFilter.java"


# instance fields
.field buf1:[S

.field buf2:[S

.field height:I

.field source:[I

.field temp:[I

.field width:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;-><init>()V

    return-void
.end method


# virtual methods
.method DropStone(IIII)V
    .locals 8

    add-int v0, p1, p3

    .line 51
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    if-gt v0, v1, :cond_4

    add-int v1, p2, p3

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    if-gt v1, v2, :cond_4

    sub-int v2, p1, p3

    if-ltz v2, :cond_4

    sub-int v3, p2, p3

    if-gez v3, :cond_0

    goto :goto_2

    :cond_0
    :goto_0
    if-lt v2, v0, :cond_1

    return-void

    :cond_1
    move v4, v3

    :goto_1
    if-lt v4, v1, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    sub-int v5, v2, p1

    mul-int/2addr v5, v5

    sub-int v6, v4, p2

    mul-int/2addr v6, v6

    add-int/2addr v5, v6

    mul-int v6, p3, p3

    if-gt v5, v6, :cond_3

    .line 57
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    mul-int/2addr v6, v4

    add-int/2addr v6, v2

    neg-int v7, p4

    int-to-short v7, v7

    aput-short v7, v5, v6

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method RippleSpread()V
    .locals 7

    .line 65
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    :goto_0
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    mul-int/2addr v2, v1

    sub-int/2addr v2, v1

    if-lt v0, v2, :cond_0

    .line 69
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    .line 70
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf2:[S

    iput-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    .line 71
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf2:[S

    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf2:[S

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    add-int/lit8 v4, v0, -0x1

    aget-short v4, v3, v4

    add-int/lit8 v5, v0, 0x1

    aget-short v6, v3, v5

    add-int/2addr v4, v6

    sub-int v6, v0, v1

    aget-short v6, v3, v6

    add-int/2addr v4, v6

    add-int/2addr v1, v0

    aget-short v1, v3, v1

    add-int/2addr v4, v1

    shr-int/lit8 v1, v4, 0x1

    aget-short v3, v2, v0

    sub-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v2, v0

    .line 67
    aget-short v1, v2, v0

    aget-short v3, v2, v0

    shr-int/lit8 v3, v3, 0x5

    sub-int/2addr v1, v3

    int-to-short v1, v1

    aput-short v1, v2, v0

    move v0, v5

    goto :goto_0
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 5

    .line 34
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    .line 35
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    .line 36
    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    mul-int v2, v1, v0

    new-array v2, v2, [S

    iput-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf2:[S

    mul-int/2addr v1, v0

    .line 37
    new-array v0, v1, [S

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    .line 38
    iget-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->source:[I

    .line 39
    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->temp:[I

    .line 40
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    div-int/lit8 v3, v2, 0x2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    div-int/lit8 v0, v0, 0x4

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v1, v3, v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->DropStone(IIII)V

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0xaa

    if-lt v0, v1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->temp:[I

    iput-object v0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    return-object p1

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->RippleSpread()V

    .line 43
    invoke-virtual {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->render()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method render()V
    .locals 9

    .line 76
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    const/4 v1, 0x1

    move v2, v1

    .line 77
    :goto_0
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    sub-int/2addr v3, v1

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    .line 78
    :goto_1
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->width:I

    if-lt v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 79
    :cond_1
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->buf1:[S

    add-int/lit8 v6, v0, -0x1

    aget-short v6, v5, v6

    add-int/lit8 v7, v0, 0x1

    aget-short v8, v5, v7

    sub-int/2addr v6, v8

    sub-int v8, v0, v4

    .line 80
    aget-short v8, v5, v8

    add-int/2addr v0, v4

    aget-short v0, v5, v0

    sub-int/2addr v8, v0

    add-int/2addr v8, v2

    if-ltz v8, :cond_3

    .line 81
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->height:I

    if-ge v8, v0, :cond_3

    add-int/2addr v6, v3

    if-ltz v6, :cond_3

    if-lt v6, v4, :cond_2

    goto :goto_2

    :cond_2
    mul-int/2addr v8, v4

    add-int/2addr v8, v6

    mul-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 89
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->temp:[I

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/WaterWaveFilter;->source:[I

    aget v5, v5, v8

    aput v5, v0, v4

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    move v0, v7

    goto :goto_1
.end method
