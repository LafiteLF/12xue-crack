.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BigBrotherFilter;
.super Ljava/lang/Object;
.source "BigBrotherFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# static fields
.field private static final DOT_AREA:I = 0xa

.field private static final arrDither:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x64

    new-array v0, v0, [I

    .line 28
    fill-array-data v0, :array_0

    sput-object v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BigBrotherFilter;->arrDither:[I

    return-void

    :array_0
    .array-data 4
        0xa7
        0xc8
        0xe6
        0xd8
        0xb5
        0x5e
        0x48
        0xc1
        0xf2
        0xe8
        0x24
        0x34
        0xde
        0xa7
        0xc8
        0xb5
        0x7e
        0xd2
        0x5e
        0x48
        0xe8
        0x99
        0x6f
        0x24
        0x34
        0xa7
        0xc8
        0xe6
        0xd8
        0xb5
        0x5e
        0x48
        0xc1
        0xf2
        0xe8
        0x24
        0x34
        0xde
        0xa7
        0xc8
        0xb5
        0x7e
        0xd2
        0x5e
        0x48
        0xe8
        0x99
        0x6f
        0x24
        0x34
        0xa7
        0xc8
        0xe6
        0xd8
        0xb5
        0x5e
        0x48
        0xc1
        0xf2
        0xe8
        0x24
        0x34
        0xde
        0xa7
        0xc8
        0xb5
        0x7e
        0xd2
        0x5e
        0x48
        0xe8
        0x99
        0x6f
        0x24
        0x34
        0xa7
        0xc8
        0xe6
        0xd8
        0xb5
        0x5e
        0x48
        0xc1
        0xf2
        0xe8
        0x24
        0x34
        0xde
        0xa7
        0xc8
        0xb5
        0x7e
        0xd2
        0x5e
        0x48
        0xe8
        0x99
        0x6f
        0x24
        0x34
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private drawTone(IILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)V
    .locals 9

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    return-void

    .line 69
    :cond_0
    rem-int/lit8 v1, v0, 0xa

    .line 70
    div-int/lit8 v2, v0, 0xa

    add-int v4, p1, v1

    .line 72
    invoke-virtual {p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v1

    if-ge v4, v1, :cond_2

    add-int v5, p2, v2

    invoke-virtual {p3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v1

    if-ge v5, v1, :cond_2

    .line 74
    invoke-virtual {p3, v4, v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v1

    rsub-int v1, v1, 0xff

    .line 75
    sget-object v2, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BigBrotherFilter;->arrDither:[I

    aget v2, v2, v0

    if-le v1, v2, :cond_1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p3

    .line 76
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    goto :goto_1

    :cond_1
    const/16 v6, 0xff

    const/16 v7, 0xff

    const/16 v8, 0xff

    move-object v3, p3

    .line 79
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 53
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object p1

    :cond_0
    move v2, v0

    .line 54
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v2, v3, :cond_1

    add-int/lit8 v1, v1, 0xa

    goto :goto_0

    .line 55
    :cond_1
    invoke-direct {p0, v1, v2, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/BigBrotherFilter;->drawTone(IILcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)V

    add-int/lit8 v2, v2, 0xa

    goto :goto_1
.end method
