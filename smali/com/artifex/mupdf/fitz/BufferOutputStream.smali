.class public Lcom/artifex/mupdf/fitz/BufferOutputStream;
.super Ljava/io/OutputStream;
.source "BufferOutputStream.java"


# instance fields
.field protected buffer:Lcom/artifex/mupdf/fitz/Buffer;

.field protected position:I

.field protected resetPosition:I


# direct methods
.method public constructor <init>(Lcom/artifex/mupdf/fitz/Buffer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/BufferOutputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/artifex/mupdf/fitz/BufferOutputStream;->position:I

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferOutputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/fitz/Buffer;->writeByte(B)V

    return-void
.end method

.method public write([B)V
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferOutputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/fitz/Buffer;->writeBytes([B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferOutputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/artifex/mupdf/fitz/Buffer;->writeBytesFrom([BII)V

    return-void
.end method
