.class Lcom/artifex/mupdf/SearchTaskResult;
.super Ljava/lang/Object;
.source "MuPDFActivity.java"


# static fields
.field private static singleton:Lcom/artifex/mupdf/SearchTaskResult;


# instance fields
.field public final pageNumber:I

.field public final searchBoxes:[Landroid/graphics/RectF;

.field public final txt:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;I[Landroid/graphics/RectF;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/artifex/mupdf/SearchTaskResult;->txt:Ljava/lang/String;

    .line 53
    iput p2, p0, Lcom/artifex/mupdf/SearchTaskResult;->pageNumber:I

    .line 54
    iput-object p3, p0, Lcom/artifex/mupdf/SearchTaskResult;->searchBoxes:[Landroid/graphics/RectF;

    return-void
.end method

.method public static get()Lcom/artifex/mupdf/SearchTaskResult;
    .locals 1

    .line 58
    sget-object v0, Lcom/artifex/mupdf/SearchTaskResult;->singleton:Lcom/artifex/mupdf/SearchTaskResult;

    return-object v0
.end method

.method public static set(Lcom/artifex/mupdf/SearchTaskResult;)V
    .locals 0

    .line 62
    sput-object p0, Lcom/artifex/mupdf/SearchTaskResult;->singleton:Lcom/artifex/mupdf/SearchTaskResult;

    return-void
.end method
