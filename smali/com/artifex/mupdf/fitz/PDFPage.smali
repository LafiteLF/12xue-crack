.class public Lcom/artifex/mupdf/fitz/PDFPage;
.super Lcom/artifex/mupdf/fitz/Page;
.source "PDFPage.java"


# instance fields
.field private widgets:[Lcom/artifex/mupdf/fitz/PDFWidget;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/Page;-><init>(J)V

    return-void
.end method

.method private native getWidgetsNative()[Lcom/artifex/mupdf/fitz/PDFWidget;
.end method


# virtual methods
.method public activateWidgetAt(FF)Lcom/artifex/mupdf/fitz/PDFWidget;
    .locals 5

    .line 27
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFPage;->getWidgets()[Lcom/artifex/mupdf/fitz/PDFWidget;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 28
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->getBounds()Lcom/artifex/mupdf/fitz/Rect;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/artifex/mupdf/fitz/Rect;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 29
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventEnter()V

    .line 30
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventDown()V

    .line 31
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventFocus()V

    .line 32
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventUp()V

    .line 33
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventExit()V

    .line 34
    invoke-virtual {v3}, Lcom/artifex/mupdf/fitz/PDFWidget;->eventBlur()V

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public native createAnnotation(I)Lcom/artifex/mupdf/fitz/PDFAnnotation;
.end method

.method public native deleteAnnotation(Lcom/artifex/mupdf/fitz/PDFAnnotation;)V
.end method

.method public native getAnnotations()[Lcom/artifex/mupdf/fitz/PDFAnnotation;
.end method

.method public getWidgets()[Lcom/artifex/mupdf/fitz/PDFWidget;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/PDFPage;->widgets:[Lcom/artifex/mupdf/fitz/PDFWidget;

    if-nez v0, :cond_0

    .line 22
    invoke-direct {p0}, Lcom/artifex/mupdf/fitz/PDFPage;->getWidgetsNative()[Lcom/artifex/mupdf/fitz/PDFWidget;

    move-result-object v0

    iput-object v0, p0, Lcom/artifex/mupdf/fitz/PDFPage;->widgets:[Lcom/artifex/mupdf/fitz/PDFWidget;

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/PDFPage;->widgets:[Lcom/artifex/mupdf/fitz/PDFWidget;

    return-object v0
.end method

.method public native update()Z
.end method
