.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;
.super Ljava/lang/Object;
.source "RainBowFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# instance fields
.field public IsDoubleRainbow:Z

.field public blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

.field public gradAngleDegree:F

.field private gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->IsDoubleRainbow:Z

    const/high16 v1, 0x42200000    # 40.0f

    .line 30
    iput v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->gradAngleDegree:F

    const/high16 v1, 0x3e800000    # 0.25f

    .line 33
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 34
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    sget v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Additive:I

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    const/4 v0, 0x1

    .line 36
    iput-boolean v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->IsDoubleRainbow:Z

    .line 38
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->RainBow()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->MapColors:Ljava/util/List;

    .line 39
    iget-boolean v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->IsDoubleRainbow:Z

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 42
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->RainBow()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->MapColors:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 44
    :cond_0
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    .line 45
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->gradAngleDegree:F

    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->OriginAngleDegree:F

    .line 46
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    iput-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->Gradient:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->gradientFx:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;->blender:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-virtual {v1, p1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
