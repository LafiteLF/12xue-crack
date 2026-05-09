.class Lcom/deepe/c/c/e$b;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:I

.field public final c:J

.field public final d:[B


# direct methods
.method constructor <init>(IIJ[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/e$b;->a:I

    iput p2, p0, Lcom/deepe/c/c/e$b;->b:I

    iput-wide p3, p0, Lcom/deepe/c/c/e$b;->c:J

    iput-object p5, p0, Lcom/deepe/c/c/e$b;->d:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .locals 6

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/deepe/c/c/e$b;-><init>(IIJ[B)V

    return-void
.end method

.method public static a(ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    invoke-static {v0, p1}, Lcom/deepe/c/c/e$b;->a([ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    invoke-static {v0, p2}, Lcom/deepe/c/c/e$b;->a([JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lcom/deepe/c/c/e$d;Ljava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/deepe/c/c/e$d;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    invoke-static {v0, p1}, Lcom/deepe/c/c/e$b;->a([Lcom/deepe/c/c/e$d;Ljava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/deepe/c/c/e$b;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/deepe/c/c/e;->e()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    new-instance v0, Lcom/deepe/c/c/e$b;

    array-length v1, p0

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1, p0}, Lcom/deepe/c/c/e$b;-><init>(II[B)V

    return-object v0
.end method

.method public static a([ILjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 4

    invoke-static {}, Lcom/deepe/c/c/e;->d()[I

    move-result-object v0

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    new-instance p1, Lcom/deepe/c/c/e$b;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/deepe/c/c/e$b;-><init>(II[B)V

    return-object p1

    :cond_0
    aget v3, p0, v2

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a([JLjava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 5

    invoke-static {}, Lcom/deepe/c/c/e;->d()[I

    move-result-object v0

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    new-instance p1, Lcom/deepe/c/c/e$b;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/deepe/c/c/e$b;-><init>(II[B)V

    return-object p1

    :cond_0
    aget-wide v3, p0, v2

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a([Lcom/deepe/c/c/e$d;Ljava/nio/ByteOrder;)Lcom/deepe/c/c/e$b;
    .locals 6

    invoke-static {}, Lcom/deepe/c/c/e;->d()[I

    move-result-object v0

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    array-length p1, p0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p1, :cond_0

    new-instance p1, Lcom/deepe/c/c/e$b;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Lcom/deepe/c/c/e$b;-><init>(II[B)V

    return-object p1

    :cond_0
    aget-object v3, p0, v2

    iget-wide v4, v3, Lcom/deepe/c/c/e$d;->a:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v3, v3, Lcom/deepe/c/c/e$d;->b:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method a(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/deepe/c/c/e$a;

    iget-object v2, p0, Lcom/deepe/c/c/e$b;->d:[B

    invoke-direct {v1, v2}, Lcom/deepe/c/c/e$a;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v1, p1}, Lcom/deepe/c/c/e$a;->a(Ljava/nio/ByteOrder;)V

    iget p1, p0, Lcom/deepe/c/c/e$b;->a:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object v0

    :pswitch_0
    :try_start_2
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [D

    :goto_0
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-lt v3, v2, :cond_0

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_0
    :try_start_3
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readDouble()D

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_1
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [D

    :goto_1
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-lt v3, v2, :cond_1

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_1
    :try_start_4
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readFloat()F

    move-result v2

    float-to-double v4, v2

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :pswitch_2
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [Lcom/deepe/c/c/e$d;

    :goto_2
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-lt v3, v2, :cond_2

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_2
    :try_start_5
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v2

    int-to-long v5, v2

    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v2

    int-to-long v7, v2

    new-instance v2, Lcom/deepe/c/c/e$d;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/deepe/c/c/e$d;-><init>(JJLcom/deepe/c/c/e$d;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :pswitch_3
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [I

    :goto_3
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-lt v3, v2, :cond_3

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_3
    :try_start_6
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readInt()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :pswitch_4
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [I

    :goto_4
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-lt v3, v2, :cond_4

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_4
    :try_start_7
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readShort()S

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :pswitch_5
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [Lcom/deepe/c/c/e$d;

    :goto_5
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lt v3, v2, :cond_5

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_5
    :try_start_8
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->c()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->c()J

    move-result-wide v7

    new-instance v2, Lcom/deepe/c/c/e$d;

    const/4 v9, 0x0

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/deepe/c/c/e$d;-><init>(JJLcom/deepe/c/c/e$d;)V

    aput-object v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :pswitch_6
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [J

    :goto_6
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    if-lt v3, v2, :cond_6

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_6
    :try_start_9
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->c()J

    move-result-wide v4

    aput-wide v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :pswitch_7
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    new-array p1, p1, [I

    :goto_7
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    if-lt v3, v2, :cond_7

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_7
    :try_start_a
    invoke-virtual {v1}, Lcom/deepe/c/c/e$a;->readUnsignedShort()I

    move-result v2

    aput v2, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :pswitch_8
    iget p1, p0, Lcom/deepe/c/c/e$b;->b:I

    invoke-static {}, Lcom/deepe/c/c/e;->g()[B

    move-result-object v4

    array-length v4, v4

    if-lt p1, v4, :cond_a

    move p1, v3

    :goto_8
    invoke-static {}, Lcom/deepe/c/c/e;->g()[B

    move-result-object v4

    array-length v4, v4

    if-lt p1, v4, :cond_8

    goto :goto_9

    :cond_8
    iget-object v4, p0, Lcom/deepe/c/c/e$b;->d:[B

    aget-byte v4, v4, p1

    invoke-static {}, Lcom/deepe/c/c/e;->g()[B

    move-result-object v5

    aget-byte v5, v5, p1

    if-eq v4, v5, :cond_9

    move v2, v3

    :goto_9
    if-eqz v2, :cond_a

    invoke-static {}, Lcom/deepe/c/c/e;->g()[B

    move-result-object p1

    array-length v3, p1

    goto :goto_a

    :cond_9
    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_a
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_b
    iget v2, p0, Lcom/deepe/c/c/e$b;->b:I

    if-lt v3, v2, :cond_b

    goto :goto_c

    :cond_b
    iget-object v2, p0, Lcom/deepe/c/c/e$b;->d:[B

    aget-byte v2, v2, v3

    if-nez v2, :cond_c

    :goto_c
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_c
    const/16 v4, 0x20

    if-lt v2, v4, :cond_d

    int-to-char v2, v2

    :try_start_b
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_d
    const/16 v2, 0x3f

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_d
    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :pswitch_9
    iget-object p1, p0, Lcom/deepe/c/c/e$b;->d:[B

    array-length p1, p1

    if-ne p1, v2, :cond_e

    iget-object p1, p0, Lcom/deepe/c/c/e$b;->d:[B

    aget-byte p1, p1, v3

    if-ltz p1, :cond_e

    iget-object p1, p0, Lcom/deepe/c/c/e$b;->d:[B

    aget-byte p1, p1, v3

    if-gt p1, v2, :cond_e

    new-instance p1, Ljava/lang/String;

    new-array v2, v2, [C

    iget-object v4, p0, Lcom/deepe/c/c/e$b;->d:[B

    aget-byte v4, v4, v3

    add-int/lit8 v4, v4, 0x30

    int-to-char v4, v4

    aput-char v4, v2, v3

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([C)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :cond_e
    :try_start_c
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/c/e$b;->d:[B

    invoke-static {}, Lcom/deepe/c/c/e;->e()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-direct {p1, v2, v3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_e

    :catchall_0
    move-exception p1

    goto :goto_f

    :catch_1
    move-exception p1

    move-object v1, v0

    :goto_e
    :try_start_d
    const-string v2, "app3c"

    const-string v3, "IOException occurred during reading a value"

    invoke-static {v2, v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    invoke-static {v1}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v0, v1

    :goto_f
    invoke-static {v0}, Lcom/deepe/c/c/f;->a(Ljava/io/Closeable;)V

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public b(Ljava/nio/ByteOrder;)D
    .locals 4

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/e$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_9

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_1

    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_3

    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    instance-of v0, p1, [D

    if-eqz v0, :cond_6

    check-cast p1, [D

    array-length v0, p1

    if-ne v0, v3, :cond_5

    aget-wide v0, p1, v1

    return-wide v0

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    instance-of v0, p1, [Lcom/deepe/c/c/e$d;

    if-eqz v0, :cond_8

    check-cast p1, [Lcom/deepe/c/c/e$d;

    array-length v0, p1

    if-ne v0, v3, :cond_7

    aget-object p1, p1, v1

    invoke-virtual {p1}, Lcom/deepe/c/c/e$d;->a()D

    move-result-wide v0

    return-wide v0

    :cond_7
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/nio/ByteOrder;)I
    .locals 4

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/e$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_5

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    :cond_0
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    check-cast p1, [J

    array-length v0, p1

    if-ne v0, v3, :cond_1

    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    :cond_1
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    instance-of v0, p1, [I

    if-eqz v0, :cond_4

    check-cast p1, [I

    array-length v0, p1

    if-ne v0, v3, :cond_3

    aget p1, p1, v1

    return p1

    :cond_3
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public d(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .locals 7

    invoke-virtual {p0, p1}, Lcom/deepe/c/c/e$b;->a(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast p1, Ljava/lang/String;

    return-object p1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, [J

    :cond_2
    :goto_0
    array-length p1, v2

    if-lt v4, p1, :cond_3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_3
    aget-wide v5, v2, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length p1, v2

    if-eq v4, p1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    instance-of v2, p1, [I

    if-eqz v2, :cond_7

    move-object v2, p1

    check-cast v2, [I

    :cond_5
    :goto_1
    array-length p1, v2

    if-lt v4, p1, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_6
    aget p1, v2, v4

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length p1, v2

    if-eq v4, p1, :cond_5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    instance-of v2, p1, [D

    if-eqz v2, :cond_a

    move-object v2, p1

    check-cast v2, [D

    :cond_8
    :goto_2
    array-length p1, v2

    if-lt v4, p1, :cond_9

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_9
    aget-wide v5, v2, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length p1, v2

    if-eq v4, p1, :cond_8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_a
    instance-of v2, p1, [Lcom/deepe/c/c/e$d;

    if-eqz v2, :cond_d

    check-cast p1, [Lcom/deepe/c/c/e$d;

    :cond_b
    :goto_3
    array-length v0, p1

    if-lt v4, v0, :cond_c

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_c
    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/deepe/c/c/e$d;->a:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    aget-object v0, p1, v4

    iget-wide v5, v0, Lcom/deepe/c/c/e$d;->b:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    array-length v0, p1

    if-eq v4, v0, :cond_b

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_d
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/deepe/c/c/e;->f()[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/deepe/c/c/e$b;->a:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/c/e$b;->d:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
