.class public Lcom/artifex/mupdf/fitz/Separation;
.super Ljava/lang/Object;
.source "Separation.java"


# instance fields
.field public bgra:I

.field public cmyk:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/Separation;->name:Ljava/lang/String;

    .line 12
    iput p2, p0, Lcom/artifex/mupdf/fitz/Separation;->bgra:I

    .line 13
    iput p3, p0, Lcom/artifex/mupdf/fitz/Separation;->cmyk:I

    return-void
.end method
