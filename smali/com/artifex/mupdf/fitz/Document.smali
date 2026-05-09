.class public Lcom/artifex/mupdf/fitz/Document;
.super Ljava/lang/Object;
.source "Document.java"


# static fields
.field public static final META_ENCRYPTION:Ljava/lang/String; = "encryption"

.field public static final META_FORMAT:Ljava/lang/String; = "format"

.field public static final META_INFO_AUTHOR:Ljava/lang/String; = "info:Author"

.field public static final META_INFO_TITLE:Ljava/lang/String; = "info:Title"


# instance fields
.field protected path:Ljava/lang/String;

.field protected pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Document;->pointer:J

    return-void
.end method

.method public static openDocument(Lcom/artifex/mupdf/fitz/SeekableInputStream;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
    .locals 0

    .line 43
    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/Document;->openNativeWithStream(Lcom/artifex/mupdf/fitz/SeekableInputStream;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object p0

    return-object p0
.end method

.method public static openDocument(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
    .locals 1

    .line 33
    invoke-static {p0}, Lcom/artifex/mupdf/fitz/Document;->openNativeWithPath(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object v0

    .line 34
    iput-object p0, v0, Lcom/artifex/mupdf/fitz/Document;->path:Ljava/lang/String;

    return-object v0
.end method

.method public static openDocument([BLjava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/artifex/mupdf/fitz/Document;->openNativeWithBuffer([BLjava/lang/String;)Lcom/artifex/mupdf/fitz/Document;

    move-result-object p0

    return-object p0
.end method

.method protected static native openNativeWithBuffer([BLjava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
.end method

.method protected static native openNativeWithPath(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
.end method

.method protected static native openNativeWithStream(Lcom/artifex/mupdf/fitz/SeekableInputStream;Ljava/lang/String;)Lcom/artifex/mupdf/fitz/Document;
.end method

.method public static native recognize(Ljava/lang/String;)Z
.end method


# virtual methods
.method public native authenticatePassword(Ljava/lang/String;)Z
.end method

.method public native countPages()I
.end method

.method public destroy()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Document;->finalize()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Document;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native findBookmark(J)I
.end method

.method public native getMetaData(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/Document;->path:Ljava/lang/String;

    return-object v0
.end method

.method public isPDF()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public native isReflowable()Z
.end method

.method public native isUnencryptedPDF()Z
.end method

.method public native layout(FFF)V
.end method

.method public native loadOutline()[Lcom/artifex/mupdf/fitz/Outline;
.end method

.method public native loadPage(I)Lcom/artifex/mupdf/fitz/Page;
.end method

.method public native makeBookmark(I)J
.end method

.method public makeProof(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 70
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/artifex/mupdf/fitz/Document;->proofNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native needsPassword()Z
.end method

.method protected native proofNative(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
.end method
