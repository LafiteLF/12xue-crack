.class public Lcom/apicloud/a/c/y;
.super Ljava/lang/Object;


# direct methods
.method public static final a(Lcom/apicloud/a/c;Ljava/lang/String;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/eclipsesource/v8/utils/ArrayBuffer;

    invoke-virtual {p0}, Lcom/eclipsesource/v8/utils/ArrayBuffer;->getV8ArrayBuffer()Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of p1, p0, Lcom/eclipsesource/v8/utils/TypedArray;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/eclipsesource/v8/utils/TypedArray;

    invoke-virtual {p0}, Lcom/eclipsesource/v8/utils/TypedArray;->getV8TypedArray()Lcom/eclipsesource/v8/V8TypedArray;

    move-result-object p0

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8TypedArray;->getBuffer()Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type V8ArrayBuffer"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final a(Ljava/nio/ByteBuffer;Lcom/apicloud/a/d;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 0

    invoke-interface {p1}, Lcom/apicloud/a/d;->i()Lcom/apicloud/a/c/x;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/c/x;->a(Ljava/nio/ByteBuffer;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static final a([BLcom/apicloud/a/d;)Lcom/eclipsesource/v8/V8ArrayBuffer;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/c/y;->a([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-interface {p1}, Lcom/apicloud/a/d;->i()Lcom/apicloud/a/c/x;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/c/x;->a(Ljava/nio/ByteBuffer;)Lcom/eclipsesource/v8/V8ArrayBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/eclipsesource/v8/V8Array;->getType(I)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/eclipsesource/v8/V8Array;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/c;->g(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p1, p2}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->getValue(Lcom/eclipsesource/v8/V8Array;ILcom/eclipsesource/v8/utils/TypeAdapter;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_1

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :cond_1
    return-object p0
.end method

.method public static a(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->getTypedArray(Lcom/eclipsesource/v8/V8Array;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/eclipsesource/v8/utils/V8ObjectUtils;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final a([B)Ljava/nio/ByteBuffer;
    .locals 1

    array-length v0, p0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    return-object v0
.end method

.method public static final a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->clear()Lcom/eclipsesource/v8/V8ArrayBuffer;

    invoke-virtual {p0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->remaining()I

    move-result v0

    new-array v0, v0, [B

    invoke-virtual {p0, v0}, Lcom/eclipsesource/v8/V8ArrayBuffer;->get([B)Lcom/eclipsesource/v8/V8ArrayBuffer;

    return-object v0
.end method

.method public static final b(Lcom/eclipsesource/v8/V8ArrayBuffer;)Ljava/nio/ByteBuffer;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/c/y;->a(Lcom/eclipsesource/v8/V8ArrayBuffer;)[B

    move-result-object p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static b(Ljava/lang/Object;)Z
    .locals 1

    invoke-static {}, Lcom/eclipsesource/v8/V8;->getUndefined()Lcom/eclipsesource/v8/V8Value;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/eclipsesource/v8/V8Value;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
