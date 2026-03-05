.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;
.super Ljava/lang/Object;
.source "GradientMapFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public BrightnessFactor:F

.field public ContrastFactor:F

.field public Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    const/4 p1, 0x0

    .line 34
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->ContrastFactor:F

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->BrightnessFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    .line 44
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->CreatePalette(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    move-result-object v0

    .line 45
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Red:[I

    .line 46
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Green:[I

    .line 47
    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Blue:[I

    .line 48
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v3

    const/4 v4, -0x1

    .line 49
    invoke-virtual {v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clearImage(I)V

    .line 50
    iget v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->BrightnessFactor:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    .line 51
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->ContrastFactor:F

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    mul-float/2addr v5, v5

    const/high16 v6, 0x47000000    # 32768.0f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x0

    move v7, v6

    .line 54
    :goto_0
    iget-object v8, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    array-length v8, v8

    if-lt v7, v8, :cond_0

    return-object v3

    .line 56
    :cond_0
    iget-object v8, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v8, v8, v7

    const/high16 v9, 0xff0000

    and-int/2addr v8, v9

    ushr-int/lit8 v8, v8, 0x10

    .line 57
    iget-object v9, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v9, v9, v7

    const v10, 0xff00

    and-int/2addr v9, v10

    ushr-int/lit8 v9, v9, 0x8

    .line 58
    iget-object v10, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    aget v10, v10, v7

    const/16 v11, 0xff

    and-int/2addr v10, v11

    mul-int/lit16 v8, v8, 0x1b36

    mul-int/lit16 v9, v9, 0x5b8c

    add-int/2addr v8, v9

    mul-int/lit16 v10, v10, 0x93e

    add-int/2addr v8, v10

    shr-int/lit8 v8, v8, 0xf

    if-eqz v4, :cond_2

    add-int/2addr v8, v4

    if-le v8, v11, :cond_1

    move v8, v11

    goto :goto_1

    :cond_1
    if-gez v8, :cond_2

    move v8, v6

    :cond_2
    :goto_1
    const v9, 0x8001

    if-eq v5, v9, :cond_5

    add-int/lit8 v8, v8, -0x80

    mul-int/2addr v8, v5

    shr-int/lit8 v8, v8, 0xf

    add-int/lit16 v8, v8, 0x80

    if-le v8, v11, :cond_3

    goto :goto_2

    :cond_3
    if-gez v8, :cond_4

    move v11, v6

    goto :goto_2

    :cond_4
    move v11, v8

    :goto_2
    move v8, v11

    .line 72
    :cond_5
    iget-object v9, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->colorArray:[I

    const/high16 v10, -0x1000000

    aget v11, v1, v8

    shl-int/lit8 v11, v11, 0x10

    add-int/2addr v11, v10

    aget v10, v2, v8

    shl-int/lit8 v10, v10, 0x8

    add-int/2addr v11, v10

    aget v8, v0, v8

    add-int/2addr v11, v8

    aput v11, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method
