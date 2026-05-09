.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
.super Ljava/lang/Object;
.source "Gradient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient$TintColors;
    }
.end annotation


# instance fields
.field public MapColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x1000000

    .line 32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, -0x1

    .line 33
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 34
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->MapColors:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->MapColors:Ljava/util/List;

    return-void
.end method

.method public static BlackSepia()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 2

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x1000000

    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient$TintColors;->Sepia()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method private CreateGradient(Ljava/util/List;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;"
        }
    .end annotation

    move-object/from16 v0, p1

    move/from16 v1, p2

    if-eqz v0, :cond_a

    .line 45
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    goto/16 :goto_5

    .line 49
    :cond_0
    new-instance v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    invoke-direct {v2, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;-><init>(I)V

    .line 50
    iget-object v3, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Red:[I

    .line 51
    iget-object v4, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Green:[I

    .line 52
    iget-object v5, v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;->Blue:[I

    .line 53
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    div-int v6, v1, v6

    const/high16 v8, 0x3f800000    # 1.0f

    int-to-float v9, v6

    div-float/2addr v8, v9

    const/4 v9, 0x0

    .line 56
    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/high16 v11, 0xff0000

    and-int v12, v10, v11

    shr-int/lit8 v12, v12, 0x10

    const v13, 0xff00

    and-int v14, v10, v13

    shr-int/lit8 v14, v14, 0x8

    const/16 v15, 0xff

    and-int/2addr v10, v15

    .line 60
    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v15

    if-lt v7, v15, :cond_2

    if-ge v9, v1, :cond_1

    add-int/lit8 v0, v9, -0x1

    .line 79
    aget v1, v3, v0

    aput v1, v3, v9

    .line 80
    aget v1, v4, v0

    aput v1, v4, v9

    .line 81
    aget v0, v5, v0

    aput v0, v5, v9

    :cond_1
    return-object v2

    .line 61
    :cond_2
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    and-int/2addr v15, v11

    shr-int/lit8 v15, v15, 0x10

    .line 62
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    and-int v16, v16, v13

    shr-int/lit8 v16, v16, 0x8

    .line 63
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/Integer;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v13, 0xff

    and-int/2addr v11, v13

    const/4 v13, 0x0

    :goto_1
    if-lt v13, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    move v10, v11

    move v12, v15

    move/from16 v14, v16

    const/high16 v11, 0xff0000

    const v13, 0xff00

    goto :goto_0

    :cond_3
    int-to-float v0, v13

    mul-float/2addr v0, v8

    sub-int v1, v15, v12

    int-to-float v1, v1

    mul-float/2addr v1, v0

    float-to-int v1, v1

    add-int/2addr v1, v12

    move-object/from16 v18, v2

    sub-int v2, v16, v14

    int-to-float v2, v2

    mul-float/2addr v2, v0

    float-to-int v2, v2

    add-int/2addr v2, v14

    move/from16 v19, v6

    sub-int v6, v11, v10

    int-to-float v6, v6

    mul-float/2addr v6, v0

    float-to-int v0, v6

    add-int/2addr v0, v10

    const/16 v6, 0xff

    if-le v1, v6, :cond_4

    move v1, v6

    goto :goto_2

    :cond_4
    if-gez v1, :cond_5

    const/4 v1, 0x0

    .line 69
    :cond_5
    :goto_2
    aput v1, v3, v9

    if-le v2, v6, :cond_6

    move v2, v6

    goto :goto_3

    :cond_6
    if-gez v2, :cond_7

    const/4 v2, 0x0

    .line 70
    :cond_7
    :goto_3
    aput v2, v4, v9

    if-le v0, v6, :cond_8

    move v0, v6

    goto :goto_4

    :cond_8
    if-gez v0, :cond_9

    const/4 v0, 0x0

    .line 71
    :cond_9
    :goto_4
    aput v0, v5, v9

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, v18

    move/from16 v6, v19

    goto :goto_1

    :cond_a
    :goto_5
    const/4 v0, 0x0

    return-object v0
.end method

.method public static Fade()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 5

    .line 141
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x1000000

    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, 0xcd

    const/16 v3, 0xe8

    const/16 v4, 0xee

    .line 143
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static Inverse()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 2

    .line 133
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 134
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, -0x1000000

    .line 135
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static RainBow()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 3

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/high16 v1, -0x10000

    .line 121
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, -0xff01

    .line 122
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, -0xffff01

    .line 123
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, -0xff0001

    .line 124
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v2, -0xff0100

    .line 125
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v2, -0x100

    .line 126
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static Scene()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 5

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xd7

    const/4 v3, 0x0

    .line 151
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static Scene1()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 5

    .line 159
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x64

    const/16 v2, 0x95

    const/16 v3, 0xed

    .line 160
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    .line 161
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static Scene2()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 5

    .line 169
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xbf

    const/16 v3, 0xff

    .line 170
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    .line 171
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static Scene3()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 5

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0xff

    const/16 v2, 0xa5

    const/4 v3, 0x0

    .line 179
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, -0x1

    .line 180
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    invoke-static {v3, v2, v1}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static WhiteSepia()Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;
    .locals 2

    .line 112
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    invoke-static {}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient$TintColors;->Sepia()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    new-instance v1, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public CreatePalette(I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->MapColors:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Gradient;->CreateGradient(Ljava/util/List;I)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Palette;

    move-result-object p1

    return-object p1
.end method
