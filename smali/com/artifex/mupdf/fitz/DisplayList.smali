.class public Lcom/artifex/mupdf/fitz/DisplayList;
.super Ljava/lang/Object;
.source "DisplayList.java"


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

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/DisplayList;->pointer:J

    return-void
.end method

.method public constructor <init>(Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/DisplayList;->newNative(Lcom/artifex/mupdf/fitz/Rect;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/DisplayList;->pointer:J

    return-void
.end method

.method private native newNative(Lcom/artifex/mupdf/fitz/Rect;)J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/DisplayList;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/DisplayList;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/artifex/mupdf/fitz/DisplayList;->run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Cookie;)V

    return-void
.end method

.method public native run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native toPixmap(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;Z)Lcom/artifex/mupdf/fitz/Pixmap;
.end method

.method public toStructuredText()Lcom/artifex/mupdf/fitz/StructuredText;
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/DisplayList;->toStructuredText(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/StructuredText;

    move-result-object v0

    return-object v0
.end method

.method public native toStructuredText(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/StructuredText;
.end method
