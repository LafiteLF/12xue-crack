.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;
.super Ljava/lang/Object;
.source "BlockImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlockData"
.end annotation


# instance fields
.field bitmap:Landroid/graphics/Bitmap;

.field position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

.field realImageRect:Landroid/graphics/Rect;

.field task:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/TaskQueue$Task;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 693
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    return-void
.end method

.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;)V
    .locals 1

    .line 696
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 703
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->realImageRect:Landroid/graphics/Rect;

    .line 697
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$BlockData;->position:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/BlockImageLoader$Position;

    return-void
.end method
