.class public Lcom/artifex/mupdf/fitz/Buffer;
.super Ljava/lang/Object;
.source "Buffer.java"


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    invoke-direct {p0, v0}, Lcom/artifex/mupdf/fitz/Buffer;->newNativeBuffer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Buffer;->pointer:J

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/Buffer;->newNativeBuffer(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Buffer;->pointer:J

    return-void
.end method

.method private native newNativeBuffer(I)J
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 14
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Buffer;->finalize()V

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Buffer;->pointer:J

    return-void
.end method

.method protected native finalize()V
.end method

.method public native getLength()I
.end method

.method public native readByte(I)I
.end method

.method public native readBytes(I[B)I
.end method

.method public native readBytesInto(I[BII)I
.end method

.method public native save(Ljava/lang/String;)V
.end method

.method public native writeBuffer(Lcom/artifex/mupdf/fitz/Buffer;)V
.end method

.method public native writeByte(B)V
.end method

.method public native writeBytes([B)V
.end method

.method public native writeBytesFrom([BII)V
.end method

.method public native writeLine(Ljava/lang/String;)V
.end method

.method public varargs native writeLines([Ljava/lang/String;)V
.end method

.method public native writeRune(I)V
.end method
