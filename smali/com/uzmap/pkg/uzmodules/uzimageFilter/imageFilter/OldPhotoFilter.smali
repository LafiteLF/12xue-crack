.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;
.super Ljava/lang/Object;
.source "OldPhotoFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

.field private gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

.field private noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

.field private vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    const v1, 0x3e99999a    # 0.3f

    .line 29
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->Sigma:F

    .line 31
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    const v2, 0x3cf5c28f    # 0.03f

    .line 32
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->Intensity:F

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    const v2, 0x3f19999a    # 0.6f

    .line 35
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    .line 37
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    .line 38
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->ContrastFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->noiseFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->blurFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GaussianBlurFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/NoiseFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 45
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/OldPhotoFilter;->vignetteFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
