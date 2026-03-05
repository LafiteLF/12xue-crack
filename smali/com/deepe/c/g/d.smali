.class Lcom/deepe/c/g/d;
.super Ljava/lang/Object;


# static fields
.field private static e:Lcom/deepe/c/g/d;


# instance fields
.field private a:[B

.field private b:I

.field private c:I

.field private d:[B


# direct methods
.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/g/d;->a:[B

    const/4 v1, 0x0

    iput v1, p0, Lcom/deepe/c/g/d;->b:I

    iput v1, p0, Lcom/deepe/c/g/d;->c:I

    iput-object v0, p0, Lcom/deepe/c/g/d;->d:[B

    return-void
.end method

.method private a([BII[BI)I
    .locals 6

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_2

    add-int v0, p5, p3

    array-length v1, p4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p3, :cond_0

    return p3

    :cond_0
    iget v1, p0, Lcom/deepe/c/g/d;->b:I

    add-int/lit8 v1, v1, 0x1

    and-int/lit16 v1, v1, 0xff

    iput v1, p0, Lcom/deepe/c/g/d;->b:I

    iget-object v2, p0, Lcom/deepe/c/g/d;->a:[B

    aget-byte v3, v2, v1

    iget v4, p0, Lcom/deepe/c/g/d;->c:I

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    iput v3, p0, Lcom/deepe/c/g/d;->c:I

    aget-byte v4, v2, v1

    aget-byte v5, v2, v3

    aput-byte v5, v2, v1

    aput-byte v4, v2, v3

    add-int v4, v0, p5

    add-int v5, v0, p2

    aget-byte v5, p1, v5

    aget-byte v1, v2, v1

    aget-byte v3, v2, v3

    add-int/2addr v1, v3

    and-int/lit16 v1, v1, 0xff

    aget-byte v1, v2, v1

    xor-int/2addr v1, v5

    int-to-byte v1, v1

    aput-byte v1, p4, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "output buffer too short"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/InvalidParameterException;

    const-string p2, "input buffer too short"

    invoke-direct {p1, p2}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a()V
    .locals 1

    sget-object v0, Lcom/deepe/c/g/d;->e:Lcom/deepe/c/g/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/deepe/c/g/d;

    invoke-direct {v0}, Lcom/deepe/c/g/d;-><init>()V

    sput-object v0, Lcom/deepe/c/g/d;->e:Lcom/deepe/c/g/d;

    :cond_0
    return-void
.end method

.method private a([B)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/g/d;->d:[B

    invoke-direct {p0, p1}, Lcom/deepe/c/g/d;->b([B)V

    return-void
.end method

.method public static a([B[B)[B
    .locals 7

    invoke-static {}, Lcom/deepe/c/g/d;->a()V

    array-length v0, p0

    new-array v0, v0, [B

    sget-object v1, Lcom/deepe/c/g/d;->e:Lcom/deepe/c/g/d;

    invoke-direct {v1, p1}, Lcom/deepe/c/g/d;->a([B)V

    sget-object v1, Lcom/deepe/c/g/d;->e:Lcom/deepe/c/g/d;

    array-length v4, p0

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lcom/deepe/c/g/d;->a([BII[BI)I

    return-object v0
.end method

.method private b([B)V
    .locals 7

    iput-object p1, p0, Lcom/deepe/c/g/d;->d:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/g/d;->b:I

    iput v0, p0, Lcom/deepe/c/g/d;->c:I

    iget-object v1, p0, Lcom/deepe/c/g/d;->a:[B

    const/16 v2, 0x100

    if-nez v1, :cond_0

    new-array v1, v2, [B

    iput-object v1, p0, Lcom/deepe/c/g/d;->a:[B

    :cond_0
    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_2

    move v1, v0

    move v3, v1

    :goto_1
    if-lt v0, v2, :cond_1

    return-void

    :cond_1
    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    iget-object v5, p0, Lcom/deepe/c/g/d;->a:[B

    aget-byte v6, v5, v0

    add-int/2addr v4, v6

    add-int/2addr v4, v3

    and-int/lit16 v3, v4, 0xff

    aget-byte v4, v5, v0

    aget-byte v6, v5, v3

    aput-byte v6, v5, v0

    aput-byte v4, v5, v3

    add-int/lit8 v1, v1, 0x1

    array-length v4, p1

    rem-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/deepe/c/g/d;->a:[B

    int-to-byte v4, v1

    aput-byte v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
