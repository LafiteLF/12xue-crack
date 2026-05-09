.class public Lcom/artifex/mupdf/LinkInfo;
.super Landroid/graphics/RectF;
.source "LinkInfo.java"


# instance fields
.field public pageNumber:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 10
    iput p5, p0, Lcom/artifex/mupdf/LinkInfo;->pageNumber:I

    return-void
.end method
