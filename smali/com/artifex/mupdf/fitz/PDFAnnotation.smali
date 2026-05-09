.class public Lcom/artifex/mupdf/fitz/PDFAnnotation;
.super Ljava/lang/Object;
.source "PDFAnnotation.java"


# static fields
.field public static final IS_HIDDEN:I = 0x2

.field public static final IS_INVISIBLE:I = 0x1

.field public static final IS_LOCKED:I = 0x80

.field public static final IS_LOCKED_CONTENTS:I = 0x200

.field public static final IS_NO_ROTATE:I = 0x10

.field public static final IS_NO_VIEW:I = 0x20

.field public static final IS_NO_ZOOM:I = 0x8

.field public static final IS_PRINT:I = 0x4

.field public static final IS_READ_ONLY:I = 0x40

.field public static final IS_TOGGLE_NO_VIEW:I = 0x100

.field public static final LINE_ENDING_BUTT:I = 0x6

.field public static final LINE_ENDING_CIRCLE:I = 0x2

.field public static final LINE_ENDING_CLOSED_ARROW:I = 0x5

.field public static final LINE_ENDING_DIAMOND:I = 0x3

.field public static final LINE_ENDING_NONE:I = 0x0

.field public static final LINE_ENDING_OPEN_ARROW:I = 0x4

.field public static final LINE_ENDING_R_CLOSED_ARROW:I = 0x8

.field public static final LINE_ENDING_R_OPEN_ARROW:I = 0x7

.field public static final LINE_ENDING_SLASH:I = 0x9

.field public static final LINE_ENDING_SQUARE:I = 0x1

.field public static final TYPE_3D:I = 0x18

.field public static final TYPE_CARET:I = 0xd

.field public static final TYPE_CIRCLE:I = 0x5

.field public static final TYPE_FILE_ATTACHMENT:I = 0x10

.field public static final TYPE_FREE_TEXT:I = 0x2

.field public static final TYPE_HIGHLIGHT:I = 0x8

.field public static final TYPE_INK:I = 0xe

.field public static final TYPE_LINE:I = 0x3

.field public static final TYPE_LINK:I = 0x1

.field public static final TYPE_MOVIE:I = 0x12

.field public static final TYPE_POLYGON:I = 0x6

.field public static final TYPE_POLY_LINE:I = 0x7

.field public static final TYPE_POPUP:I = 0xf

.field public static final TYPE_PRINTER_MARK:I = 0x15

.field public static final TYPE_SCREEN:I = 0x14

.field public static final TYPE_SOUND:I = 0x11

.field public static final TYPE_SQUARE:I = 0x4

.field public static final TYPE_SQUIGGLY:I = 0xa

.field public static final TYPE_STAMP:I = 0xc

.field public static final TYPE_STRIKE_OUT:I = 0xb

.field public static final TYPE_TEXT:I = 0x0

.field public static final TYPE_TRAP_NET:I = 0x16

.field public static final TYPE_UNDERLINE:I = 0x9

.field public static final TYPE_UNKNOWN:I = -0x1

.field public static final TYPE_WATERMARK:I = 0x17

.field public static final TYPE_WIDGET:I = 0x13


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/PDFAnnotation;->pointer:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 16
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFAnnotation;->finalize()V

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/PDFAnnotation;->pointer:J

    return-void
.end method

.method public equals(J)Z
    .locals 2

    .line 29
    iget-wide v0, p0, Lcom/artifex/mupdf/fitz/PDFAnnotation;->pointer:J

    cmp-long p1, v0, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public equals(Lcom/artifex/mupdf/fitz/PDFAnnotation;)Z
    .locals 4

    .line 25
    iget-wide v0, p0, Lcom/artifex/mupdf/fitz/PDFAnnotation;->pointer:J

    iget-wide v2, p1, Lcom/artifex/mupdf/fitz/PDFAnnotation;->pointer:J

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public native eventBlur()V
.end method

.method public native eventDown()V
.end method

.method public native eventEnter()V
.end method

.method public native eventExit()V
.end method

.method public native eventFocus()V
.end method

.method public native eventUp()V
.end method

.method protected native finalize()V
.end method

.method public native getAuthor()Ljava/lang/String;
.end method

.method public native getBorder()F
.end method

.method public native getBounds()Lcom/artifex/mupdf/fitz/Rect;
.end method

.method public native getColor()[F
.end method

.method public native getContents()Ljava/lang/String;
.end method

.method public native getFlags()I
.end method

.method public native getIcon()Ljava/lang/String;
.end method

.method public native getInkList()[[F
.end method

.method public native getInteriorColor()[F
.end method

.method public native getLineEndingStyles()[I
.end method

.method public getModificationDate()Ljava/util/Date;
    .locals 3

    .line 105
    new-instance v0, Ljava/util/Date;

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFAnnotation;->getModificationDateNative()J

    move-result-wide v1

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method protected native getModificationDateNative()J
.end method

.method public native getQuadPoints()[[F
.end method

.method public native getRect()Lcom/artifex/mupdf/fitz/Rect;
.end method

.method public native getType()I
.end method

.method public native getVertices()[F
.end method

.method public native isOpen()Z
.end method

.method public native run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native setAuthor(Ljava/lang/String;)V
.end method

.method public native setBorder(F)V
.end method

.method public native setColor([F)V
.end method

.method public native setContents(Ljava/lang/String;)V
.end method

.method public native setFlags(I)V
.end method

.method public native setIcon(Ljava/lang/String;)V
.end method

.method public native setInkList([[F)V
.end method

.method public native setInteriorColor([F)V
.end method

.method public native setIsOpen(Z)V
.end method

.method public native setLineEndingStyles(II)V
.end method

.method public setLineEndingStyles([I)V
    .locals 2

    const/4 v0, 0x0

    .line 114
    aget v0, p1, v0

    const/4 v1, 0x1

    aget p1, p1, v1

    invoke-virtual {p0, v0, p1}, Lcom/artifex/mupdf/fitz/PDFAnnotation;->setLineEndingStyles(II)V

    return-void
.end method

.method protected native setModificationDate(J)V
.end method

.method public setModificationDate(Ljava/util/Date;)V
    .locals 2

    .line 108
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/artifex/mupdf/fitz/PDFAnnotation;->setModificationDate(J)V

    return-void
.end method

.method public native setQuadPoints([[F)V
.end method

.method public native setRect(Lcom/artifex/mupdf/fitz/Rect;)V
.end method

.method public native setVertices([F)V
.end method

.method public native toDisplayList()Lcom/artifex/mupdf/fitz/DisplayList;
.end method

.method public native toPixmap(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;Z)Lcom/artifex/mupdf/fitz/Pixmap;
.end method

.method public native update()Z
.end method
