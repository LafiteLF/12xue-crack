.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;
.super Ljava/lang/Object;
.source "ReflectionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public IsHorizontal:Z

.field public Offset:F


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->IsHorizontal:Z

    const/high16 v0, 0x3f000000    # 0.5f

    .line 28
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->Offset:F

    .line 31
    iput-boolean p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->IsHorizontal:Z

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 16

    move-object/from16 v0, p0

    .line 38
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    .line 42
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v3

    .line 44
    iget-boolean v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->IsHorizontal:Z

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    if-eqz v4, :cond_6

    .line 46
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->Offset:F

    int-to-float v7, v1

    mul-float/2addr v7, v4

    float-to-int v7, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    sub-int v4, v1, v7

    sub-int v4, v7, v4

    move v5, v7

    goto :goto_0

    :cond_0
    add-int v4, v7, v7

    move v5, v4

    move v4, v7

    :goto_0
    if-gez v4, :cond_1

    move v4, v6

    :cond_1
    :goto_1
    if-ge v4, v5, :cond_d

    if-lt v4, v1, :cond_2

    goto/16 :goto_8

    :cond_2
    neg-int v8, v4

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_3

    move v8, v6

    goto :goto_2

    :cond_3
    if-lt v8, v1, :cond_4

    add-int/lit8 v8, v1, -0x1

    :cond_4
    :goto_2
    move v15, v6

    :goto_3
    if-lt v15, v2, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 64
    :cond_5
    invoke-virtual {v3, v15, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v12

    .line 65
    invoke-virtual {v3, v15, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v13

    .line 66
    invoke-virtual {v3, v15, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v14

    move-object/from16 v9, p1

    move v10, v15

    move v11, v8

    .line 67
    invoke-virtual/range {v9 .. v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 72
    :cond_6
    iget v4, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReflectionFilter;->Offset:F

    int-to-float v7, v2

    mul-float/2addr v7, v4

    float-to-int v7, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_7

    sub-int v4, v2, v7

    sub-int v4, v7, v4

    move v5, v7

    goto :goto_4

    :cond_7
    add-int v4, v7, v7

    move v5, v4

    move v4, v7

    :goto_4
    if-gez v4, :cond_8

    move v4, v6

    :cond_8
    :goto_5
    if-ge v4, v5, :cond_d

    if-lt v4, v2, :cond_9

    goto :goto_8

    :cond_9
    neg-int v8, v4

    mul-int/lit8 v9, v7, 0x2

    add-int/2addr v8, v9

    add-int/lit8 v8, v8, -0x1

    if-gez v8, :cond_a

    move v8, v6

    goto :goto_6

    :cond_a
    if-lt v8, v2, :cond_b

    add-int/lit8 v8, v2, -0x1

    :cond_b
    :goto_6
    move v15, v6

    :goto_7
    if-lt v15, v1, :cond_c

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 90
    :cond_c
    invoke-virtual {v3, v4, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v12

    .line 91
    invoke-virtual {v3, v4, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v13

    .line 92
    invoke-virtual {v3, v4, v15}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v14

    move-object/from16 v9, p1

    move v10, v8

    move v11, v15

    .line 93
    invoke-virtual/range {v9 .. v14}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_d
    :goto_8
    return-object p1
.end method
