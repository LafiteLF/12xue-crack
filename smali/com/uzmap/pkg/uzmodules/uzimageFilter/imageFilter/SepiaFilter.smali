.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;
.super Ljava/lang/Object;
.source "SepiaFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

.field private saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->BlackSepia()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    const v1, 0x3e4ccccd    # 0.2f

    .line 27
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->ContrastFactor:F

    .line 28
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    const v1, 0x3dcccccd    # 0.1f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->BrightnessFactor:F

    .line 30
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    const v1, -0x40e66666    # -0.6f

    .line 31
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SepiaFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
