.class public Lcom/artifex/mupdf/fitz/PDFObject;
.super Ljava/lang/Object;
.source "PDFObject.java"


# static fields
.field public static final Null:Lcom/artifex/mupdf/fitz/PDFObject;


# instance fields
.field private pointer:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 6
    invoke-static {}, Lcom/artifex/mupdf/fitz/Context;->init()V

    .line 207
    new-instance v0, Lcom/artifex/mupdf/fitz/PDFObject;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Lcom/artifex/mupdf/fitz/PDFObject;-><init>(J)V

    sput-object v0, Lcom/artifex/mupdf/fitz/PDFObject;->Null:Lcom/artifex/mupdf/fitz/PDFObject;

    return-void
.end method

.method private constructor <init>(J)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-wide p1, p0, Lcom/artifex/mupdf/fitz/PDFObject;->pointer:J

    return-void
.end method

.method private native deleteArray(I)V
.end method

.method private native deleteDictionaryPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method private native deleteDictionaryString(Ljava/lang/String;)V
.end method

.method private native getArray(I)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private native getDictionary(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method private native pushBoolean(Z)V
.end method

.method private native pushFloat(F)V
.end method

.method private native pushInteger(I)V
.end method

.method private native pushPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method private native pushString(Ljava/lang/String;)V
.end method

.method private native putArrayBoolean(IZ)V
.end method

.method private native putArrayFloat(IF)V
.end method

.method private native putArrayInteger(II)V
.end method

.method private native putArrayPDFObject(ILcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method private native putArrayString(ILjava/lang/String;)V
.end method

.method private native putDictionaryPDFObjectBoolean(Lcom/artifex/mupdf/fitz/PDFObject;Z)V
.end method

.method private native putDictionaryPDFObjectFloat(Lcom/artifex/mupdf/fitz/PDFObject;F)V
.end method

.method private native putDictionaryPDFObjectInteger(Lcom/artifex/mupdf/fitz/PDFObject;I)V
.end method

.method private native putDictionaryPDFObjectPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method private native putDictionaryPDFObjectString(Lcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)V
.end method

.method private native putDictionaryStringBoolean(Ljava/lang/String;Z)V
.end method

.method private native putDictionaryStringFloat(Ljava/lang/String;F)V
.end method

.method private native putDictionaryStringInteger(Ljava/lang/String;I)V
.end method

.method private native putDictionaryStringPDFObject(Ljava/lang/String;Lcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method private native putDictionaryStringString(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method private native writeRawStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;)V
.end method

.method private native writeRawStreamString(Ljava/lang/String;)V
.end method

.method private native writeStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;)V
.end method

.method private native writeStreamString(Ljava/lang/String;)V
.end method


# virtual methods
.method public native asBoolean()Z
.end method

.method public native asByteString()[B
.end method

.method public native asFloat()F
.end method

.method public native asIndirect()I
.end method

.method public native asInteger()I
.end method

.method public native asName()Ljava/lang/String;
.end method

.method public native asString()Ljava/lang/String;
.end method

.method public delete(I)V
    .locals 0

    .line 168
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->deleteArray(I)V

    return-void
.end method

.method public delete(Lcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 176
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->deleteDictionaryPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;)V

    return-void
.end method

.method public delete(Ljava/lang/String;)V
    .locals 0

    .line 172
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->deleteDictionaryString(Ljava/lang/String;)V

    return-void
.end method

.method protected native finalize()V
.end method

.method public get(I)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->getArray(I)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->getDictionary(Ljava/lang/String;)Lcom/artifex/mupdf/fitz/PDFObject;

    move-result-object p1

    return-object p1
.end method

.method public native isArray()Z
.end method

.method public native isBoolean()Z
.end method

.method public native isDictionary()Z
.end method

.method public native isIndirect()Z
.end method

.method public native isInteger()Z
.end method

.method public native isName()Z
.end method

.method public native isNull()Z
.end method

.method public native isNumber()Z
.end method

.method public native isReal()Z
.end method

.method public native isStream()Z
.end method

.method public native isString()Z
.end method

.method public push(F)V
    .locals 0

    .line 196
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->pushFloat(F)V

    return-void
.end method

.method public push(I)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->pushInteger(I)V

    return-void
.end method

.method public push(Lcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 204
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->pushPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;)V

    return-void
.end method

.method public push(Ljava/lang/String;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->pushString(Ljava/lang/String;)V

    return-void
.end method

.method public push(Z)V
    .locals 0

    .line 188
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->pushBoolean(Z)V

    return-void
.end method

.method public put(IF)V
    .locals 0

    .line 112
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putArrayFloat(IF)V

    return-void
.end method

.method public put(II)V
    .locals 0

    .line 108
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putArrayInteger(II)V

    return-void
.end method

.method public put(ILcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 120
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putArrayPDFObject(ILcom/artifex/mupdf/fitz/PDFObject;)V

    return-void
.end method

.method public put(ILjava/lang/String;)V
    .locals 0

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putArrayString(ILjava/lang/String;)V

    return-void
.end method

.method public put(IZ)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putArrayBoolean(IZ)V

    return-void
.end method

.method public put(Lcom/artifex/mupdf/fitz/PDFObject;F)V
    .locals 0

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryPDFObjectFloat(Lcom/artifex/mupdf/fitz/PDFObject;F)V

    return-void
.end method

.method public put(Lcom/artifex/mupdf/fitz/PDFObject;I)V
    .locals 0

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryPDFObjectInteger(Lcom/artifex/mupdf/fitz/PDFObject;I)V

    return-void
.end method

.method public put(Lcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryPDFObjectPDFObject(Lcom/artifex/mupdf/fitz/PDFObject;Lcom/artifex/mupdf/fitz/PDFObject;)V

    return-void
.end method

.method public put(Lcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryPDFObjectString(Lcom/artifex/mupdf/fitz/PDFObject;Ljava/lang/String;)V

    return-void
.end method

.method public put(Lcom/artifex/mupdf/fitz/PDFObject;Z)V
    .locals 0

    .line 144
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryPDFObjectBoolean(Lcom/artifex/mupdf/fitz/PDFObject;Z)V

    return-void
.end method

.method public put(Ljava/lang/String;F)V
    .locals 0

    .line 132
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryStringFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public put(Ljava/lang/String;I)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryStringInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public put(Ljava/lang/String;Lcom/artifex/mupdf/fitz/PDFObject;)V
    .locals 0

    .line 140
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryStringPDFObject(Ljava/lang/String;Lcom/artifex/mupdf/fitz/PDFObject;)V

    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryStringString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .locals 0

    .line 124
    invoke-direct {p0, p1, p2}, Lcom/artifex/mupdf/fitz/PDFObject;->putDictionaryStringBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public native readRawStream()[B
.end method

.method public native readStream()[B
.end method

.method public native resolve()Lcom/artifex/mupdf/fitz/PDFObject;
.end method

.method public native size()I
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-virtual {p0, v0, v0}, Lcom/artifex/mupdf/fitz/PDFObject;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Z)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0}, Lcom/artifex/mupdf/fitz/PDFObject;->toString(ZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public native toString(ZZ)Ljava/lang/String;
.end method

.method public native writeObject(Lcom/artifex/mupdf/fitz/PDFObject;)V
.end method

.method public writeRawStream(Lcom/artifex/mupdf/fitz/Buffer;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->writeRawStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;)V

    return-void
.end method

.method public writeRawStream(Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->writeRawStreamString(Ljava/lang/String;)V

    return-void
.end method

.method public writeStream(Lcom/artifex/mupdf/fitz/Buffer;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->writeStreamBuffer(Lcom/artifex/mupdf/fitz/Buffer;)V

    return-void
.end method

.method public writeStream(Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/artifex/mupdf/fitz/PDFObject;->writeStreamString(Ljava/lang/String;)V

    return-void
.end method
