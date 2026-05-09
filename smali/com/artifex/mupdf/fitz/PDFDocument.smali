.class public Lcom/artifex/mupdf/fitz/PDFDocument;
.super Lcom/artifex/mupdf/fitz/Document;
.source "PDFDocument.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/fitz/PDFDocument$JsEventListener;
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 16
    invoke-static {}, Lcom/artifex/mupdf/fitz/PDFDocument;->newNative()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/fitz/Document;-><init>(J)V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/Document;-><init>(J)V

    return-void
.end method

.method private native addPageBuffer(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/Buffer;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private native addPageString(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private native addStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private native addStreamString(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private static native newNative()J
.end method


# virtual methods
.method public native addCJKFont(Lcom/artifex/mupdf/fitz/Font;IIZ)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native addFont(Lcom/artifex/mupdf/fitz/Font;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native addImage(Lcom/artifex/mupdf/fitz/Image;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native addObject(Lcom/artifex/mupdf/fitz/PDFObject;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public addPage(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/Buffer;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/artifex/mupdf/fitz/PDFDocument;->addPageBuffer(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/Buffer;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addPage(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/artifex/mupdf/fitz/PDFDocument;->addPageString(Lcom/artifex/mupdf/fitz/Rect;ILcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addRawStream(Lcom/artifex/mupdf/fitz/Buffer;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 70
    invoke-direct {p0, p1, v0, v1}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addRawStream(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 1

    const/4 v0, 0x1

    .line 54
    invoke-direct {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addRawStream(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 78
    invoke-direct {p0, p1, v0, v1}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamString(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addRawStream(Ljava/lang/String;Ljava/lang/Object;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 1

    const/4 v0, 0x1

    .line 62
    invoke-direct {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamString(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public native addSimpleFont(Lcom/artifex/mupdf/fitz/Font;I)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public addStream(Lcom/artifex/mupdf/fitz/Buffer;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-direct {p0, p1, v0, v1}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addStream(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-direct {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addStream(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 82
    invoke-direct {p0, p1, v0, v1}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamString(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public addStream(Ljava/lang/String;Ljava/lang/Object;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 1

    const/4 v0, 0x0

    .line 66
    invoke-direct {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/PDFDocument;->addStreamString(Ljava/lang/String;Ljava/lang/Object;Z)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public native calculate()V
.end method

.method public native canBeSavedIncrementally()Z
.end method

.method public native countObjects()I
.end method

.method public native createObject()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native deleteObject(I)V
.end method

.method public deleteObject(Lcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 44
    invoke-virtual {p1}, Lcom/artifex/mupdf/fitz/PDFObject;->asIndirect()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/fitz/PDFDocument;->deleteObject(I)V

    return-void
.end method

.method public native deletePage(I)V
.end method

.method public native disableJs()V
.end method

.method public native enableJs()V
.end method

.method public native findPage(I)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native getTrailer()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native graftObject(Lcom/artifex/mupdf/fitz/PDFObject;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public hasAcroForm()Z
    .locals 2

    .line 122
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFDocument;->getTrailer()Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "Root"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "AcroForm"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "Fields"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/PDFObject;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public native hasUnsavedChanges()Z
.end method

.method public hasXFAForm()Z
    .locals 2

    .line 126
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFDocument;->getTrailer()Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "Root"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "AcroForm"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    const-string v1, "XFA"

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/PDFObject;->get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/PDFObject;->isNull()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public native insertPage(ILcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method public native isJsSupported()Z
.end method

.method public isPDF()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected native nativeSaveWithStream(Lcom/artifex/mupdf/fitz/SeekableOutputStream;Ljava/lang/String;)V
.end method

.method public native newArray()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newBoolean(Z)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newByteString([B)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newDictionary()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newIndirect(II)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newInteger(I)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newName(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newNull()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newPDFGraftMap()Lcom/artifex/mupdf/fitz/PDFGraftMap;
.end method

.method public native newReal(F)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native newString(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public save(Lcom/artifex/mupdf/fitz/SeekableOutputStream;Ljava/lang/String;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFDocument;->nativeSaveWithStream(Lcom/artifex/mupdf/fitz/SeekableOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public native save(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public native setJsEventListener(Lcom/artifex/mupdf/fitz/PDFDocument$JsEventListener;)V
.end method
