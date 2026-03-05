.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MonitorFilter;
.super Ljava/lang/Object;
.source "MonitorFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getValidInterval(I)I
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 v0, 0xff

    if-le p1, v0, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    const/4 v9, 0x0

    .line 26
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-lt v9, v1, :cond_0

    return-object v7

    :cond_0
    const/4 v10, 0x0

    .line 27
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-lt v10, v1, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    const/4 v11, 0x3

    const/4 v12, 0x2

    if-lt v1, v11, :cond_7

    .line 38
    invoke-virtual {v0, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MonitorFilter;->getValidInterval(I)I

    move-result v13

    .line 39
    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MonitorFilter;->getValidInterval(I)I

    move-result v14

    .line 40
    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/MonitorFilter;->getValidInterval(I)I

    move-result v15

    const/4 v6, 0x0

    :goto_3
    if-lt v6, v11, :cond_2

    add-int/lit8 v10, v10, 0x3

    goto :goto_1

    :cond_2
    add-int v3, v10, v6

    .line 43
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-ge v3, v1, :cond_5

    if-nez v6, :cond_3

    const/4 v5, 0x0

    const/16 v16, 0x0

    move-object/from16 v1, p1

    move v2, v9

    move v4, v13

    move v8, v6

    move/from16 v6, v16

    .line 45
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_4

    :cond_3
    move v8, v6

    const/4 v1, 0x1

    if-ne v8, v1, :cond_4

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move v2, v9

    move v5, v14

    .line 48
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_4

    :cond_4
    if-ne v8, v12, :cond_6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v2, v9

    move v6, v15

    .line 51
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_4

    :cond_5
    move v8, v6

    :cond_6
    :goto_4
    add-int/lit8 v6, v8, 0x1

    goto :goto_3

    :cond_7
    add-int v5, v10, v1

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v6

    if-ge v5, v6, :cond_8

    .line 33
    invoke-virtual {v7, v9, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v6

    div-int/2addr v6, v12

    add-int/2addr v2, v6

    .line 34
    invoke-virtual {v7, v9, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v6

    div-int/2addr v6, v12

    add-int/2addr v3, v6

    .line 35
    invoke-virtual {v7, v9, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    div-int/2addr v5, v12

    add-int/2addr v4, v5

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method
