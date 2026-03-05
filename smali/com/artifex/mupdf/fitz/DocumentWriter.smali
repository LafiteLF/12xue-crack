.class public Lcom/artifex/mupdf/fitz/DocumentWriter;
.super Ljava/lang/Object;
.source "DocumentWriter.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/artifex/mupdf/fitz/DocumentWriter;->newNativeDocumentWriter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/DocumentWriter;->pointer:J

    return-void
.end method

.method private native newNativeDocumentWriter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
.end method


# virtual methods
.method public native beginPage(Lcom/artifex/mupdf/fitz/Rect;)Lcom/artifex/mupdf/fitz/Device;
.end method

.method public native close()V
.end method

.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/DocumentWriter;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/DocumentWriter;->pointer:J

    return-void
.end method

.method public native endPage()V
.end method

.method protected native finalize()V
.end method
