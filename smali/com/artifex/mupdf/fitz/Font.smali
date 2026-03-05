.class public Lcom/artifex/mupdf/fitz/Font;
.super Ljava/lang/Object;
.source "Font.java"


# static fields
.field public static final ADOBE_CNS:I = 0x0

.field public static final ADOBE_GB:I = 0x1

.field public static final ADOBE_JAPAN:I = 0x2

.field public static final ADOBE_KOREA:I = 0x3

.field public static final CYRILLIC:I = 0x2

.field public static final GREEK:I = 0x1

.field public static final LATIN:I


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Font;->pointer:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, v0}, Lcom/artifex/mupdf/fitz/Font;->newNative(Ljava/lang/String;I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Font;->pointer:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/Font;->newNative(Ljava/lang/String;I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/Font;->pointer:J

    return-void
.end method

.method private native newNative(Ljava/lang/String;I)J
.end method


# virtual methods
.method public advanceGlyph(I)F
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-virtual {p0, p1, v0}, Lcom/artifex/mupdf/fitz/Font;->advanceGlyph(IZ)F

    move-result p1

    return p1
.end method

.method public native advanceGlyph(IZ)F
.end method

.method public destroy()V
    .locals 2

    .line 23
    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Font;->finalize()V

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcom/artifex/mupdf/fitz/Font;->pointer:J

    return-void
.end method

.method public native encodeCharacter(I)I
.end method

.method protected native finalize()V
.end method

.method public native getName()Ljava/lang/String;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Font("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/artifex/mupdf/fitz/Font;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
