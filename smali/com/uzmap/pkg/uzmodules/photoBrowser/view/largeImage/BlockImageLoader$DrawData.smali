.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;
.super Ljava/lang/Object;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DrawData"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field imageRect:Landroid/graphics/Rect;

.field srcRect:Landroid/graphics/Rect;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 709
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 711
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->srcRect:Landroid/graphics/Rect;

    .line 713
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$DrawData;->imageRect:Landroid/graphics/Rect;

    return-void
.end method
