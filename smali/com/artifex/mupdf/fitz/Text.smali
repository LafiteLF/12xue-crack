.class public Lcom/artifex/mupdf/fitz/Text;
.super Ljava/lang/Object;
.source "Text.java"

# interfaces
.implements Lcom/artifex/mupdf/fitz/TextWalker;


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    invoke-direct {p0}, Lcom/artifex/mupdf/fitz/Text;->newNative()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Text;->pointer:J

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Text;->pointer:J

    return-void
.end method

.method private native newNative()J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Text;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Text;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getBounds(Lcom/artifex/mupdf/fitz/StrokeState;Lcom/artifex/mupdf/fitz/Matrix;)Lcom/artifex/mupdf/fitz/Rect;
.end method

.method public showGlyph(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 34
    invoke-virtual/range {v0 .. v5}, Lcom/artifex/mupdf/fitz/Text;->showGlyph(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;IIZ)V

    return-void
.end method

.method public native showGlyph(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;IIZ)V
.end method

.method public showString(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 38
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/artifex/mupdf/fitz/Text;->showString(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;Ljava/lang/String;Z)V

    return-void
.end method

.method public native showString(Lcom/artifex/mupdf/fitz/Font;Lcom/artifex/mupdf/fitz/Matrix;Ljava/lang/String;Z)V
.end method

.method public native walk(Lcom/artifex/mupdf/fitz/TextWalker;)V
.end method
