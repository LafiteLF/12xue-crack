.class Lcom/artifex/mupdf/PatchInfo;
.super Ljava/lang/Object;
.source "PageView.java"


# instance fields
.field public bm:Landroid/graphics/Bitmap;

.field public patchArea:Landroid/graphics/Rect;

.field public patchViewSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/graphics/Bitmap;Landroid/graphics/Point;Landroid/graphics/Rect;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/artifex/mupdf/PatchInfo;->bm:Landroid/graphics/Bitmap;

    .line 29
    iput-object p2, p0, Lcom/artifex/mupdf/PatchInfo;->patchViewSize:Landroid/graphics/Point;

    .line 30
    iput-object p3, p0, Lcom/artifex/mupdf/PatchInfo;->patchArea:Landroid/graphics/Rect;

    return-void
.end method
