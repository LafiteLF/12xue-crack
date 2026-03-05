.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VintageFilter;
.super Ljava/lang/Object;
.source "VintageFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 4

    .line 28
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;

    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->BlackSepia()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;)V

    const v1, 0x3e19999a    # 0.15f

    .line 29
    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->ContrastFactor:F

    .line 31
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;

    invoke-direct {v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;-><init>()V

    const v2, 0x3f333333    # 0.7f

    .line 32
    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mixture:F

    .line 33
    sget v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender$BlendMode;->Overlay:I

    iput v3, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Mode:I

    .line 34
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->clone()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object v3

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GradientMapFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    invoke-virtual {v1, v3, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ImageBlender;->Blend(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    .line 36
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;-><init>()V

    .line 37
    iput v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->Size:F

    .line 38
    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VignetteFilter;->process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;

    move-result-object p1

    return-object p1
.end method
