.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;
.super Ljava/lang/Object;
.source "LensFlareFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;,
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;
    }
.end annotation


# instance fields
.field _color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field _glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field _halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field _inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field _numref:I

.field _outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field _point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

.field _reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

.field _scolor:D

.field _sglow:D

.field _shalo:D

.field _sinner:D

.field _souter:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    .line 45
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    .line 48
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 49
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 50
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 51
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 59
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;-><init>(FF)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    .line 45
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    .line 48
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 49
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 50
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 51
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 52
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    .line 55
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    return-void
.end method

.method static FHypot(DD)D
    .locals 0

    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    .line 285
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I
    .locals 6

    const/high16 v0, 0xff0000

    and-int/2addr v0, p0

    shr-int/lit8 v0, v0, 0x10

    const v1, 0xff00

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 p0, p0, 0xff

    rsub-int v2, v0, 0xff

    int-to-double v2, v2

    mul-double/2addr v2, p1

    .line 133
    iget-wide v4, p3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v0, v2

    rsub-int v2, v1, 0xff

    int-to-double v2, v2

    mul-double/2addr v2, p1

    .line 134
    iget-wide v4, p3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    mul-double/2addr v2, v4

    double-to-int v2, v2

    add-int/2addr v1, v2

    rsub-int v2, p0, 0xff

    int-to-double v2, v2

    mul-double/2addr v2, p1

    .line 135
    iget-wide p1, p3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    mul-double/2addr v2, p1

    double-to-int p1, v2

    add-int/2addr p0, p1

    .line 136
    invoke-static {v0, v1, p0}, Landroid/graphics/Color;->rgb(III)I

    move-result p0

    return p0
.end method


# virtual methods
.method initref(IIIII)V
    .locals 26

    move-object/from16 v0, p0

    const/4 v1, 0x2

    .line 64
    div-int/lit8 v2, p3, 0x2

    .line 65
    div-int/lit8 v3, p4, 0x2

    sub-int v4, v2, p1

    sub-int v5, v3, p2

    const/16 v6, 0x13

    .line 68
    iput v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_numref:I

    .line 69
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v7, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v7, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v8

    const/4 v7, 0x1

    iput v7, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v8

    move/from16 v9, p5

    int-to-double v9, v9

    const-wide v11, 0x3f9ba5e353f7ced9L    # 0.027

    mul-double/2addr v11, v9

    iput-wide v11, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 70
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v8

    int-to-double v11, v4

    const-wide v13, 0x3fe56fd21ff2e48fL    # 0.6699

    mul-double/2addr v13, v11

    int-to-double v7, v2

    add-double/2addr v13, v7

    double-to-int v13, v13

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x0

    aget-object v6, v6, v13

    int-to-double v14, v5

    const-wide v16, 0x3fe56fd21ff2e48fL    # 0.6699

    mul-double v16, v16, v14

    move/from16 p3, v2

    int-to-double v1, v3

    move-wide/from16 p4, v14

    add-double v13, v16, v1

    double-to-int v13, v13

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 71
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x0

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v14, 0x0

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fac1c1c1c1c1c1cL    # 0.054901960784313725

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fdc5c5c5c5c5c5cL    # 0.44313725490196076

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 72
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x1

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v18, 0x3f847ae147ae147bL    # 0.01

    mul-double v14, v9, v18

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 73
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x1

    aget-object v6, v6, v13

    const-wide v14, 0x3fd13a92a3055326L    # 0.2692

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, 0x3fd13a92a3055326L    # 0.2692

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 74
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fd6969696969697L    # 0.35294117647058826

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fe6b6b6b6b6b6b7L    # 0.7098039215686275

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fe1d1d1d1d1d1d2L    # 0.5568627450980392

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 75
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v14, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v14, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v15, 0x2

    aput-object v14, v6, v15

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    const-wide v13, 0x3f747ae147ae147bL    # 0.005

    mul-double/2addr v13, v9

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 76
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    const-wide v13, -0x40790ff972474539L    # -0.0112

    mul-double/2addr v13, v11

    add-double/2addr v13, v7

    double-to-int v13, v13

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    const-wide v13, -0x40790ff972474539L    # -0.0112

    mul-double v13, v13, p4

    add-double/2addr v13, v1

    double-to-int v13, v13

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 77
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fcc1c1c1c1c1c1cL    # 0.2196078431372549

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fe1919191919192L    # 0.5490196078431373

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v15

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fda9a9a9a9a9a9bL    # 0.41568627450980394

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 78
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x3

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    iput v15, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v18, 0x3f9fbe76c8b43958L    # 0.031

    mul-double v14, v9, v18

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 79
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x3

    aget-object v6, v6, v13

    const-wide v14, 0x3fe4c49ba5e353f8L    # 0.649

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, 0x3fe4c49ba5e353f8L    # 0.649

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 80
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fbd1d1d1d1d1d1dL    # 0.11372549019607843

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fb3131313131313L    # 0.07450980392156863

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 81
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x4

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3f8eb851eb851eb8L    # 0.015

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 82
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x4

    aget-object v6, v6, v13

    const-wide v14, 0x3fde0ded288ce704L    # 0.4696

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, 0x3fde0ded288ce704L    # 0.4696

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 83
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fb8181818181818L    # 0.09411764705882353

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fac1c1c1c1c1c1cL    # 0.054901960784313725

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v13, 0x0

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 84
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x5

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3fa2f1a9fbe76c8bL    # 0.037

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 85
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x5

    aget-object v6, v6, v13

    const-wide v14, 0x3fda28240b780347L    # 0.4087

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, 0x3fda28240b780347L    # 0.4087

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 86
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fb8181818181818L    # 0.09411764705882353

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fac1c1c1c1c1c1cL    # 0.054901960784313725

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v13, 0x0

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 87
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x6

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3f96872b020c49baL    # 0.022

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 88
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x6

    aget-object v6, v6, v13

    const-wide v14, -0x40365c91d14e3bcdL    # -0.2003

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, -0x40365c91d14e3bcdL    # -0.2003

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 89
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fc5151515151515L    # 0.16470588235294117

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fb3131313131313L    # 0.07450980392156863

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v13, 0x0

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 90
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/4 v14, 0x7

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3f9999999999999aL    # 0.025

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 91
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/4 v13, 0x7

    aget-object v6, v6, v13

    const-wide v14, -0x4025bda5119ce076L    # -0.4103

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, -0x4025bda5119ce076L    # -0.4103

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 92
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fb1111111111111L    # 0.06666666666666667

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v13, 0x0

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    .line 93
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v14, 0x8

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3fadb22d0e560419L    # 0.058

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 94
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v13, 0x8

    aget-object v6, v6, v13

    const-wide v14, -0x40232e48e8a71de7L    # -0.4503

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, -0x40232e48e8a71de7L    # -0.4503

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 95
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3fa4141414141414L    # 0.0392156862745098

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v13, 0x0

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    .line 96
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v14, 0x9

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3f916872b020c49cL    # 0.017

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 97
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v13, 0x9

    aget-object v6, v6, v13

    const-wide v14, -0x401fa43fe5c91d15L    # -0.5112

    mul-double/2addr v14, v11

    add-double/2addr v14, v7

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    const-wide v14, -0x401fa43fe5c91d15L    # -0.5112

    mul-double v14, v14, p4

    add-double/2addr v14, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 98
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v14, 0x3f94141414141414L    # 0.0196078431372549

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v13

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fac1c1c1c1c1c1cL    # 0.054901960784313725

    iput-wide v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 99
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v13, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v13, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v14, 0xa

    aput-object v13, v6, v14

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const/4 v13, 0x2

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v6, v6, v14

    const-wide v20, 0x3fc999999999999aL    # 0.2

    mul-double v14, v9, v20

    iput-wide v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 100
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v13, 0xa

    aget-object v6, v6, v13

    const-wide v20, -0x400810624dd2f1aaL    # -1.496

    mul-double v20, v20, v11

    move-wide/from16 v22, v14

    add-double v13, v20, v7

    double-to-int v13, v13

    iput v13, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v14, 0xa

    aget-object v6, v6, v14

    const-wide v20, -0x400810624dd2f1aaL    # -1.496

    mul-double v20, v20, p4

    add-double v14, v20, v1

    double-to-int v14, v14

    iput v14, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 101
    iget-object v6, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v15, 0xa

    aget-object v6, v6, v15

    iget-object v6, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    move/from16 v20, v3

    move/from16 v21, v4

    const-wide v3, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v3, v6, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    move v6, v5

    const-wide v4, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v15

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 102
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v5, 0xb

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const/4 v4, 0x2

    iput v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    move v4, v6

    mul-double v5, v9, v24

    iput-wide v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 103
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    const/16 v5, 0xb

    aget-object v3, v3, v5

    iput v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iput v14, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 104
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 105
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v6, 0xc

    aput-object v5, v3, v6

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const/4 v5, 0x3

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const-wide v13, 0x3fb3333333333333L    # 0.075

    mul-double/2addr v13, v9

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 106
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const-wide v13, 0x3fdcb780346dc5d6L    # 0.4487

    mul-double/2addr v13, v11

    add-double/2addr v13, v7

    double-to-int v5, v13

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const-wide v13, 0x3fdcb780346dc5d6L    # 0.4487

    mul-double v14, p4, v13

    add-double/2addr v14, v1

    double-to-int v5, v14

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 107
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fc1111111111111L    # 0.13333333333333333

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fb3131313131313L    # 0.07450980392156863

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v5, 0x0

    iput-wide v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 108
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v6, 0xd

    aput-object v5, v3, v6

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const/4 v5, 0x3

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    const-wide v13, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v13, v9

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 109
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    add-int v5, v21, p3

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    add-int v5, v4, v20

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 110
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v4, 0x3fac1c1c1c1c1c1cL    # 0.054901960784313725

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v4, 0x3fba1a1a1a1a1a1aL    # 0.10196078431372549

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v4, 0x0

    iput-wide v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 111
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v4, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v5, 0xe

    aput-object v4, v3, v5

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const/4 v4, 0x3

    iput v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const-wide v13, 0x3fa3f7ced916872bL    # 0.039

    mul-double/2addr v13, v9

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 112
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const-wide v13, -0x400b2f1a9fbe76c9L    # -1.301

    mul-double/2addr v13, v11

    add-double/2addr v13, v7

    double-to-int v4, v13

    iput v4, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    const-wide v13, -0x400b2f1a9fbe76c9L    # -1.301

    mul-double v14, p4, v13

    add-double/2addr v14, v1

    double-to-int v6, v14

    iput v6, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 113
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fa4141414141414L    # 0.0392156862745098

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3fb9191919191919L    # 0.09803921568627451

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v13, 0x3faa1a1a1a1a1a1aL    # 0.050980392156862744

    iput-wide v13, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 114
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v5, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v13, 0xf

    aput-object v5, v3, v13

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v13

    const/4 v5, 0x4

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v13

    const-wide v14, 0x3fc851eb851eb852L    # 0.19

    mul-double/2addr v14, v9

    iput-wide v14, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 115
    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v13

    const-wide v14, 0x3ff4f1a9fbe76c8bL    # 1.309

    mul-double/2addr v11, v14

    add-double/2addr v11, v7

    double-to-int v5, v11

    iput v5, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v3, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v3, v3, v13

    const-wide v7, 0x3ff4f1a9fbe76c8bL    # 1.309

    mul-double v14, p4, v7

    add-double/2addr v14, v1

    double-to-int v1, v14

    iput v1, v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 116
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v7, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v7, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v7, 0x0

    iput-wide v7, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v13

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v7, 0x3fb1111111111111L    # 0.06666666666666667

    iput-wide v7, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 117
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v7, 0x10

    aput-object v3, v2, v7

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    const/4 v3, 0x4

    iput v3, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    const-wide v11, 0x3fc8f5c28f5c28f6L    # 0.195

    mul-double/2addr v11, v9

    iput-wide v11, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 118
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iput v5, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iput v1, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 119
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v11, 0x3fa2121212121212L    # 0.03529411764705882

    iput-wide v11, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v11, 0x3fb0101010101010L    # 0.06274509803921569

    iput-wide v11, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iget-object v2, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v7, 0x3f94141414141414L    # 0.0196078431372549

    iput-wide v7, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 120
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v3, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v3, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v7, 0x11

    aput-object v3, v2, v7

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    const/4 v3, 0x4

    iput v3, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    move-wide/from16 v11, v22

    iput-wide v11, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 121
    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iput v5, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v2, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v2, v2, v7

    iput v1, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 122
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v2, 0x3fb1111111111111L    # 0.06666666666666667

    iput-wide v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v2, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v7

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 123
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    invoke-direct {v2, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    const/4 v2, 0x4

    iput v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    const-wide v7, 0x3fa374bc6a7ef9dbL    # 0.038

    mul-double/2addr v9, v7

    iput-wide v9, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    .line 124
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    iput v4, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    iput v6, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    .line 125
    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v4, 0x3fb1111111111111L    # 0.06666666666666667

    iput-wide v4, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v4, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v4, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v1, v1, v3

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    return-void
.end method

.method mcolor(ID)I
    .locals 2

    .line 141
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_scolor:D

    div-double/2addr p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-lez p2, :cond_0

    mul-double/2addr v0, v0

    .line 145
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method mglow(ID)I
    .locals 2

    .line 152
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_sglow:D

    div-double/2addr p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-lez p2, :cond_0

    mul-double/2addr v0, v0

    .line 156
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method mhalo(ID)I
    .locals 4

    .line 182
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_shalo:D

    sub-double/2addr p2, v0

    const-wide v2, 0x3fb1eb851eb851ecL    # 0.07

    mul-double/2addr v0, v2

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    sub-double/2addr v0, p2

    .line 184
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method minner(ID)I
    .locals 2

    .line 163
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_sinner:D

    div-double/2addr p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-lez p2, :cond_0

    mul-double/2addr v0, v0

    .line 167
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method mouter(ID)I
    .locals 2

    .line 174
    iget-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_souter:D

    div-double/2addr p2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p2

    const-wide/16 p2, 0x0

    cmpl-double p2, v0, p2

    if-lez p2, :cond_0

    .line 176
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method mrt1(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I
    .locals 2

    .line 190
    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    sub-int/2addr v0, p3

    int-to-double v0, v0

    iget p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    sub-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {v0, v1, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->FHypot(DD)D

    move-result-wide p3

    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p3

    const-wide/16 p3, 0x0

    cmpl-double p3, v0, p3

    if-lez p3, :cond_0

    mul-double/2addr v0, v0

    .line 194
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method mrt2(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I
    .locals 4

    .line 201
    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    iget v2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    sub-int/2addr v2, p3

    int-to-double v2, v2

    iget p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    sub-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {v2, v3, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->FHypot(DD)D

    move-result-wide p3

    sub-double/2addr v0, p3

    .line 202
    iget-wide p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    const-wide v2, 0x3fc3333333333333L    # 0.15

    mul-double/2addr p3, v2

    div-double/2addr v0, p3

    const-wide/16 p3, 0x0

    cmpl-double p3, v0, p3

    if-lez p3, :cond_1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v0, p3

    if-lez v2, :cond_0

    move-wide v0, p3

    .line 207
    :cond_0
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_1
    return p1
.end method

.method mrt3(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I
    .locals 5

    .line 214
    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    iget v2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    sub-int/2addr v2, p3

    int-to-double v2, v2

    iget p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    sub-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {v2, v3, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->FHypot(DD)D

    move-result-wide p3

    sub-double/2addr v0, p3

    .line 215
    iget-wide p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    const-wide v2, 0x3fbeb851eb851eb8L    # 0.12

    mul-double/2addr p3, v2

    div-double/2addr v0, p3

    const-wide/16 p3, 0x0

    cmpl-double p3, v0, p3

    if-lez p3, :cond_1

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v0, p3

    if-lez v4, :cond_0

    mul-double/2addr v0, v2

    sub-double v0, p3, v0

    .line 220
    :cond_0
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_1
    return p1
.end method

.method mrt4(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I
    .locals 4

    .line 227
    iget v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->xp:I

    sub-int/2addr v0, p3

    int-to-double v0, v0

    iget p3, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->yp:I

    sub-int/2addr p3, p4

    int-to-double p3, p3

    invoke-static {v0, v1, p3, p4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->FHypot(DD)D

    move-result-wide p3

    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    sub-double/2addr p3, v0

    .line 228
    iget-wide v0, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->size:D

    const-wide v2, 0x3fa47ae147ae147bL    # 0.04

    mul-double/2addr v0, v2

    div-double/2addr p3, v0

    .line 229
    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v2, p3, v0

    if-gez v2, :cond_0

    sub-double/2addr v0, p3

    .line 231
    iget-object p2, p2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-static {p1, v0, v1, p2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->fixpix(IDLcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;)I

    move-result p1

    :cond_0
    return p1
.end method

.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 10

    .line 237
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v6

    .line 239
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v7

    .line 240
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v1, v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    div-int/lit8 v1, v6, 0x2

    int-to-float v1, v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    .line 242
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    div-int/lit8 v1, v7, 0x2

    int-to-float v1, v1

    iput v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    :cond_0
    int-to-double v0, v6

    const-wide v2, 0x3fa3333333333333L    # 0.0375

    mul-double/2addr v2, v0

    .line 244
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_scolor:D

    const-wide/high16 v2, 0x3fb4000000000000L    # 0.078125

    mul-double/2addr v2, v0

    .line 245
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_sglow:D

    const-wide/high16 v2, 0x3fc7000000000000L    # 0.1796875

    mul-double/2addr v2, v0

    .line 246
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_sinner:D

    const-wide v2, 0x3fd5800000000000L    # 0.3359375

    mul-double/2addr v2, v0

    .line 247
    iput-wide v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_souter:D

    const-wide v2, 0x3fb599999999999aL    # 0.084375

    mul-double/2addr v0, v2

    .line 248
    iput-wide v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_shalo:D

    .line 250
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fedfdfdfdfdfdfeL    # 0.9372549019607843

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_color:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 251
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3feebebebebebebfL    # 0.9607843137254902

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_glow:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 252
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fc3131313131313L    # 0.14901960784313725

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_inner:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fc5959595959596L    # 0.16862745098039217

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 253
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fd1515151515151L    # 0.27058823529411763

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fcd9d9d9d9d9d9eL    # 0.23137254901960785

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_outer:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fd0101010101010L    # 0.25098039215686274

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 254
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fd4141414141414L    # 0.3137254901960784

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->r:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3fae1e1e1e1e1e1eL    # 0.058823529411764705

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->g:D

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_halo:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    const-wide v1, 0x3f90101010101010L    # 0.01568627450980392

    iput-wide v1, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;->b:D

    .line 256
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    float-to-int v1, v0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v0, v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    float-to-int v2, v0

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v4

    move-object v0, p0

    move v3, v6

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->initref(IIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lt v1, v6, :cond_1

    return-object p1

    :cond_1
    move v2, v0

    :goto_1
    if-lt v2, v7, :cond_2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    int-to-float v3, v1

    .line 259
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v4, v4, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    int-to-float v5, v2

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_point:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;

    iget v8, v8, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    sub-float/2addr v5, v8

    float-to-double v8, v5

    invoke-static {v3, v4, v8, v9}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->FHypot(DD)D

    move-result-wide v3

    .line 260
    invoke-virtual {p1, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getPixelColor(II)I

    move-result v5

    .line 261
    invoke-virtual {p0, v5, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mcolor(ID)I

    move-result v5

    .line 262
    invoke-virtual {p0, v5, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mglow(ID)I

    move-result v5

    .line 263
    invoke-virtual {p0, v5, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->minner(ID)I

    move-result v5

    .line 264
    invoke-virtual {p0, v5, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mouter(ID)I

    move-result v5

    .line 265
    invoke-virtual {p0, v5, v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mhalo(ID)I

    move-result v3

    move v4, v0

    .line 267
    :goto_2
    iget v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_numref:I

    if-lt v4, v5, :cond_3

    .line 277
    invoke-virtual {p1, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(III)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 269
    :cond_3
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->type:I

    const/4 v8, 0x1

    if-eq v5, v8, :cond_7

    const/4 v8, 0x2

    if-eq v5, v8, :cond_6

    const/4 v8, 0x3

    if-eq v5, v8, :cond_5

    const/4 v8, 0x4

    if-eq v5, v8, :cond_4

    goto :goto_3

    .line 274
    :cond_4
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v5, v5, v4

    invoke-virtual {p0, v3, v5, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mrt4(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I

    move-result v3

    goto :goto_3

    .line 273
    :cond_5
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v5, v5, v4

    invoke-virtual {p0, v3, v5, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mrt3(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I

    move-result v3

    goto :goto_3

    .line 272
    :cond_6
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v5, v5, v4

    invoke-virtual {p0, v3, v5, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mrt2(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I

    move-result v3

    goto :goto_3

    .line 271
    :cond_7
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->_reflect:[Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;

    aget-object v5, v5, v4

    invoke-virtual {p0, v3, v5, v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;->mrt1(ILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;II)I

    move-result v3

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method
