.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;
.super Ljava/lang/Object;
.source "NightVisionFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field private gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

.field private noisefx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

.field private vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->noisefx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    .line 33
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    .line 35
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    .line 38
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->noisefx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    const v1, 0x3e19999a    # 0.15f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->Intensity:F

    .line 40
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x1000000

    .line 43
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v1, -0xff0100

    .line 44
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    iput-object v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->Map:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    .line 46
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    const v1, 0x3e4ccccd    # 0.2f

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->BrightnessFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->noisefx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 52
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NightVisionFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
