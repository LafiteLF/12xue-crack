.class public Lcom/artifex/mupdf/fitz/Outline;
.super Ljava/lang/Object;
.source "Outline.java"


# instance fields
.field public down:[Lcom/artifex/mupdf/fitz/Outline;

.field public page:I

.field public title:Ljava/lang/String;

.field public uri:Ljava/lang/String;

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;FF[Lcom/artifex/mupdf/fitz/Outline;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/Outline;->title:Ljava/lang/String;

    .line 14
    iput p2, p0, Lcom/artifex/mupdf/fitz/Outline;->page:I

    .line 15
    iput-object p3, p0, Lcom/artifex/mupdf/fitz/Outline;->uri:Ljava/lang/String;

    .line 16
    iput-object p6, p0, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    .line 17
    iput p4, p0, Lcom/artifex/mupdf/fitz/Outline;->x:F

    .line 18
    iput p5, p0, Lcom/artifex/mupdf/fitz/Outline;->y:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .line 23
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 25
    iget v1, p0, Lcom/artifex/mupdf/fitz/Outline;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ": "

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 27
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/Outline;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x20

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 29
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/Outline;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0xa

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 32
    iget-object v2, p0, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 34
    :goto_0
    iget-object v3, p0, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    const/16 v3, 0x9

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 37
    iget-object v3, p0, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    aget-object v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 44
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
