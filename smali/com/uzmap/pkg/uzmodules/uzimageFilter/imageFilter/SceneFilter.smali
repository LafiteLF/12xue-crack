.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;
.super Ljava/lang/Object;
.source "SceneFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

.field private saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;


# direct methods
.method public constructor <init>(FLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    .line 36
    iput-object p2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    .line 37
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    iput p1, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->OriginAngleDegree:F

    .line 39
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    const p2, -0x40e66666    # -0.6f

    .line 40
    iput p2, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 3

    .line 46
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 48
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    .line 49
    sget v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Subractive:I

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 50
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SceneFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
