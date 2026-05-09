.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;
.super Ljava/lang/Object;
.source "SoftGlowFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

.field gaussianBlurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;


# direct methods
.method public constructor <init>(IFF)V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    .line 25
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->gaussianBlurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    .line 28
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    iput p2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->BrightnessFactor:F

    .line 29
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    iput p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->ContrastFactor:F

    .line 30
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->gaussianBlurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    int-to-float p1, p1

    iput p1, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Sigma:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 10

    .line 35
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 36
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->gaussianBlurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 37
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SoftGlowFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    const/4 v1, 0x0

    move v8, v1

    .line 40
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v8, v2, :cond_0

    return-object p1

    :cond_0
    move v9, v1

    .line 41
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v9, v2, :cond_1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 42
    :cond_1
    invoke-virtual {v0, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v2

    .line 43
    invoke-virtual {v0, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    .line 44
    invoke-virtual {v0, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v4

    rsub-int v2, v2, 0xff

    .line 46
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v5

    rsub-int v5, v5, 0xff

    mul-int/2addr v2, v5

    div-int/lit16 v2, v2, 0xff

    rsub-int v5, v2, 0xff

    rsub-int v2, v3, 0xff

    .line 47
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v6, v2, 0xff

    rsub-int v2, v4, 0xff

    .line 48
    invoke-virtual {p1, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v3

    rsub-int v3, v3, 0xff

    mul-int/2addr v2, v3

    div-int/lit16 v2, v2, 0xff

    rsub-int v7, v2, 0xff

    move-object v2, p1

    move v3, v8

    move v4, v9

    .line 49
    invoke-virtual/range {v2 .. v7}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_1
.end method
