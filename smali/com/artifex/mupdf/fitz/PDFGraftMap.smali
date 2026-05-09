.class public Lcom/artifex/mupdf/fitz/PDFGraftMap;
.super Ljava/lang/Object;
.source "PDFGraftMap.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/PDFGraftMap;->pointer:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/PDFGraftMap;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/PDFGraftMap;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native graftObject(Lcom/artifex/mupdf/fitz/PDFObject;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method
