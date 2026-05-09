.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;
.super Ljava/lang/Object;
.source "YCBCrLinearFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "YCbCr"
.end annotation


# instance fields
.field public Cb:F

.field public CbIndex:S

.field public Cr:F

.field public CrIndex:S

.field public Y:F

.field public YIndex:S


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->YIndex:S

    const/4 v0, 0x1

    .line 156
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->CbIndex:S

    const/4 v0, 0x2

    .line 161
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->CrIndex:S

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 1

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 151
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->YIndex:S

    const/4 v0, 0x1

    .line 156
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->CbIndex:S

    const/4 v0, 0x2

    .line 161
    iput-short v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->CrIndex:S

    const/high16 v0, 0x3f800000    # 1.0f

    .line 193
    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    const/high16 p1, 0x3f000000    # 0.5f

    .line 194
    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    const/high16 v0, -0x41000000    # -0.5f

    invoke-static {v0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    .line 195
    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    return-void
.end method

.method public static FromRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;
    .locals 1

    .line 227
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;-><init>()V

    .line 228
    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->FromRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;

    return-object v0
.end method

.method public static FromRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;
    .locals 13

    .line 207
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    .line 208
    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    int-to-float v2, v2

    div-float/2addr v2, v1

    .line 209
    iget p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    int-to-float p0, p0

    div-float/2addr p0, v1

    float-to-double v0, v0

    const-wide v3, 0x3fd3212d77318fc5L    # 0.2989

    mul-double/2addr v3, v0

    float-to-double v5, v2

    const-wide v7, 0x3fe2c56d5cfaacdaL    # 0.5866

    mul-double/2addr v7, v5

    add-double/2addr v3, v7

    float-to-double v7, p0

    const-wide v9, 0x3fbd4fdf3b645a1dL    # 0.1145

    mul-double/2addr v9, v7

    add-double/2addr v3, v9

    double-to-float p0, v3

    .line 211
    iput p0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    const-wide v2, -0x403a6809d495182bL    # -0.1687

    mul-double/2addr v2, v0

    const-wide v9, 0x3fd53404ea4a8c15L    # 0.3313

    mul-double/2addr v9, v5

    sub-double/2addr v2, v9

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v11, v7, v9

    add-double/2addr v2, v11

    double-to-float p0, v2

    .line 212
    iput p0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    mul-double/2addr v0, v9

    const-wide v2, 0x3fdac710cb295e9eL    # 0.4184

    mul-double/2addr v5, v2

    sub-double/2addr v0, v5

    const-wide v2, 0x3fb4e3bcd35a8588L    # 0.0816

    mul-double/2addr v7, v2

    sub-double/2addr v0, v7

    double-to-float p0, v0

    .line 213
    iput p0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    return-object p1
.end method

.method public static ToRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;
    .locals 12

    .line 242
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    float-to-double v0, v0

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    float-to-double v2, v2

    const-wide/16 v4, 0x0

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    float-to-double v2, v2

    const-wide v6, 0x3ff66f694467381dL    # 1.4022

    mul-double/2addr v2, v6

    add-double/2addr v0, v2

    double-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 243
    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    float-to-double v6, v3

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    float-to-double v8, v3

    const-wide v10, 0x3fd61e4f765fd8aeL    # 0.3456

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    iget v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    float-to-double v8, v3

    const-wide v10, 0x3fe6dd2f1a9fbe77L    # 0.7145

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    double-to-float v3, v6

    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 244
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Y:F

    float-to-double v6, v6

    iget v8, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cb:F

    float-to-double v8, v8

    const-wide v10, 0x3ffc5604189374bcL    # 1.771

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    iget p0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->Cr:F

    float-to-double v8, p0

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    double-to-float p0, v6

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    int-to-byte v0, v0

    .line 246
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    mul-float/2addr v3, v1

    float-to-int v0, v3

    int-to-byte v0, v0

    .line 247
    iput v0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    mul-float/2addr p0, v1

    float-to-int p0, p0

    int-to-byte p0, p0

    .line 248
    iput p0, p1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    return-object p1
.end method


# virtual methods
.method public ToRGB()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;
    .locals 1

    .line 261
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;-><init>()V

    .line 262
    invoke-static {p0, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;->ToRGB(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$YCbCr;Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;

    return-object v0
.end method
