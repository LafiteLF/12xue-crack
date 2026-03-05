.class public interface abstract Lcom/artifex/mupdf/fitz/StructuredTextWalker;
.super Ljava/lang/Object;
.source "StructuredTextWalker.java"


# virtual methods
.method public abstract beginLine(Lcom/artifex/mupdf/fitz/Rect;I)V
.end method

.method public abstract beginTextBlock(Lcom/artifex/mupdf/fitz/Rect;)V
.end method

.method public abstract endLine()V
.end method

.method public abstract endTextBlock()V
.end method

.method public abstract onChar(ILcom/artifex/mupdf/fitz/Point;Lcom/artifex/mupdf/fitz/Font;FLcom/artifex/mupdf/fitz/Quad;)V
.end method

.method public abstract onImageBlock(Lcom/artifex/mupdf/fitz/Rect;Lcom/artifex/mupdf/fitz/Matrix;Lcom/artifex/mupdf/fitz/Image;)V
.end method
