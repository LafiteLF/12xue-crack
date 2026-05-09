.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;
.super Ljava/lang/Object;
.source "YCBCrLinearFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Range"
.end annotation


# instance fields
.field public Max:F

.field public Min:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 288
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 290
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    .line 291
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    return-void
.end method


# virtual methods
.method public Length()F
    .locals 2

    .line 277
    iget v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Max:F

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/YCBCrLinearFilter$Range;->Min:F

    sub-float/2addr v0, v1

    return v0
.end method
