.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;
.super Ljava/lang/Object;
.source "YCBCrLinearFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MyColor"
.end annotation


# instance fields
.field public B:I

.field public G:I

.field public R:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0xff0000

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x10

    .line 36
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    const v0, 0xff00

    and-int/2addr v0, p1

    shr-int/lit8 v0, v0, 0x8

    .line 37
    iput v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    and-int/lit16 p1, p1, 0xff

    .line 38
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->R:I

    .line 31
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->G:I

    .line 32
    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$MyColor;->B:I

    return-void
.end method

.method static rgb(III)I
    .locals 1

    shl-int/lit8 p0, p0, 0x10

    const/high16 v0, -0x1000000

    add-int/2addr p0, v0

    shl-int/lit8 p1, p1, 0x8

    add-int/2addr p0, p1

    add-int/2addr p0, p2

    return p0
.end method
