.class public Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;
.super Ljava/lang/Object;
.source "RadialDistortionFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Point"
.end annotation


# instance fields
.field public X:F

.field public Y:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->X:F

    .line 33
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/RadialDistortionFilter$Point;->Y:F

    return-void
.end method
