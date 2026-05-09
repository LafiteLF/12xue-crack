.class Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;
.super Ljava/lang/Object;
.source "StructuredText.java"

# interfaces
.implements Lcom/artifex/mupdf/fitz/StructuredTextWalker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/fitz/StructuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BlockWalker"
.end annotation


# instance fields
.field blockBbox:Lcom/artifex/mupdf/fitz/Rect;

.field blocks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;",
            ">;"
        }
    .end annotation
.end field

.field chrs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artifex/mupdf/fitz/StructuredText$TextChar;",
            ">;"
        }
    .end annotation
.end field

.field lineBbox:Lcom/artifex/mupdf/fitz/Rect;

.field lines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/artifex/mupdf/fitz/StructuredText$TextLine;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/artifex/mupdf/fitz/StructuredText;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/fitz/StructuredText;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->blocks:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public beginLine(Lcom/artifex/mupdf/fitz/Rect;I)V
    .locals 0

    .line 68
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->chrs:Ljava/util/ArrayList;

    .line 69
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->lineBbox:Lcom/artifex/mupdf/fitz/Rect;

    return-void
.end method

.method public beginTextBlock(Lcom/artifex/mupdf/fitz/Rect;)V
    .locals 1

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->lines:Ljava/util/ArrayList;

    .line 57
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->blockBbox:Lcom/artifex/mupdf/fitz/Rect;

    return-void
.end method

.method public endLine()V
    .locals 3

    .line 73
    new-instance v0, Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {v0, v1}, Lcom/artifex/mupdf/fitz/StructuredText$TextLine;-><init>(Lcom/artifex/mupdf/fitz/StructuredText;)V

    .line 74
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->lineBbox:Lcom/artifex/mupdf/fitz/Rect;

    iput-object v1, v0, Lcom/artifex/mupdf/fitz/StructuredText$TextLine;->bbox:Lcom/artifex/mupdf/fitz/Rect;

    .line 75
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->chrs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/artifex/mupdf/fitz/StructuredText$TextChar;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/artifex/mupdf/fitz/StructuredText$TextChar;

    iput-object v1, v0, Lcom/artifex/mupdf/fitz/StructuredText$TextLine;->chars:[Lcom/artifex/mupdf/fitz/StructuredText$TextChar;

    .line 76
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->lines:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public endTextBlock()V
    .locals 3

    .line 61
    new-instance v0, Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;

    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {v0, v1}, Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;-><init>(Lcom/artifex/mupdf/fitz/StructuredText;)V

    .line 62
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->blockBbox:Lcom/artifex/mupdf/fitz/Rect;

    iput-object v1, v0, Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;->bbox:Lcom/artifex/mupdf/fitz/Rect;

    .line 63
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->lines:Ljava/util/ArrayList;

    const/4 v2, 0x0

    new-array v2, v2, [Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

    check-cast v1, [Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

    iput-object v1, v0, Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;->lines:[Lcom/artifex/mupdf/fitz/StructuredText$TextLine;

    .line 64
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->blocks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method getBlocks()[Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->blocks:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;

    check-cast v0, [Lcom/artifex/mupdf/fitz/StructuredText$TextBlock;

    return-object v0
.end method

.method public onChar(ILcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Font;FLcom/artifex/mupdf/fitz/Quad;)V
    .locals 0

    .line 80
    new-instance p2, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;

    iget-object p3, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {p2, p3}, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;-><init>(Lcom/artifex/mupdf/fitz/StructuredText;)V

    .line 81
    iput p1, p2, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;->c:I

    .line 82
    iput-object p5, p2, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;->quad:Lcom/artifex/mupdf/fitz/Quad;

    .line 83
    iget-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$BlockWalker;->chrs:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public onImageBlock(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Image;)V
    .locals 0

    return-void
.end method
