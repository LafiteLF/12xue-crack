.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;
.super Ljava/lang/Object;
.source "LomoFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field private contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

.field private gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

.field private noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

.field private vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    .line 32
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    .line 33
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    .line 35
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    .line 39
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    const v1, 0x3d4ccccd    # 0.05f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->BrightnessFactor:F

    .line 40
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->ContrastFactor:F

    .line 42
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 43
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Multiply:I

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 45
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    const v1, 0x3f19999a    # 0.6f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    .line 47
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    const v1, 0x3ca3d70a    # 0.02f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->Intensity:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 52
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->contrastFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BrightContrastFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 54
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->gradientMapFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 56
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LomoFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
