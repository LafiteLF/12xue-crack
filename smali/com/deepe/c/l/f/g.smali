.class public abstract Lcom/deepe/c/l/f/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/l/f/f;


# static fields
.field private static synthetic h:[I


# instance fields
.field private a:Z

.field private b:Lcom/deepe/c/l/c/c;

.field private c:Ljava/nio/ByteBuffer;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/deepe/c/l/c/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/l/f/g;->b:Lcom/deepe/c/l/c/c;

    invoke-static {}, Lcom/deepe/c/l/i/b;->a()Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->a:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->d:Z

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->e:Z

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->f:Z

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->g:Z

    return-void
.end method

.method public static a(Lcom/deepe/c/l/c/c;)Lcom/deepe/c/l/f/g;
    .locals 1

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/deepe/c/l/f/g;->j()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Supplied opcode is invalid"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    new-instance p0, Lcom/deepe/c/l/f/b;

    invoke-direct {p0}, Lcom/deepe/c/l/f/b;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lcom/deepe/c/l/f/i;

    invoke-direct {p0}, Lcom/deepe/c/l/f/i;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lcom/deepe/c/l/f/h;

    invoke-direct {p0}, Lcom/deepe/c/l/f/h;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lcom/deepe/c/l/f/a;

    invoke-direct {p0}, Lcom/deepe/c/l/f/a;-><init>()V

    return-object p0

    :pswitch_4
    new-instance p0, Lcom/deepe/c/l/f/j;

    invoke-direct {p0}, Lcom/deepe/c/l/f/j;-><init>()V

    return-object p0

    :pswitch_5
    new-instance p0, Lcom/deepe/c/l/f/c;

    invoke-direct {p0}, Lcom/deepe/c/l/f/c;-><init>()V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Supplied opcode cannot be null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic j()[I
    .locals 3

    sget-object v0, Lcom/deepe/c/l/f/g;->h:[I

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/deepe/c/l/c/c;->values()[Lcom/deepe/c/l/c/c;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/deepe/c/l/c/c;->c:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v1, Lcom/deepe/c/l/c/c;->f:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :try_start_2
    sget-object v1, Lcom/deepe/c/l/c/c;->a:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :try_start_3
    sget-object v1, Lcom/deepe/c/l/c/c;->d:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :catch_3
    :try_start_4
    sget-object v1, Lcom/deepe/c/l/c/c;->e:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    :try_start_5
    sget-object v1, Lcom/deepe/c/l/c/c;->b:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :catch_5
    sput-object v0, Lcom/deepe/c/l/f/g;->h:[I

    return-object v0
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->a:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->e:Z

    return-void
.end method

.method public abstract c()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/l/d/c;
        }
    .end annotation
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->f:Z

    return-void
.end method

.method public d()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->g:Z

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/deepe/c/l/f/g;->d:Z

    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/f/g;->a:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_a

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Lcom/deepe/c/l/f/g;

    iget-boolean v2, p0, Lcom/deepe/c/l/f/g;->a:Z

    iget-boolean v3, p1, Lcom/deepe/c/l/f/g;->a:Z

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-boolean v2, p0, Lcom/deepe/c/l/f/g;->d:Z

    iget-boolean v3, p1, Lcom/deepe/c/l/f/g;->d:Z

    if-eq v2, v3, :cond_3

    return v1

    :cond_3
    iget-boolean v2, p0, Lcom/deepe/c/l/f/g;->e:Z

    iget-boolean v3, p1, Lcom/deepe/c/l/f/g;->e:Z

    if-eq v2, v3, :cond_4

    return v1

    :cond_4
    iget-boolean v2, p0, Lcom/deepe/c/l/f/g;->f:Z

    iget-boolean v3, p1, Lcom/deepe/c/l/f/g;->f:Z

    if-eq v2, v3, :cond_5

    return v1

    :cond_5
    iget-boolean v2, p0, Lcom/deepe/c/l/f/g;->g:Z

    iget-boolean v3, p1, Lcom/deepe/c/l/f/g;->g:Z

    if-eq v2, v3, :cond_6

    return v1

    :cond_6
    iget-object v2, p0, Lcom/deepe/c/l/f/g;->b:Lcom/deepe/c/l/c/c;

    iget-object v3, p1, Lcom/deepe/c/l/f/g;->b:Lcom/deepe/c/l/c/c;

    if-eq v2, v3, :cond_7

    return v1

    :cond_7
    iget-object v2, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    iget-object p1, p1, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_8

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_8
    if-nez p1, :cond_9

    goto :goto_0

    :cond_9
    move v0, v1

    :goto_0
    return v0

    :cond_a
    :goto_1
    return v1
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/f/g;->e:Z

    return v0
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/f/g;->f:Z

    return v0
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/deepe/c/l/f/g;->g:Z

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-boolean v0, p0, Lcom/deepe/c/l/f/g;->a:Z

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepe/c/l/f/g;->b:Lcom/deepe/c/l/c/c;

    invoke-virtual {v1}, Lcom/deepe/c/l/c/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepe/c/l/f/g;->d:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepe/c/l/f/g;->e:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepe/c/l/f/g;->f:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/deepe/c/l/f/g;->g:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public i()Lcom/deepe/c/l/c/c;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/l/f/g;->b:Lcom/deepe/c/l/c/c;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Framedata{ opcode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/deepe/c/l/f/g;->i()Lcom/deepe/c/l/c/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", fin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/f/g;->e()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rsv1:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/f/g;->f()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rsv2:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/f/g;->g()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", rsv3:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/deepe/c/l/f/g;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", payload length:[pos:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", len:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "], payload:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    const-string v1, "(too big to display)"

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/deepe/c/l/f/g;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
