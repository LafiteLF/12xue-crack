.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LightFilter;
.super Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.source "LightFilter.java"


# instance fields
.field public Light:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;-><init>()V

    const/high16 v0, 0x43160000    # 150.0f

    .line 27
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LightFilter;->Light:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 14

    .line 31
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v0

    .line 32
    div-int/lit8 v1, v0, 0x2

    .line 33
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    .line 34
    div-int/lit8 v3, v2, 0x2

    .line 35
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 37
    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    int-to-float v1, v1

    int-to-float v3, v3

    invoke-direct {v5, v1, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    const/4 v1, 0x0

    move v3, v1

    :goto_0
    if-lt v3, v0, :cond_0

    return-object p1

    :cond_0
    move v12, v1

    :goto_1
    if-lt v12, v2, :cond_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    int-to-float v6, v3

    .line 41
    iget v7, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-float v10, v12

    iget v11, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    sub-float/2addr v10, v11

    float-to-double v10, v10

    invoke-static {v10, v11, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    double-to-float v6, v6

    .line 42
    invoke-virtual {p1, v3, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v7

    .line 43
    invoke-virtual {p1, v3, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v8

    .line 44
    invoke-virtual {p1, v3, v12}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v9

    int-to-float v10, v4

    cmpg-float v11, v6, v10

    if-gez v11, :cond_2

    .line 47
    iget v11, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LightFilter;->Light:F

    const/high16 v13, 0x3f800000    # 1.0f

    div-float/2addr v6, v10

    sub-float/2addr v13, v6

    mul-float/2addr v11, v13

    float-to-int v6, v11

    add-int/2addr v7, v6

    const/16 v10, 0xff

    .line 49
    invoke-static {v7, v10}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v1, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    add-int/2addr v8, v6

    .line 51
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    add-int/2addr v9, v6

    .line 53
    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    move v11, v6

    move v9, v7

    move v10, v8

    goto :goto_2

    :cond_2
    move v10, v8

    move v11, v9

    move v9, v7

    :goto_2
    move-object v6, p1

    move v7, v3

    move v8, v12

    .line 55
    invoke-virtual/range {v6 .. v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1
.end method
