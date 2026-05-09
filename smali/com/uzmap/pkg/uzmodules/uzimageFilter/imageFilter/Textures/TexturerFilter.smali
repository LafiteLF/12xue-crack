.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;
.super Ljava/lang/Object;
.source "TexturerFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private filterLevel:D

.field private preserveLevel:D

.field private texture:[[F

.field private textureGenerator:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 34
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    .line 71
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->textureGenerator:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;DD)V
    .locals 4

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 34
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    .line 84
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->textureGenerator:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 85
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 86
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    return-void
.end method

.method public constructor <init>([[F)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 34
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    .line 45
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    return-void
.end method

.method public constructor <init>([[FDD)V
    .locals 4

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 32
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 34
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    .line 58
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 59
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    .line 60
    invoke-static {v0, v1, p4, p5}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 93
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v8

    .line 94
    invoke-virtual/range {p1 .. p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v9

    .line 102
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->textureGenerator:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;

    if-eqz v1, :cond_0

    .line 104
    invoke-interface {v1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/ITextureGenerator;->Generate(II)[[F

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    :cond_0
    const/4 v11, 0x0

    :goto_0
    if-lt v11, v9, :cond_1

    return-object v7

    :cond_1
    const/4 v12, 0x0

    :goto_1
    if-lt v12, v8, :cond_2

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 119
    :cond_2
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->texture:[[F

    aget-object v1, v1, v11

    aget v1, v1, v12

    float-to-double v1, v1

    .line 120
    invoke-virtual {v7, v12, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 121
    invoke-virtual {v7, v12, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 122
    invoke-virtual {v7, v12, v11}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    .line 125
    iget-wide v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    move v15, v11

    int-to-double v10, v3

    mul-double/2addr v13, v10

    iget-wide v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    mul-double/2addr v6, v10

    mul-double/2addr v6, v1

    add-double/2addr v13, v6

    const-wide v6, 0x406fe00000000000L    # 255.0

    invoke-static {v6, v7, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    double-to-int v3, v10

    int-to-byte v10, v3

    .line 126
    iget-wide v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    int-to-double v3, v4

    mul-double/2addr v13, v3

    iget-wide v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    mul-double/2addr v6, v3

    mul-double/2addr v6, v1

    add-double/2addr v13, v6

    const-wide v3, 0x406fe00000000000L    # 255.0

    invoke-static {v3, v4, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v6

    double-to-int v6, v6

    int-to-byte v6, v6

    .line 127
    iget-wide v13, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->preserveLevel:D

    int-to-double v3, v5

    mul-double/2addr v13, v3

    move v11, v8

    iget-wide v7, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Textures/TexturerFilter;->filterLevel:D

    mul-double/2addr v7, v3

    mul-double/2addr v7, v1

    add-double/2addr v13, v7

    const-wide v1, 0x406fe00000000000L    # 255.0

    invoke-static {v1, v2, v13, v14}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    double-to-int v1, v1

    int-to-byte v7, v1

    move-object/from16 v1, p1

    move v2, v12

    move v3, v15

    move v4, v10

    move v5, v6

    move v6, v7

    .line 128
    invoke-virtual/range {v1 .. v6}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v7, p1

    move v8, v11

    move v11, v15

    goto :goto_1
.end method
