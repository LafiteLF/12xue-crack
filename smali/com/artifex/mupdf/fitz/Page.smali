.class public Lcom/artifex/mupdf/fitz/Page;
.super Ljava/lang/Object;
.source "Page.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method protected constructor <init>(J)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Page;->pointer:J

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Page;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Page;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getBounds()Lcom/artifex/mupdf/fitz/Rect;
.end method

.method public native getLinks()[Lcom/artifex/mupdf/fitz/Link;
.end method

.method public native getSeparations()Lcom/artifex/mupdf/fitz/Separations;
.end method

.method public run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;)V
    .locals 1

    const/4 v0, 0x0

    .line 30
    invoke-virtual {p0, p1, p2, v0}, Lcom/artifex/mupdf/fitz/Page;->run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V

    return-void
.end method

.method public native run(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native runPageAnnots(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native runPageContents(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native runPageWidgets(Lcom/artifex/mupdf/fitz/Device;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Cookie;)V
.end method

.method public native search(Ljava/lang/String;)[Lcom/artifex/mupdf/fitz/Quad;
.end method

.method public native textAsHtml()[B
.end method

.method public toDisplayList()Lcom/artifex/mupdf/fitz/DisplayList;
    .locals 1

    const/4 v0, 0x1

    .line 42
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/Page;->toDisplayList(Z)Lcom/artifex/mupdf/fitz/DisplayList;

    move-result-object v0

    return-object v0
.end method

.method public native toDisplayList(Z)Lcom/artifex/mupdf/fitz/DisplayList;
.end method

.method public toPixmap(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;Z)Lcom/artifex/mupdf/fitz/Pixmap;
    .locals 1

    const/4 v0, 0x1

    .line 37
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/artifex/mupdf/fitz/Page;->toPixmap(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;ZZ)Lcom/artifex/mupdf/fitz/Pixmap;

    move-result-object p1

    return-object p1
.end method

.method public native toPixmap(Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/ColorSpace;ZZ)Lcom/artifex/mupdf/fitz/Pixmap;
.end method

.method public toStructuredText()Lcom/artifex/mupdf/fitz/StructuredText;
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, v0}, Lcom/artifex/mupdf/fitz/Page;->toStructuredText(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/StructuredText;

    move-result-object v0

    return-object v0
.end method

.method public native toStructuredText(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/StructuredText;
.end method
