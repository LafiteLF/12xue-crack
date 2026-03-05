.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;
.super Ljava/lang/Object;
.source "ZoomBlurFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field final RADIUS_LENGTH:I

.field m_fcx:I

.field m_fcy:I

.field m_length:I

.field m_offset_x:D

.field m_offset_y:D


# direct methods
.method public constructor <init>(I)V
    .locals 6

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    .line 29
    invoke-direct/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;-><init>(IDD)V

    return-void
.end method

.method public constructor <init>(IDD)V
    .locals 6

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x40

    .line 26
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->RADIUS_LENGTH:I

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    .line 33
    :goto_0
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_length:I

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    cmpl-double p1, p2, v0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x4000000000000000L    # -2.0

    if-lez p1, :cond_1

    move-wide p2, v0

    goto :goto_1

    :cond_1
    cmpg-double p1, p2, v4

    if-gez p1, :cond_2

    move-wide p2, v2

    .line 34
    :cond_2
    :goto_1
    iput-wide p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_offset_x:D

    cmpl-double p1, p4, v0

    if-lez p1, :cond_3

    move-wide p4, v0

    goto :goto_2

    :cond_3
    cmpg-double p1, p4, v4

    if-gez p1, :cond_4

    move-wide p4, v2

    .line 35
    :cond_4
    :goto_2
    iput-wide p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_offset_y:D

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    .line 41
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    int-to-double v1, v8

    .line 42
    iget-wide v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_offset_x:D

    mul-double/2addr v1, v3

    const-wide/high16 v3, 0x40e0000000000000L    # 32768.0

    mul-double/2addr v1, v3

    double-to-int v1, v1

    const v10, 0x8000

    mul-int v2, v8, v10

    add-int/2addr v1, v2

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcx:I

    int-to-double v1, v9

    .line 43
    iget-wide v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_offset_y:D

    mul-double/2addr v1, v5

    mul-double/2addr v1, v3

    double-to-int v1, v1

    mul-int v2, v9, v10

    add-int/2addr v1, v2

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcy:I

    const/4 v12, 0x0

    :goto_0
    if-lt v12, v8, :cond_0

    return-object v7

    :cond_0
    const/4 v13, 0x0

    :goto_1
    if-lt v13, v9, :cond_1

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {v7, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    const/16 v2, 0xff

    mul-int/2addr v1, v2

    .line 51
    invoke-virtual {v7, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    mul-int/2addr v3, v2

    .line 52
    invoke-virtual {v7, v12, v13}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    mul-int/2addr v4, v2

    const/high16 v5, 0x10000

    mul-int v6, v12, v5

    .line 54
    iget v14, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcx:I

    sub-int/2addr v6, v14

    mul-int v14, v13, v5

    .line 55
    iget v15, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcy:I

    sub-int/2addr v14, v15

    move v11, v2

    const/4 v15, 0x0

    :goto_2
    const/16 v2, 0x40

    if-lt v15, v2, :cond_2

    .line 69
    div-int/2addr v1, v11

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v5

    div-int/2addr v3, v11

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v6

    .line 70
    div-int/2addr v4, v11

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->SAFECOLOR(I)I

    move-result v11

    move-object/from16 v1, p1

    move v2, v12

    move v3, v13

    move v4, v5

    move v5, v6

    move v6, v11

    .line 69
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 57
    :cond_2
    div-int/lit8 v2, v6, 0x10

    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_length:I

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v6, v2

    .line 58
    div-int/lit8 v2, v14, 0x10

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0x400

    sub-int/2addr v14, v2

    .line 60
    iget v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcx:I

    add-int/2addr v2, v6

    add-int/2addr v2, v10

    const/high16 v5, 0x10000

    div-int/2addr v2, v5

    .line 61
    iget v5, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;->m_fcy:I

    add-int/2addr v5, v14

    add-int/2addr v5, v10

    const/high16 v16, 0x10000

    div-int v5, v5, v16

    if-ltz v2, :cond_3

    if-ge v2, v8, :cond_3

    if-ltz v5, :cond_3

    if-ge v5, v9, :cond_3

    .line 63
    invoke-virtual {v7, v2, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v10

    const/16 v0, 0xff

    mul-int/2addr v10, v0

    add-int/2addr v1, v10

    .line 64
    invoke-virtual {v7, v2, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v10

    mul-int/2addr v10, v0

    add-int/2addr v3, v10

    .line 65
    invoke-virtual {v7, v2, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v2

    mul-int/2addr v2, v0

    add-int/2addr v4, v2

    add-int/lit16 v11, v11, 0xff

    goto :goto_3

    :cond_3
    const/16 v0, 0xff

    :goto_3
    add-int/lit8 v15, v15, 0x1

    const v10, 0x8000

    move-object/from16 v0, p0

    move/from16 v5, v16

    goto :goto_2
.end method
