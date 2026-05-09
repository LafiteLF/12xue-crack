.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;
.super Ljava/lang/Object;
.source "LensFlareFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Reflect"
.end annotation


# instance fields
.field ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

.field size:D

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;

.field type:I

.field xp:I

.field yp:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V
    .locals 1

    .line 35
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    invoke-direct {v0, p1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;-><init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter;)V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$Reflect;->ccol:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/LensFlareFilter$FloatRGB;

    return-void
.end method
