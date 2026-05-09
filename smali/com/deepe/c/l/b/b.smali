.class public Lcom/deepe/c/l/b/b;
.super Lcom/deepe/c/l/b/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/l/b/b$a;
    }
.end annotation


# instance fields
.field private a:Lcom/deepe/c/l/e/b;

.field private d:Lcom/deepe/c/l/e/b;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/l/e/b;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/deepe/c/l/e/b;

.field private g:Lcom/deepe/c/l/h/a;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/l/h/a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/deepe/c/l/f/f;

.field private final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/nio/ByteBuffer;

.field private final l:Ljava/security/SecureRandom;

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/deepe/c/l/b/b;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/e/b;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/l/h/b;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/deepe/c/l/h/b;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/l/b/b;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/e/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/h/a;",
            ">;)V"
        }
    .end annotation

    const v0, 0x7fffffff

    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/l/b/b;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/e/b;",
            ">;",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/h/a;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/l/b/a;-><init>()V

    new-instance v0, Lcom/deepe/c/l/e/a;

    invoke-direct {v0}, Lcom/deepe/c/l/e/a;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    new-instance v0, Lcom/deepe/c/l/e/a;

    invoke-direct {v0}, Lcom/deepe/c/l/e/a;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->d:Lcom/deepe/c/l/e/b;

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->l:Ljava/security/SecureRandom;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    const/4 v0, 0x1

    if-lt p3, v0, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->h:Ljava/util/List;

    const/4 v1, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-nez v1, :cond_1

    iget-object p1, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/l/b/b;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iput p3, p0, Lcom/deepe/c/l/b/b;->m:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    return-void

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/l/e/b;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/deepe/c/l/e/a;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private a(Lcom/deepe/c/l/c/c;)B
    .locals 3

    sget-object v0, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    sget-object v0, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    sget-object v0, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x2

    return p1

    :cond_2
    sget-object v0, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_3

    const/16 p1, 0x8

    return p1

    :cond_3
    sget-object v0, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_4

    const/16 p1, 0x9

    return p1

    :cond_4
    sget-object v0, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    if-ne p1, v0, :cond_5

    const/16 p1, 0xa

    return p1

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Don\'t know how to handle "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/deepe/c/l/c/c;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Z)B
    .locals 0

    if-eqz p1, :cond_0

    const/16 p1, -0x80

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private a(Ljava/nio/ByteBuffer;Lcom/deepe/c/l/c/c;III)Lcom/deepe/c/l/b/b$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/d;,
            Lcom/deepe/c/l/d/a;,
            Lcom/deepe/c/l/d/f;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    if-eq p2, v0, :cond_2

    sget-object v0, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    if-eq p2, v0, :cond_2

    const/16 p2, 0x7e

    if-ne p3, p2, :cond_0

    const/4 p2, 0x2

    add-int/2addr p5, p2

    invoke-direct {p0, p4, p5}, Lcom/deepe/c/l/b/b;->a(II)V

    const/4 p3, 0x3

    new-array p3, p3, [B

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p4

    const/4 v0, 0x1

    aput-byte p4, p3, v0

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result p1

    aput-byte p1, p3, p2

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->intValue()I

    move-result p1

    goto :goto_1

    :cond_0
    const/16 p2, 0x8

    add-int/2addr p5, p2

    invoke-direct {p0, p4, p5}, Lcom/deepe/c/l/b/b;->a(II)V

    new-array p3, p2, [B

    const/4 p4, 0x0

    :goto_0
    if-lt p4, p2, :cond_1

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, p3}, Ljava/math/BigInteger;-><init>([B)V

    invoke-virtual {p1}, Ljava/math/BigInteger;->longValue()J

    move-result-wide p1

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->a(J)V

    long-to-int p1, p1

    :goto_1
    new-instance p2, Lcom/deepe/c/l/b/b$a;

    invoke-direct {p2, p0, p1, p5}, Lcom/deepe/c/l/b/b$a;-><init>(Lcom/deepe/c/l/b/b;II)V

    return-object p2

    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    aput-byte v0, p3, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/d;

    const-string p2, "more than 125 octets"

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Ljava/lang/String;)Lcom/deepe/c/l/c/b;
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/l/h/a;

    invoke-interface {v1, p1}, Lcom/deepe/c/l/h/a;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->g:Lcom/deepe/c/l/h/a;

    sget-object p1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    return-object p1
.end method

.method private a(B)Lcom/deepe/c/l/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/d;
        }
    .end annotation

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    new-instance v0, Lcom/deepe/c/l/d/d;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown opcode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    int-to-short p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/deepe/c/l/d/d;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object p1, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    return-object p1

    :pswitch_1
    sget-object p1, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    return-object p1

    :pswitch_2
    sget-object p1, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    return-object p1

    :cond_0
    sget-object p1, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    return-object p1

    :cond_1
    sget-object p1, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    return-object p1

    :cond_2
    sget-object p1, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    return-object p1

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private a(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/a;
        }
    .end annotation

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/l/d/a;

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/a;-><init>(I)V

    throw p1
.end method

.method private a(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/f;
        }
    .end annotation

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p1, v0

    if-gtz v0, :cond_2

    iget v0, p0, Lcom/deepe/c/l/b/b;->m:I

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/l/d/f;

    const-string p2, "Payloadsize is to little..."

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/f;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/deepe/c/l/d/f;

    iget p2, p0, Lcom/deepe/c/l/b/b;->m:I

    const-string v0, "Payload limit reached."

    invoke-direct {p1, v0, p2}, Lcom/deepe/c/l/d/f;-><init>(Ljava/lang/String;I)V

    throw p1

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/f;

    const-string p2, "Payloadsize is to big..."

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/f;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;Lcom/deepe/c/l/c/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    if-eq p3, v0, :cond_0

    invoke-direct {p0, p2}, Lcom/deepe/c/l/b/b;->c(Lcom/deepe/c/l/f/f;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->d(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    if-eqz p1, :cond_5

    :goto_0
    sget-object p1, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    if-ne p3, p1, :cond_3

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/l/i/c;->b(Ljava/nio/ByteBuffer;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/c;

    const/16 p2, 0x3ef

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/c;-><init>(I)V

    throw p1

    :cond_3
    :goto_1
    sget-object p1, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    if-ne p3, p1, :cond_4

    iget-object p1, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    if-eqz p1, :cond_4

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->g(Ljava/nio/ByteBuffer;)V

    :cond_4
    return-void

    :cond_5
    new-instance p1, Lcom/deepe/c/l/d/c;

    const/16 p2, 0x3ea

    const-string p3, "Continuous frame sequence was not started."

    invoke-direct {p1, p2, p3}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private a(Lcom/deepe/c/l/d;Ljava/lang/RuntimeException;)V
    .locals 1

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/Exception;)V

    return-void
.end method

.method private a(JI)[B
    .locals 5

    new-array v0, p3, [B

    mul-int/lit8 v1, p3, 0x8

    add-int/lit8 v1, v1, -0x8

    const/4 v2, 0x0

    :goto_0
    if-lt v2, p3, :cond_0

    return-object v0

    :cond_0
    mul-int/lit8 v3, v2, 0x8

    sub-int v3, v1, v3

    ushr-long v3, p1, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private b(I)B
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/16 p1, 0x10

    return p1

    :cond_1
    const/16 p1, 0x20

    return p1

    :cond_2
    const/16 p1, 0x40

    return p1
.end method

.method private b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :try_start_0
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/l/i/a;->a([B)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private b(Lcom/deepe/c/l/f/f;)Ljava/nio/ByteBuffer;
    .locals 10

    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->b:Lcom/deepe/c/l/c/e;

    sget-object v2, Lcom/deepe/c/l/c/e;->a:Lcom/deepe/c/l/c/e;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-direct {p0, v0}, Lcom/deepe/c/l/b/b;->f(Ljava/nio/ByteBuffer;)I

    move-result v2

    if-le v2, v4, :cond_1

    add-int/lit8 v5, v2, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    add-int/2addr v5, v4

    const/4 v6, 0x4

    if-eqz v1, :cond_2

    move v7, v6

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    add-int/2addr v5, v7

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v7

    add-int/2addr v5, v7

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->i()Lcom/deepe/c/l/c/c;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/c/c;)B

    move-result v7

    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->e()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, -0x80

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    int-to-byte v8, v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->f()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-direct {p0, v4}, Lcom/deepe/c/l/b/b;->b(I)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    :cond_4
    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->g()Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_5

    invoke-direct {p0, v9}, Lcom/deepe/c/l/b/b;->b(I)B

    move-result v8

    or-int/2addr v7, v8

    int-to-byte v7, v7

    :cond_5
    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->h()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->b(I)B

    move-result p1

    or-int/2addr p1, v7

    int-to-byte v7, p1

    :cond_6
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    int-to-long v7, p1

    invoke-direct {p0, v7, v8, v2}, Lcom/deepe/c/l/b/b;->a(JI)[B

    move-result-object p1

    if-ne v2, v4, :cond_7

    aget-byte p1, p1, v3

    invoke-direct {p0, v1}, Lcom/deepe/c/l/b/b;->a(Z)B

    move-result v2

    or-int/2addr p1, v2

    int-to-byte p1, p1

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_7
    if-ne v2, v9, :cond_8

    invoke-direct {p0, v1}, Lcom/deepe/c/l/b/b;->a(Z)B

    move-result v2

    or-int/lit8 v2, v2, 0x7e

    :goto_4
    int-to-byte v2, v2

    invoke-virtual {v5, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    invoke-virtual {v5, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_5

    :cond_8
    const/16 v7, 0x8

    if-ne v2, v7, :cond_b

    invoke-direct {p0, v1}, Lcom/deepe/c/l/b/b;->a(Z)B

    move-result v2

    or-int/lit8 v2, v2, 0x7f

    goto :goto_4

    :goto_5
    if-eqz v1, :cond_a

    invoke-static {v6}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->l:Ljava/security/SecureRandom;

    invoke-virtual {v1}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    :goto_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_7

    :cond_9
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    rem-int/lit8 v2, v3, 0x4

    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v2

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/2addr v3, v4

    goto :goto_6

    :cond_a
    invoke-virtual {v5, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    :goto_7
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v5

    :cond_b
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Size representation not supported/specified"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .locals 1

    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object v0

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/nio/ByteBuffer;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/d;Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method private c(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object v0

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/l/i/c;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/d;Ljava/lang/RuntimeException;)V

    :goto_0
    return-void
.end method

.method private c(Lcom/deepe/c/l/f/f;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    if-nez v0, :cond_0

    iput-object p1, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-interface {p1}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->g(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->k()V

    return-void

    :cond_0
    new-instance p1, Lcom/deepe/c/l/d/c;

    const/16 v0, 0x3ea

    const-string v1, "Previous continuous frame sequence not completed."

    invoke-direct {p1, v0, v1}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private d(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/deepe/c/l/b/b;->g(Ljava/nio/ByteBuffer;)V

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->k()V

    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->i()Lcom/deepe/c/l/c/c;

    move-result-object p2

    sget-object v0, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    if-ne p2, v0, :cond_0

    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    check-cast p2, Lcom/deepe/c/l/f/g;

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->l()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/deepe/c/l/f/g;->a(Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    check-cast p2, Lcom/deepe/c/l/f/g;

    invoke-virtual {p2}, Lcom/deepe/c/l/f/g;->c()V

    :try_start_0
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object p2

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-interface {v0}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/l/i/c;->a(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/d;Ljava/lang/RuntimeException;)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->i()Lcom/deepe/c/l/c/c;

    move-result-object p2

    sget-object v0, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    if-ne p2, v0, :cond_1

    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    check-cast p2, Lcom/deepe/c/l/f/g;

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->l()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/deepe/c/l/f/g;->a(Ljava/nio/ByteBuffer;)V

    iget-object p2, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    check-cast p2, Lcom/deepe/c/l/f/g;

    invoke-virtual {p2}, Lcom/deepe/c/l/f/g;->c()V

    :try_start_1
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object p2

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-interface {v0}, Lcom/deepe/c/l/f/f;->d()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Ljava/nio/ByteBuffer;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_1
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->j()V

    return-void

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/c;

    const/16 p2, 0x3ea

    const-string v0, "Continuous frame sequence was not started."

    invoke-direct {p1, p2, v0}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1
.end method

.method private e(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/f/f;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/a;,
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    if-eqz p1, :cond_e

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    const/4 v0, 0x2

    invoke-direct {p0, v6, v0}, Lcom/deepe/c/l/b/b;->a(II)V

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    shr-int/lit8 v2, v1, 0x8

    const/4 v3, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    move v8, v3

    goto :goto_0

    :cond_0
    move v8, v7

    :goto_0
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_1

    move v9, v3

    goto :goto_1

    :cond_1
    move v9, v7

    :goto_1
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_2

    move v10, v3

    goto :goto_2

    :cond_2
    move v10, v7

    :goto_2
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    move v11, v3

    goto :goto_3

    :cond_3
    move v11, v7

    :goto_3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    and-int/lit8 v4, v2, -0x80

    if-eqz v4, :cond_4

    move v12, v3

    goto :goto_4

    :cond_4
    move v12, v7

    :goto_4
    and-int/lit8 v2, v2, 0x7f

    int-to-byte v3, v2

    and-int/lit8 v1, v1, 0xf

    int-to-byte v1, v1

    invoke-direct {p0, v1}, Lcom/deepe/c/l/b/b;->a(B)Lcom/deepe/c/l/c/c;

    move-result-object v13

    if-ltz v3, :cond_5

    const/16 v1, 0x7d

    if-le v3, v1, :cond_6

    :cond_5
    const/4 v5, 0x2

    move-object v0, p0

    move-object v1, p1

    move-object v2, v13

    move v4, v6

    invoke-direct/range {v0 .. v5}, Lcom/deepe/c/l/b/b;->a(Ljava/nio/ByteBuffer;Lcom/deepe/c/l/c/c;III)Lcom/deepe/c/l/b/b$a;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/l/b/b$a;->a(Lcom/deepe/c/l/b/b$a;)I

    move-result v3

    invoke-static {v0}, Lcom/deepe/c/l/b/b$a;->b(Lcom/deepe/c/l/b/b$a;)I

    move-result v0

    :cond_6
    int-to-long v1, v3

    invoke-direct {p0, v1, v2}, Lcom/deepe/c/l/b/b;->a(J)V

    const/4 v1, 0x4

    if-eqz v12, :cond_7

    move v2, v1

    goto :goto_5

    :cond_7
    move v2, v7

    :goto_5
    add-int/2addr v0, v2

    add-int/2addr v0, v3

    invoke-direct {p0, v6, v0}, Lcom/deepe/c/l/b/b;->a(II)V

    invoke-virtual {p0, v3}, Lcom/deepe/c/l/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v12, :cond_9

    new-array v1, v1, [B

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    :goto_6
    if-lt v7, v3, :cond_8

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    move-result v2

    rem-int/lit8 v4, v7, 0x4

    aget-byte v4, v1, v4

    xor-int/2addr v2, v4

    int-to-byte v2, v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_7
    invoke-static {v13}, Lcom/deepe/c/l/f/g;->a(Lcom/deepe/c/l/c/c;)Lcom/deepe/c/l/f/g;

    move-result-object p1

    invoke-virtual {p1, v8}, Lcom/deepe/c/l/f/g;->a(Z)V

    invoke-virtual {p1, v9}, Lcom/deepe/c/l/f/g;->b(Z)V

    invoke-virtual {p1, v10}, Lcom/deepe/c/l/f/g;->c(Z)V

    invoke-virtual {p1, v11}, Lcom/deepe/c/l/f/g;->d(Z)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    invoke-virtual {p1, v0}, Lcom/deepe/c/l/f/g;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p1}, Lcom/deepe/c/l/f/g;->i()Lcom/deepe/c/l/c/c;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    if-eq v0, v1, :cond_c

    invoke-virtual {p1}, Lcom/deepe/c/l/f/g;->f()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/deepe/c/l/f/g;->g()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p1}, Lcom/deepe/c/l/f/g;->h()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    iget-object v0, p0, Lcom/deepe/c/l/b/b;->d:Lcom/deepe/c/l/e/b;

    goto :goto_9

    :cond_b
    :goto_8
    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v0

    :goto_9
    iput-object v0, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    :cond_c
    iget-object v0, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->d:Lcom/deepe/c/l/e/b;

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    :cond_d
    iget-object v0, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    invoke-interface {v0, p1}, Lcom/deepe/c/l/e/b;->c(Lcom/deepe/c/l/f/f;)V

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->f:Lcom/deepe/c/l/e/b;

    invoke-interface {v0, p1}, Lcom/deepe/c/l/e/b;->a(Lcom/deepe/c/l/f/f;)V

    invoke-virtual {p1}, Lcom/deepe/c/l/f/g;->c()V

    return-object p1

    :cond_e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private e(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .locals 4

    instance-of v0, p2, Lcom/deepe/c/l/f/b;

    if-eqz v0, :cond_0

    check-cast p2, Lcom/deepe/c/l/f/b;

    invoke-virtual {p2}, Lcom/deepe/c/l/f/b;->a()I

    move-result v0

    invoke-virtual {p2}, Lcom/deepe/c/l/f/b;->b()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/16 v0, 0x3ed

    const-string p2, ""

    :goto_0
    invoke-virtual {p1}, Lcom/deepe/c/l/d;->f()Lcom/deepe/c/l/c/d;

    move-result-object v1

    sget-object v2, Lcom/deepe/c/l/c/d;->c:Lcom/deepe/c/l/c/d;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1, v0, p2, v3}, Lcom/deepe/c/l/d;->b(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->b()Lcom/deepe/c/l/c/a;

    move-result-object v1

    sget-object v2, Lcom/deepe/c/l/c/a;->c:Lcom/deepe/c/l/c/a;

    if-ne v1, v2, :cond_2

    invoke-virtual {p1, v0, p2, v3}, Lcom/deepe/c/l/d;->a(ILjava/lang/String;Z)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Lcom/deepe/c/l/d;->c(ILjava/lang/String;Z)V

    :goto_1
    return-void
.end method

.method private f(Ljava/nio/ByteBuffer;)I
    .locals 2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    const/16 v1, 0x7d

    if-gt v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    const v0, 0xffff

    if-gt p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 p1, 0x8

    return p1
.end method

.method private g(Ljava/nio/ByteBuffer;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private i()Ljava/lang/String;
    .locals 4

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "EEE, dd MMM yyyy HH:mm:ss z"

    invoke-direct {v1, v3, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    const-string v2, "GMT"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private j()V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private k()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/f;
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->m()J

    move-result-wide v0

    iget v2, p0, Lcom/deepe/c/l/b/b;->m:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->j()V

    new-instance v0, Lcom/deepe/c/l/d/f;

    iget v1, p0, Lcom/deepe/c/l/b/b;->m:I

    invoke-direct {v0, v1}, Lcom/deepe/c/l/d/f;-><init>(I)V

    throw v0
.end method

.method private l()Ljava/nio/ByteBuffer;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/f;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->k()V

    long-to-int v1, v2

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-object v1

    :cond_0
    :try_start_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private m()J
    .locals 6

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    monitor-exit v0

    return-wide v2

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->limit()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public a(Lcom/deepe/c/l/g/a;)Lcom/deepe/c/l/c/b;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/deepe/c/l/b/b;->c(Lcom/deepe/c/l/g/f;)I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_0
    sget-object v0, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    const-string v1, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v1}, Lcom/deepe/c/l/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/l/e/b;

    invoke-interface {v3, v1}, Lcom/deepe/c/l/e/b;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput-object v3, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    sget-object v0, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    :goto_0
    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v1}, Lcom/deepe/c/l/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->a(Ljava/lang/String;)Lcom/deepe/c/l/c/b;

    move-result-object p1

    sget-object v1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne p1, v1, :cond_3

    sget-object p1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne v0, p1, :cond_3

    sget-object p1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_3
    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1
.end method

.method public a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/h;)Lcom/deepe/c/l/c/b;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/g/f;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_0
    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/a;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "Sec-WebSocket-Accept"

    invoke-interface {p2, v1}, Lcom/deepe/c/l/g/h;->c(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p2, v1}, Lcom/deepe/c/l/g/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_2
    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    const-string v0, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v0}, Lcom/deepe/c/l/g/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/l/e/b;

    invoke-interface {v2, v0}, Lcom/deepe/c/l/e/b;->b(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    iput-object v2, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    sget-object p1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    :goto_0
    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0}, Lcom/deepe/c/l/g/h;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/deepe/c/l/b/b;->a(Ljava/lang/String;)Lcom/deepe/c/l/c/b;

    move-result-object p2

    sget-object v0, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne p2, v0, :cond_5

    sget-object p2, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    if-ne p1, p2, :cond_5

    sget-object p1, Lcom/deepe/c/l/c/b;->a:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_5
    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1

    :cond_6
    :goto_1
    sget-object p1, Lcom/deepe/c/l/c/b;->b:Lcom/deepe/c/l/c/b;

    return-object p1
.end method

.method public a(Lcom/deepe/c/l/g/b;)Lcom/deepe/c/l/g/b;
    .locals 5

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p1, v0, v1}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Connection"

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->l:Ljava/security/SecureRandom;

    invoke-virtual {v1, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    invoke-static {v0}, Lcom/deepe/c/l/i/a;->a([B)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Key"

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Version"

    const-string v1, "13"

    invoke-interface {p1, v0, v1}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, ", "

    if-nez v2, :cond_6

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Extensions"

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Sec-WebSocket-Protocol"

    invoke-interface {p1, v1, v0}, Lcom/deepe/c/l/g/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object p1

    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/l/h/a;

    invoke-interface {v0}, Lcom/deepe/c/l/h/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {v0}, Lcom/deepe/c/l/h/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/l/e/b;

    invoke-interface {v2}, Lcom/deepe/c/l/e/b;->a()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Lcom/deepe/c/l/e/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-interface {v2}, Lcom/deepe/c/l/e/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public a(Lcom/deepe/c/l/g/a;Lcom/deepe/c/l/g/i;)Lcom/deepe/c/l/g/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/e;
        }
    .end annotation

    const-string v0, "Upgrade"

    const-string v1, "websocket"

    invoke-interface {p2, v0, v1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Connection"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Sec-WebSocket-Key"

    invoke-interface {p1, v0}, Lcom/deepe/c/l/g/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Accept"

    invoke-interface {p2, v0, p1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/deepe/c/l/e/b;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/deepe/c/l/e/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Extensions"

    invoke-interface {p2, v0, p1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/deepe/c/l/h/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/deepe/c/l/h/a;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Sec-WebSocket-Protocol"

    invoke-interface {p2, v0, p1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string p1, "Web Socket Protocol Handshake"

    invoke-interface {p2, p1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;)V

    const-string p1, "Server"

    const-string v0, "TooTallNate Java-WebSocket"

    invoke-interface {p2, p1, v0}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/deepe/c/l/b/b;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Date"

    invoke-interface {p2, v0, p1}, Lcom/deepe/c/l/g/i;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_2
    new-instance p1, Lcom/deepe/c/l/d/e;

    const-string p2, "missing Sec-WebSocket-Key"

    invoke-direct {p1, p2}, Lcom/deepe/c/l/d/e;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lcom/deepe/c/l/f/f;)Ljava/nio/ByteBuffer;
    .locals 1

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/deepe/c/l/e/b;->b(Lcom/deepe/c/l/f/f;)V

    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->b(Lcom/deepe/c/l/f/f;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/l/f/j;

    invoke-direct {v0}, Lcom/deepe/c/l/f/j;-><init>()V

    invoke-static {p1}, Lcom/deepe/c/l/i/c;->a(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/f/j;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p2}, Lcom/deepe/c/l/f/j;->e(Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/deepe/c/l/f/j;->c()V
    :try_end_0
    .catch Lcom/deepe/c/l/d/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/deepe/c/l/d/g;

    invoke-direct {p2, p1}, Lcom/deepe/c/l/d/g;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a(Ljava/nio/ByteBuffer;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/l/f/a;

    invoke-direct {v0}, Lcom/deepe/c/l/f/a;-><init>()V

    invoke-virtual {v0, p1}, Lcom/deepe/c/l/f/a;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, p2}, Lcom/deepe/c/l/f/a;->e(Z)V

    :try_start_0
    invoke-virtual {v0}, Lcom/deepe/c/l/f/a;->c()V
    :try_end_0
    .catch Lcom/deepe/c/l/d/c; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Lcom/deepe/c/l/d/g;

    invoke-direct {p2, p1}, Lcom/deepe/c/l/d/g;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/deepe/c/l/e/b;->d()V

    :cond_0
    new-instance v1, Lcom/deepe/c/l/e/a;

    invoke-direct {v1}, Lcom/deepe/c/l/e/a;-><init>()V

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->g:Lcom/deepe/c/l/h/a;

    return-void
.end method

.method public a(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->i()Lcom/deepe/c/l/c/c;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->e(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/l/e;->a(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->h()V

    invoke-virtual {p1}, Lcom/deepe/c/l/d;->i()Lcom/deepe/c/l/e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/deepe/c/l/e;->b(Lcom/deepe/c/l/b;Lcom/deepe/c/l/f/f;)V

    goto :goto_1

    :cond_2
    invoke-interface {p2}, Lcom/deepe/c/l/f/f;->e()Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->i:Lcom/deepe/c/l/f/f;

    const/16 v2, 0x3ea

    if-nez v1, :cond_6

    sget-object v1, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->c(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    if-ne v0, v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/l/b/b;->b(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;)V

    goto :goto_1

    :cond_5
    new-instance p1, Lcom/deepe/c/l/d/c;

    const-string p2, "non control or continious frame expected"

    invoke-direct {p1, v2, p2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Lcom/deepe/c/l/d/c;

    const-string p2, "Continuous frame sequence not completed."

    invoke-direct {p1, v2, p2}, Lcom/deepe/c/l/d/c;-><init>(ILjava/lang/String;)V

    throw p1

    :cond_7
    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/deepe/c/l/b/b;->a(Lcom/deepe/c/l/d;Lcom/deepe/c/l/f/f;Lcom/deepe/c/l/c/c;)V

    :goto_1
    return-void
.end method

.method public b()Lcom/deepe/c/l/c/a;
    .locals 1

    sget-object v0, Lcom/deepe/c/l/c/a;->c:Lcom/deepe/c/l/c/a;

    return-object v0
.end method

.method public c()Lcom/deepe/c/l/b/a;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->h()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lcom/deepe/c/l/b/b;

    iget v3, p0, Lcom/deepe/c/l/b/b;->m:I

    invoke-direct {v1, v0, v2, v3}, Lcom/deepe/c/l/b/b;-><init>(Ljava/util/List;Ljava/util/List;I)V

    return-object v1

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/deepe/c/l/h/a;

    invoke-interface {v1}, Lcom/deepe/c/l/h/a;->b()Lcom/deepe/c/l/h/a;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/deepe/c/l/e/b;

    invoke-interface {v2}, Lcom/deepe/c/l/e/b;->c()Lcom/deepe/c/l/e/b;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public c(Ljava/nio/ByteBuffer;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/f/f;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation

    :goto_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget-object v2, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-le v2, v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {v1, v3, v4, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    add-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    invoke-direct {p0, v1}, Lcom/deepe/c/l/b/b;->e(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/f/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/deepe/c/l/d/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/deepe/c/l/d/a;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepe/c/l/b/b;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    iput-object v0, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    :try_start_1
    invoke-direct {p0, p1}, Lcom/deepe/c/l/b/b;->e(Ljava/nio/ByteBuffer;)Lcom/deepe/c/l/f/f;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/deepe/c/l/d/a; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    invoke-virtual {v1}, Lcom/deepe/c/l/d/a;->a()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepe/c/l/b/b;->a(I)I

    move-result v1

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/deepe/c/l/b/b;->k:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    :goto_2
    return-object v0
.end method

.method public d()Lcom/deepe/c/l/e/b;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    return-object v0
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/e/b;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->e:Ljava/util/List;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_2

    :cond_1
    check-cast p1, Lcom/deepe/c/l/b/b;

    iget v2, p0, Lcom/deepe/c/l/b/b;->m:I

    invoke-virtual {p1}, Lcom/deepe/c/l/b/b;->g()I

    move-result v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v2

    if-eqz v2, :cond_4

    :goto_0
    return v1

    :cond_4
    iget-object v2, p0, Lcom/deepe/c/l/b/b;->g:Lcom/deepe/c/l/h/a;

    invoke-virtual {p1}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object p1

    if-eqz v2, :cond_5

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_1

    :cond_5
    if-nez p1, :cond_6

    goto :goto_1

    :cond_6
    move v0, v1

    :goto_1
    return v0

    :cond_7
    :goto_2
    return v1
.end method

.method public f()Lcom/deepe/c/l/h/a;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->g:Lcom/deepe/c/l/h/a;

    return-object v0
.end method

.method public g()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/l/b/b;->m:I

    return v0
.end method

.method public h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/deepe/c/l/h/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->h:Ljava/util/List;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/l/b/b;->a:Lcom/deepe/c/l/e/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/deepe/c/l/b/b;->g:Lcom/deepe/c/l/h/a;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/deepe/c/l/b/b;->m:I

    ushr-int/lit8 v2, v1, 0x20

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    invoke-super {p0}, Lcom/deepe/c/l/b/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " extension: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->d()Lcom/deepe/c/l/e/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/deepe/c/l/e/b;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " protocol: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/b/b;->f()Lcom/deepe/c/l/h/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/deepe/c/l/h/a;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, " max frame size: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/deepe/c/l/b/b;->m:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
