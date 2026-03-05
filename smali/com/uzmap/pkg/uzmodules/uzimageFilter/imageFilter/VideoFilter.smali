.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;
.super Ljava/lang/Object;
.source "VideoFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter$VIDEO_TYPE;
    }
.end annotation


# instance fields
.field private m_VideoType:I

.field private pattern:[I


# direct methods
.method public constructor <init>(I)V
    .locals 9

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    .line 35
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->m_VideoType:I

    const/16 v0, 0xb

    const/16 v1, 0x8

    const/16 v2, 0xc

    const/4 v3, 0x6

    const/4 v4, 0x5

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v7, :cond_1

    const/4 v8, 0x7

    if-eq p1, v6, :cond_0

    const/16 p1, 0x4b

    new-array p1, p1, [I

    aput v7, p1, v7

    aput v6, p1, v6

    aput v7, p1, v4

    aput v7, p1, v3

    aput v7, p1, v8

    aput v6, p1, v1

    aput v7, p1, v0

    aput v6, p1, v2

    const/16 v0, 0xd

    aput v6, p1, v0

    const/16 v0, 0xe

    aput v6, p1, v0

    const/16 v0, 0x11

    aput v7, p1, v0

    const/16 v0, 0x12

    aput v6, p1, v0

    const/16 v0, 0x15

    aput v7, p1, v0

    const/16 v0, 0x16

    aput v7, p1, v0

    const/16 v0, 0x17

    aput v7, p1, v0

    const/16 v0, 0x18

    aput v6, p1, v0

    const/16 v0, 0x19

    aput v6, p1, v0

    const/16 v0, 0x1b

    aput v7, p1, v0

    const/16 v0, 0x1c

    aput v6, p1, v0

    const/16 v0, 0x1d

    aput v6, p1, v0

    const/16 v0, 0x21

    aput v7, p1, v0

    const/16 v0, 0x22

    aput v6, p1, v0

    const/16 v0, 0x23

    aput v6, p1, v0

    const/16 v0, 0x25

    aput v7, p1, v0

    const/16 v0, 0x26

    aput v7, p1, v0

    const/16 v0, 0x27

    aput v7, p1, v0

    const/16 v0, 0x28

    aput v6, p1, v0

    const/16 v0, 0x29

    aput v6, p1, v0

    const/16 v0, 0x2b

    aput v7, p1, v0

    const/16 v0, 0x2c

    aput v6, p1, v0

    const/16 v0, 0x2d

    aput v6, p1, v0

    const/16 v0, 0x31

    aput v7, p1, v0

    const/16 v0, 0x32

    aput v7, p1, v0

    const/16 v0, 0x33

    aput v6, p1, v0

    const/16 v0, 0x35

    aput v7, p1, v0

    const/16 v0, 0x36

    aput v7, p1, v0

    const/16 v0, 0x37

    aput v6, p1, v0

    const/16 v0, 0x38

    aput v6, p1, v0

    const/16 v0, 0x39

    aput v6, p1, v0

    const/16 v0, 0x3b

    aput v7, p1, v0

    const/16 v0, 0x3c

    aput v7, p1, v0

    const/16 v0, 0x3d

    aput v6, p1, v0

    const/16 v0, 0x41

    aput v7, p1, v0

    const/16 v0, 0x42

    aput v7, p1, v0

    const/16 v0, 0x43

    aput v6, p1, v0

    const/16 v0, 0x45

    aput v7, p1, v0

    const/16 v0, 0x46

    aput v7, p1, v0

    const/16 v0, 0x47

    aput v6, p1, v0

    const/16 v0, 0x48

    aput v6, p1, v0

    const/16 v0, 0x49

    aput v6, p1, v0

    .line 74
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    goto :goto_0

    :cond_0
    const/16 p1, 0x9

    new-array p1, p1, [I

    aput v7, p1, v7

    aput v6, p1, v6

    aput v6, p1, v5

    aput v7, p1, v4

    aput v7, p1, v3

    aput v6, p1, v8

    .line 64
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    goto :goto_0

    :cond_1
    new-array p1, v5, [I

    aput v7, p1, v7

    aput v6, p1, v6

    .line 54
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    goto :goto_0

    :cond_2
    new-array p1, v2, [I

    aput v7, p1, v7

    aput v6, p1, v5

    const/4 v2, 0x4

    aput v7, p1, v2

    aput v6, p1, v4

    aput v7, p1, v3

    aput v6, p1, v1

    const/16 v1, 0xa

    aput v6, p1, v1

    aput v7, p1, v0

    .line 41
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    :goto_0
    return-void
.end method


# virtual methods
.method public process(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;)Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;
    .locals 12

    const/4 v0, 0x4

    new-array v1, v0, [I

    .line 99
    fill-array-data v1, :array_0

    new-array v0, v0, [I

    .line 100
    fill-array-data v0, :array_1

    const/4 v2, 0x0

    move v9, v2

    .line 103
    :goto_0
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getWidth()I

    move-result v3

    if-lt v9, v3, :cond_0

    return-object p1

    :cond_0
    move v10, v2

    .line 105
    :goto_1
    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getHeight()I

    move-result v3

    if-lt v10, v3, :cond_1

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getRComponent(II)I

    move-result v3

    .line 108
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getGComponent(II)I

    move-result v4

    .line 109
    invoke-virtual {p1, v9, v10}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->getBComponent(II)I

    move-result v5

    .line 111
    iget v6, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->m_VideoType:I

    aget v7, v1, v6

    .line 112
    aget v6, v0, v6

    .line 113
    rem-int v6, v10, v6

    mul-int/2addr v6, v7

    rem-int v7, v9, v7

    add-int/2addr v6, v7

    .line 115
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/VideoFilter;->pattern:[I

    aget v6, v7, v6

    if-nez v6, :cond_2

    mul-int/lit8 v3, v3, 0x2

    int-to-double v7, v3

    .line 117
    invoke-static {v7, v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v3

    :cond_2
    move v7, v3

    const/4 v3, 0x1

    if-ne v6, v3, :cond_3

    mul-int/lit8 v4, v4, 0x2

    int-to-double v3, v4

    .line 119
    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v3

    move v8, v3

    goto :goto_2

    :cond_3
    move v8, v4

    :goto_2
    const/4 v3, 0x2

    if-ne v6, v3, :cond_4

    mul-int/lit8 v5, v5, 0x2

    int-to-double v3, v5

    .line 121
    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/IImageFilter$Function;->FClamp0255(D)I

    move-result v3

    move v11, v3

    goto :goto_3

    :cond_4
    move v11, v5

    :goto_3
    move-object v3, p1

    move v4, v9

    move v5, v10

    move v6, v7

    move v7, v8

    move v8, v11

    .line 123
    invoke-virtual/range {v3 .. v8}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Image;->setPixelColor(IIIII)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :array_0
    .array-data 4
        0x2
        0x1
        0x3
        0x5
    .end array-data

    :array_1
    .array-data 4
        0x6
        0x3
        0x3
        0xf
    .end array-data
.end method
