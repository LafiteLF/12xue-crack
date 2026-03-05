.class public Lcom/artifex/mupdf/fitz/StructuredText$TextChar;
.super Ljava/lang/Object;
.source "StructuredText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/artifex/mupdf/fitz/StructuredText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TextChar"
.end annotation


# instance fields
.field public c:I

.field public quad:Lcom/artifex/mupdf/fitz/Quad;

.field final synthetic this$0:Lcom/artifex/mupdf/fitz/StructuredText;


# direct methods
.method public constructor <init>(Lcom/artifex/mupdf/fitz/StructuredText;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;->this$0:Lcom/artifex/mupdf/fitz/StructuredText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isWhitespace()Z
    .locals 1

    .line 105
    iget v0, p0, Lcom/artifex/mupdf/fitz/StructuredText$TextChar;->c:I

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v0

    return v0
.end method
