.class public Lcom/deepe/a/d/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/a/d/f$a;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/a/d/f$a;

.field private b:Ljava/io/File;

.field private volatile c:I

.field private d:Lcom/deepe/a/d/d$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/a/d/f;->b:Ljava/io/File;

    const/4 v0, 0x2

    iput v0, p0, Lcom/deepe/a/d/f;->c:I

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/f;)I
    .locals 0

    iget p0, p0, Lcom/deepe/a/d/f;->c:I

    return p0
.end method

.method static synthetic a(Lcom/deepe/a/d/f;I)V
    .locals 0

    iput p1, p0, Lcom/deepe/a/d/f;->c:I

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/f;Ljava/io/File;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/a/d/f;->a(Ljava/io/File;)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/f;Ljava/io/FileOutputStream;JJJIJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p10}, Lcom/deepe/a/d/f;->a(Ljava/io/FileOutputStream;JJJIJ)V

    return-void
.end method

.method static synthetic a(Lcom/deepe/a/d/f;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/deepe/a/d/f;->a(ZLjava/lang/String;)V

    return-void
.end method

.method private a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/a/d/f;->b:Ljava/io/File;

    return-void
.end method

.method private a(Ljava/io/FileOutputStream;JJJIJ)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-wide v1, p2

    move-wide v3, p4

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move-wide/from16 v8, p9

    invoke-direct/range {v0 .. v9}, Lcom/deepe/a/d/f;->a(JJJIJ)[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move-object v3, p1

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/FileOutputStream;->write([BII)V

    return-void
.end method

.method private a(ZLjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/f;->d:Lcom/deepe/a/d/d$a;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/deepe/a/d/d$a;->a(ZLjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private a(JJJIJ)[B
    .locals 13

    const/16 v0, 0x2c

    new-array v0, v0, [B

    const/16 v1, 0x52

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    const/16 v1, 0x49

    const/4 v3, 0x1

    aput-byte v1, v0, v3

    const/16 v1, 0x46

    const/4 v4, 0x2

    aput-byte v1, v0, v4

    const/4 v5, 0x3

    aput-byte v1, v0, v5

    const-wide/16 v5, 0xff

    and-long v7, p3, v5

    long-to-int v1, v7

    int-to-byte v1, v1

    const/4 v7, 0x4

    aput-byte v1, v0, v7

    const/16 v1, 0x8

    shr-long v7, p3, v1

    and-long/2addr v7, v5

    long-to-int v7, v7

    int-to-byte v7, v7

    const/4 v8, 0x5

    aput-byte v7, v0, v8

    const/16 v7, 0x10

    shr-long v8, p3, v7

    and-long/2addr v8, v5

    long-to-int v8, v8

    int-to-byte v8, v8

    const/4 v9, 0x6

    aput-byte v8, v0, v9

    const/16 v8, 0x18

    shr-long v9, p3, v8

    and-long/2addr v9, v5

    long-to-int v9, v9

    int-to-byte v9, v9

    const/4 v10, 0x7

    aput-byte v9, v0, v10

    const/16 v9, 0x57

    aput-byte v9, v0, v1

    const/16 v9, 0x9

    const/16 v10, 0x41

    aput-byte v10, v0, v9

    const/16 v9, 0xa

    const/16 v10, 0x56

    aput-byte v10, v0, v9

    const/16 v9, 0xb

    const/16 v10, 0x45

    aput-byte v10, v0, v9

    const/16 v9, 0xc

    const/16 v10, 0x66

    aput-byte v10, v0, v9

    const/16 v9, 0xd

    const/16 v10, 0x6d

    aput-byte v10, v0, v9

    const/16 v9, 0x74

    const/16 v10, 0xe

    aput-byte v9, v0, v10

    const/16 v10, 0x20

    const/16 v11, 0xf

    aput-byte v10, v0, v11

    aput-byte v7, v0, v7

    const/16 v11, 0x11

    aput-byte v2, v0, v11

    const/16 v11, 0x12

    aput-byte v2, v0, v11

    const/16 v11, 0x13

    aput-byte v2, v0, v11

    const/16 v11, 0x14

    aput-byte v3, v0, v11

    const/16 v3, 0x15

    aput-byte v2, v0, v3

    move/from16 v3, p7

    int-to-byte v3, v3

    const/16 v11, 0x16

    aput-byte v3, v0, v11

    const/16 v3, 0x17

    aput-byte v2, v0, v3

    and-long v11, p5, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    aput-byte v3, v0, v8

    shr-long v11, p5, v1

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x19

    aput-byte v3, v0, v11

    shr-long v11, p5, v7

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1a

    aput-byte v3, v0, v11

    shr-long v11, p5, v8

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1b

    aput-byte v3, v0, v11

    and-long v11, p8, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1c

    aput-byte v3, v0, v11

    shr-long v11, p8, v1

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1d

    aput-byte v3, v0, v11

    shr-long v11, p8, v7

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1e

    aput-byte v3, v0, v11

    shr-long v11, p8, v8

    and-long/2addr v11, v5

    long-to-int v3, v11

    int-to-byte v3, v3

    const/16 v11, 0x1f

    aput-byte v3, v0, v11

    aput-byte v4, v0, v10

    const/16 v3, 0x21

    aput-byte v2, v0, v3

    const/16 v3, 0x22

    aput-byte v7, v0, v3

    const/16 v3, 0x23

    aput-byte v2, v0, v3

    const/16 v2, 0x24

    const/16 v3, 0x64

    aput-byte v3, v0, v2

    const/16 v2, 0x61

    const/16 v3, 0x25

    aput-byte v2, v0, v3

    const/16 v3, 0x26

    aput-byte v9, v0, v3

    const/16 v3, 0x27

    aput-byte v2, v0, v3

    and-long v2, p1, v5

    long-to-int v2, v2

    int-to-byte v2, v2

    const/16 v3, 0x28

    aput-byte v2, v0, v3

    shr-long v1, p1, v1

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x29

    aput-byte v1, v0, v2

    shr-long v1, p1, v7

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x2a

    aput-byte v1, v0, v2

    shr-long v1, p1, v8

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-byte v1, v1

    const/16 v2, 0x2b

    aput-byte v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/deepe/a/d/f;->b:Ljava/io/File;

    return-object v0
.end method

.method public final a(Lcom/deepe/a/d/d$a;)V
    .locals 2

    iget v0, p0, Lcom/deepe/a/d/f;->c:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/deepe/a/d/f;->d:Lcom/deepe/a/d/d$a;

    const/4 p1, 0x0

    iput p1, p0, Lcom/deepe/a/d/f;->c:I

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/deepe/a/d/f;->c:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepe/a/d/f;->a(Ljava/io/File;)V

    new-instance p1, Lcom/deepe/a/d/f$a;

    invoke-direct {p1, p0}, Lcom/deepe/a/d/f$a;-><init>(Lcom/deepe/a/d/f;)V

    iput-object p1, p0, Lcom/deepe/a/d/f;->a:Lcom/deepe/a/d/f$a;

    invoke-virtual {p1}, Lcom/deepe/a/d/f$a;->start()V

    return-void
.end method
