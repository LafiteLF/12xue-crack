.class public Lcom/uzmap/pkg/uzmodules/photoBrowser/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# static fields
.field private static final CHARS:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

.field private static final PAD_CHAR:Ljava/lang/String; = "="


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static decode(Ljava/lang/String;)[B
    .locals 13

    .line 44
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 45
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    const-string v4, ""

    move v5, v3

    :goto_0
    const-string v6, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    const/4 v7, 0x2

    if-ge v5, v7, :cond_1

    add-int/lit8 v7, v2, -0x1

    sub-int/2addr v7, v5

    .line 49
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const-string v8, "="

    invoke-virtual {v8, v3}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v7, v8, :cond_0

    .line 50
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 52
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move v2, v3

    move v5, v2

    .line 54
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v2, v8, :cond_2

    .line 55
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    add-int/lit8 v9, v2, 0x1

    .line 56
    invoke-virtual {p0, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/lit8 v10, v2, 0x2

    .line 57
    invoke-virtual {p0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    add-int/lit8 v11, v2, 0x3

    .line 58
    invoke-virtual {p0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    invoke-virtual {v6, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    shl-int/2addr v8, v7

    shr-int/lit8 v12, v9, 0x4

    or-int/2addr v8, v12

    and-int/lit16 v8, v8, 0xff

    shl-int/lit8 v9, v9, 0x4

    shr-int/lit8 v12, v10, 0x2

    or-int/2addr v9, v12

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v10, v10, 0x6

    or-int/2addr v10, v11

    and-int/lit16 v10, v10, 0xff

    int-to-byte v8, v8

    .line 64
    aput-byte v8, v1, v5

    add-int/lit8 v8, v5, 0x1

    int-to-byte v9, v9

    .line 65
    aput-byte v9, v1, v8

    add-int/lit8 v8, v5, 0x2

    int-to-byte v9, v10

    .line 66
    aput-byte v9, v1, v8

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v5, v5, 0x3

    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    sub-int/2addr v0, p0

    invoke-static {v1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static encode([B)Ljava/lang/String;
    .locals 9

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    array-length v1, p0

    const/4 v2, 0x3

    rem-int/2addr v1, v2

    const-string v3, ""

    if-lez v1, :cond_0

    .line 16
    array-length v4, p0

    add-int/2addr v4, v2

    sub-int/2addr v4, v1

    invoke-static {p0, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    .line 21
    :goto_1
    array-length v4, p0

    if-ge v2, v4, :cond_1

    .line 22
    aget-byte v4, p0, v2

    add-int/lit8 v5, v2, 0x1

    .line 23
    aget-byte v5, p0, v5

    add-int/lit8 v6, v2, 0x2

    .line 24
    aget-byte v6, p0, v6

    shr-int/lit8 v7, v4, 0x2

    and-int/lit8 v7, v7, 0x3f

    shl-int/lit8 v4, v4, 0x4

    shr-int/lit8 v8, v5, 0x4

    or-int/2addr v4, v8

    and-int/lit8 v4, v4, 0x3f

    shl-int/lit8 v5, v5, 0x2

    shr-int/lit8 v8, v6, 0x6

    or-int/2addr v5, v8

    and-int/lit8 v5, v5, 0x3f

    and-int/lit8 v6, v6, 0x3f

    const-string v8, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    .line 31
    invoke-virtual {v8, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v8, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v8, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x3

    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
