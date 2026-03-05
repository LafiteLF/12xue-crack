.class public Lcom/artifex/mupdf/MuPDFPageView;
.super Lcom/artifex/mupdf/PageView;
.source "MuPDFPageView.java"


# instance fields
.field private final mCore:Lcom/artifex/mupdf/MuPDFCore;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/artifex/mupdf/MuPDFCore;Landroid/graphics/Point;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/artifex/mupdf/PageView;-><init>(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 12
    iput-object p2, p0, Lcom/artifex/mupdf/MuPDFPageView;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    return-void
.end method


# virtual methods
.method protected drawPage(Landroid/graphics/Bitmap;IIIIII)V
    .locals 10

    move-object v0, p0

    .line 30
    iget-object v1, v0, Lcom/artifex/mupdf/MuPDFPageView;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    iget v2, v0, Lcom/artifex/mupdf/MuPDFPageView;->mPageNumber:I

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v1 .. v9}, Lcom/artifex/mupdf/MuPDFCore;->drawPage(ILandroid/graphics/Bitmap;IIIIII)V

    return-void
.end method

.method protected getLinkInfo()[Lcom/artifex/mupdf/LinkInfo;
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageView;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    iget v1, p0, Lcom/artifex/mupdf/MuPDFPageView;->mPageNumber:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/MuPDFCore;->getPageLinks(I)[Lcom/artifex/mupdf/LinkInfo;

    move-result-object v0

    return-object v0
.end method

.method public hitLinkPage(FF)I
    .locals 2

    .line 20
    iget v0, p0, Lcom/artifex/mupdf/MuPDFPageView;->mSourceScale:F

    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFPageView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFPageView;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 21
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFPageView;->getLeft()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p1, v1

    div-float/2addr p1, v0

    .line 22
    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFPageView;->getTop()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr p2, v1

    div-float/2addr p2, v0

    .line 24
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFPageView;->mCore:Lcom/artifex/mupdf/MuPDFCore;

    iget v1, p0, Lcom/artifex/mupdf/MuPDFPageView;->mPageNumber:I

    invoke-virtual {v0, v1, p1, p2}, Lcom/artifex/mupdf/MuPDFCore;->hitLinkPage(IFF)I

    move-result p1

    return p1
.end method
