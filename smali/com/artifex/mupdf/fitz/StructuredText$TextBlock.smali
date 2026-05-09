.class public Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;
.super Ljava/lang/Object;
.source "StructuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/fitz/StructuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextBlock"
.end annotation


# instance fields
.field public bbox:Lcom/artifex/mupdf/fitz/Rect;

.field public lines:[Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

.field final synthetic this$0:Lcom/artifex/mupdf/fitz/StructuredText;


# direct methods
.method public constructor <init>(Lcom/artifex/mupdf/fitz/StructuredText;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
