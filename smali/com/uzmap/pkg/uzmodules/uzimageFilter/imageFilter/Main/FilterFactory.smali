.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/FilterFactory;
.super Ljava/lang/Object;
.source "FilterFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFilter(Ljava/lang/String;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;
    .locals 1

    const-string v0, "black_white"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "asher"

    const-string p1, "FilterFactory - black_white"

    .line 19
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;-><init>()V

    return-object p0

    :cond_0
    const-string v0, "autumn"

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 22
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BlackWhiteFilter;-><init>()V

    return-object p0

    :cond_1
    const-string v0, "color_pencil"

    .line 23
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;-><init>()V

    return-object p0

    :cond_2
    const-string v0, "dream"

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/GammaFilter;-><init>(I)V

    return-object p0

    :cond_3
    const-string v0, "engrave"

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReliefFilter;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ReliefFilter;-><init>()V

    return-object p0

    :cond_4
    const-string v0, "film"

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/FilmFilter;-><init>(F)V

    return-object p0

    :cond_5
    const-string v0, "fresh"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;

    int-to-float p1, p1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/HslModifyFilter;-><init>(F)V

    return-object p0

    :cond_6
    const-string v0, "rainbow"

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 34
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RainBowFilter;-><init>()V

    return-object p0

    :cond_7
    const-string v0, "blur"

    .line 35
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 36
    new-instance p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/ZoomBlurFilter;-><init>(I)V

    return-object p0

    :cond_8
    const/4 p0, 0x0

    return-object p0
.end method
