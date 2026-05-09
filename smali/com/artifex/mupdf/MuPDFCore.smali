.class public Lcom/artifex/mupdf/MuPDFCore;
.super Ljava/lang/Object;
.source "MuPDFCore.java"


# instance fields
.field private filePath:Ljava/lang/String;

.field private numPages:I

.field public pageHeight:F

.field private pageNum:I

.field public pageWidth:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "mupdf"

    .line 10
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 14
    iput v0, p0, Lcom/artifex/mupdf/MuPDFCore;->pageNum:I

    .line 15
    iput v0, p0, Lcom/artifex/mupdf/MuPDFCore;->numPages:I

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcom/artifex/mupdf/MuPDFCore;->filePath:Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFCore;->filePath:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFCore;->openFile(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    return-void

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static native authenticatePasswordInternal(Ljava/lang/String;)Z
.end method

.method private static native countPagesInternal()I
.end method

.method private declared-synchronized countPagesSynchronized()I
    .locals 1

    monitor-enter p0

    .line 60
    :try_start_0
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->countPagesInternal()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static native destroying()V
.end method

.method public static native drawPage(Landroid/graphics/Bitmap;IIIIII)V
.end method

.method public static native getOutlineInternal()[Lcom/artifex/mupdf/OutlineItem;
.end method

.method private static native getPageHeight()F
.end method

.method public static native getPageLink(IFF)I
.end method

.method public static native getPageLinksInternal(I)[Lcom/artifex/mupdf/LinkInfo;
.end method

.method private static native getPageWidth()F
.end method

.method private static native gotoPageInternal(I)V
.end method

.method public static native hasOutlineInternal()Z
.end method

.method public static native needsPasswordInternal()Z
.end method

.method private static native openFile(Ljava/lang/String;)I
.end method

.method public static native searchPage(Ljava/lang/String;)[Landroid/graphics/RectF;
.end method


# virtual methods
.method public declared-synchronized authenticatePassword(Ljava/lang/String;)Z
    .locals 0

    monitor-enter p0

    .line 121
    :try_start_0
    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFCore;->authenticatePasswordInternal(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public countPages()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/artifex/mupdf/MuPDFCore;->numPages:I

    if-gez v0, :cond_0

    .line 54
    invoke-direct {p0}, Lcom/artifex/mupdf/MuPDFCore;->countPagesSynchronized()I

    move-result v0

    iput v0, p0, Lcom/artifex/mupdf/MuPDFCore;->numPages:I

    .line 56
    :cond_0
    iget v0, p0, Lcom/artifex/mupdf/MuPDFCore;->numPages:I

    return v0
.end method

.method public declared-synchronized drawPage(ILandroid/graphics/Bitmap;IIIIII)V
    .locals 0

    monitor-enter p0

    .line 91
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFCore;->gotoPage(I)V

    .line 92
    invoke-static/range {p2 .. p8}, Lcom/artifex/mupdf/MuPDFCore;->drawPage(Landroid/graphics/Bitmap;IIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getOutline()[Lcom/artifex/mupdf/OutlineItem;
    .locals 1

    monitor-enter p0

    .line 113
    :try_start_0
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->getOutlineInternal()[Lcom/artifex/mupdf/OutlineItem;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPageLinks(I)[Lcom/artifex/mupdf/LinkInfo;
    .locals 0

    monitor-enter p0

    .line 100
    :try_start_0
    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFCore;->getPageLinksInternal(I)[Lcom/artifex/mupdf/LinkInfo;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getPagePath()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFCore;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getPageSize(I)Landroid/graphics/PointF;
    .locals 2

    monitor-enter p0

    .line 79
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFCore;->gotoPage(I)V

    .line 80
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/artifex/mupdf/MuPDFCore;->pageWidth:F

    iget v1, p0, Lcom/artifex/mupdf/MuPDFCore;->pageHeight:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public gotoPage(I)V
    .locals 2

    .line 66
    iget v0, p0, Lcom/artifex/mupdf/MuPDFCore;->numPages:I

    add-int/lit8 v1, v0, -0x1

    if-le p1, v1, :cond_0

    add-int/lit8 p1, v0, -0x1

    goto :goto_0

    :cond_0
    if-gez p1, :cond_1

    const/4 p1, 0x0

    .line 70
    :cond_1
    :goto_0
    iget v0, p0, Lcom/artifex/mupdf/MuPDFCore;->pageNum:I

    if-ne v0, p1, :cond_2

    return-void

    .line 72
    :cond_2
    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFCore;->gotoPageInternal(I)V

    .line 73
    iput p1, p0, Lcom/artifex/mupdf/MuPDFCore;->pageNum:I

    .line 74
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->getPageWidth()F

    move-result p1

    iput p1, p0, Lcom/artifex/mupdf/MuPDFCore;->pageWidth:F

    .line 75
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->getPageHeight()F

    move-result p1

    iput p1, p0, Lcom/artifex/mupdf/MuPDFCore;->pageHeight:F

    return-void
.end method

.method public declared-synchronized hasOutline()Z
    .locals 1

    monitor-enter p0

    .line 109
    :try_start_0
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->hasOutlineInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hitLinkPage(IFF)I
    .locals 0

    monitor-enter p0

    .line 96
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/artifex/mupdf/MuPDFCore;->getPageLink(IFF)I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized needsPassword()Z
    .locals 1

    monitor-enter p0

    .line 117
    :try_start_0
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->needsPasswordInternal()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onDestroy()V
    .locals 1

    monitor-enter p0

    .line 84
    :try_start_0
    invoke-static {}, Lcom/artifex/mupdf/MuPDFCore;->destroying()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized searchPage(ILjava/lang/String;)[Landroid/graphics/RectF;
    .locals 0

    monitor-enter p0

    .line 104
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFCore;->gotoPage(I)V

    .line 105
    invoke-static {p2}, Lcom/artifex/mupdf/MuPDFCore;->searchPage(Ljava/lang/String;)[Landroid/graphics/RectF;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
