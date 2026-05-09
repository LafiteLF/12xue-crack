.class public Lcom/artifex/mupdf/fitz/BufferInputStream;
.super Ljava/io/InputStream;
.source "BufferInputStream.java"


# instance fields
.field protected buffer:Lcom/artifex/mupdf/fitz/Buffer;

.field protected position:I

.field protected resetPosition:I


# direct methods
.method public constructor <init>(Lcom/artifex/mupdf/fitz/Buffer;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->resetPosition:I

    return-void
.end method


# virtual methods
.method public available()I
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/Buffer;->getLength()I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 0

    .line 24
    iget p1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    iput p1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->resetPosition:I

    return-void
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    iget v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/fitz/Buffer;->readByte(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 34
    iget v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    :cond_0
    return v0
.end method

.method public read([B)I
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    iget v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    invoke-virtual {v0, v1, p1}, Lcom/artifex/mupdf/fitz/Buffer;->readBytes(I[B)I

    move-result p1

    if-ltz p1, :cond_0

    .line 41
    iget v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    :cond_0
    return p1
.end method

.method public read([BII)I
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    iget v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/artifex/mupdf/fitz/Buffer;->readBytesInto(I[BII)I

    move-result p1

    if-ltz p1, :cond_0

    .line 48
    iget p2, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    :cond_0
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    iget v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->resetPosition:I

    if-ltz v0, :cond_1

    .line 55
    iget-object v1, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->buffer:Lcom/artifex/mupdf/fitz/Buffer;

    invoke-virtual {v1}, Lcom/artifex/mupdf/fitz/Buffer;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 58
    iget v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->resetPosition:I

    iput v0, p0, Lcom/artifex/mupdf/fitz/BufferInputStream;->position:I

    return-void

    .line 56
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot reset because mark set outside of buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "cannot reset because mark never set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
