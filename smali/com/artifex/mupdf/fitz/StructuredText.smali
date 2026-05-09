.class public Lcom/artifex/mupdf/fitz/StructuredText;
.super Ljava/lang/Object;
.source "StructuredText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/artifex/mupdf/fitz/StructuredText$TextChar;,
        Lcom/artifex/mupdf/fitz/StructuredText$TextLine;,
        Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;,
        Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;
    }
.end annotation


# static fields
.field public static final SELECT_CHARS:I = 0x0

.field public static final SELECT_LINES:I = 0x2

.field public static final SELECT_WORDS:I = 0x1


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 8
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/StructuredText;->pointer:J

    return-void
.end method


# virtual methods
.method public native copy(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;)Ljava/lang/String;
.end method

.method public destroy()V
    .locals 2

    .line 20
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/StructuredText;->finalize()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/StructuredText;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public getBlocks()[Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;
    .locals 1

    .line 36
    new-instance v0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;

    invoke-direct {v0, p0}, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;-><init>(Lcom/artifex/mupdf/fitz/StructuredText;)V

    .line 37
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/StructuredText;->walk(Lcom/artifex/mupdf/fitz/StructuredTextWalker;)V

    .line 38
    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->getBlocks()[Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;

    move-result-object v0

    return-object v0
.end method

.method public native highlight(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;)[Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native snapSelection(Lcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Point;I)Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native walk(Lcom/artifex/mupdf/fitz/StructuredTextWalker;)V
.end method
