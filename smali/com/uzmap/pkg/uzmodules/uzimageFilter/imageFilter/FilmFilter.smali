.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;
.super Ljava/lang/Object;
.source "FilmFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field private gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

.field private saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;->gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    .line 35
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->Fade()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    move-result-object v1

    iput-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    .line 36
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;->gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    iput p1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->OriginAngleDegree:F

    .line 38
    new-instance p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-direct {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    const v0, -0x40e66666    # -0.6f

    .line 39
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->SaturationFactor:F

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 3

    .line 45
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 46
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;->gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-virtual {v1, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 47
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    .line 48
    sget v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Multiply:I

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 49
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;->saturationFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;

    invoke-virtual {v1, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/SaturationModifyFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
