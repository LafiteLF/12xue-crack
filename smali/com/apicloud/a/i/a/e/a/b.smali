.class public Lcom/apicloud/a/i/a/e/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/e/a/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/a/i/a/e/a/b$a;,
        Lcom/apicloud/a/i/a/e/a/b$b;,
        Lcom/apicloud/a/i/a/e/a/b$c;,
        Lcom/apicloud/a/i/a/e/a/b$d;
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/i/a/e/a/b$a;

.field private b:I

.field private c:Lcom/apicloud/a/i/a/e/a/b;

.field private d:Lcom/apicloud/a/i/a/e/a/b$b;

.field private e:[I


# direct methods
.method public constructor <init>(ILcom/apicloud/a/i/a/e/a/b$a;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->c:Lcom/apicloud/a/i/a/e/a/b;

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iput p1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    new-array p1, v0, [I

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    return-void
.end method

.method public static a([C)Lcom/apicloud/a/i/a/e/a/b$b;
    .locals 1

    new-instance v0, Lcom/apicloud/a/i/a/e/a/b$c;

    invoke-direct {v0, p0}, Lcom/apicloud/a/i/a/e/a/b$c;-><init>([C)V

    return-object v0
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/e/a/b$b;Lcom/apicloud/a/i/a/e/a/a;)Lcom/apicloud/a/i/a/e/a/a;
    .locals 4

    if-nez p2, :cond_0

    const/4 p2, 0x4

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    goto :goto_0

    :cond_0
    instance-of v0, p2, Lcom/apicloud/a/i/a/e/a/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    check-cast p2, Lcom/apicloud/a/i/a/e/a/b;

    iget-object v1, p2, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/b$b;->b()I

    move-result v1

    const/4 v2, 0x0

    aget v3, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iget-object v1, p2, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/b$b;->a()I

    move-result v1

    const/4 v2, 0x1

    aget v3, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iget-object v1, p2, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    invoke-virtual {v1}, Lcom/apicloud/a/i/a/e/a/b$b;->d()I

    move-result v1

    const/4 v2, 0x2

    aget v3, v0, v2

    add-int/2addr v1, v3

    aput v1, v0, v2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    const/4 v1, 0x3

    aget v2, v0, v1

    iget-object p2, p2, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/e/a/b$b;->c()I

    move-result p2

    add-int/2addr v2, p2

    aput v2, v0, v1

    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    return-object p0

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Previous view must be an instance of BackedFlushDataImpl."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(I)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object p1

    iget v0, p1, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->c:Lcom/apicloud/a/i/a/e/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/e/a/b;

    iget p1, p1, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    invoke-direct {v0, p1, v1}, Lcom/apicloud/a/i/a/e/a/b;-><init>(ILcom/apicloud/a/i/a/e/a/b$a;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->c:Lcom/apicloud/a/i/a/e/a/b;

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->c:Lcom/apicloud/a/i/a/e/a/b;

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iput-object v0, p1, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iput-object v0, p1, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    return-object p1

    :cond_1
    iget v0, p1, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iget v1, p1, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iget v2, p1, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v3, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    iget p1, p1, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    aget p1, v3, p1

    add-int/2addr v2, p1

    invoke-static {v0, v1, v2}, Lcom/apicloud/a/i/a/e/a/b$a;->a(Lcom/apicloud/a/i/a/e/a/b$a;II)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot access unknown value."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/apicloud/a/i/a/e/a/b;->b()I

    move-result v2

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/apicloud/a/i/a/e/a/b;->a(I)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcom/apicloud/a/i/a/e/a/d;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/apicloud/a/i/a/e/a/d;

    invoke-interface {v2}, Lcom/apicloud/a/i/a/e/a/d;->a()Ljava/util/List;

    move-result-object v2

    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public b()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(I)I

    move-result v0

    return v0
.end method

.method public b(I)Lcom/apicloud/a/i/a/e/a/d;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object v0

    iget v0, v0, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/e/a/b;->a(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/e/a/d;

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a List."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public c(I)F
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object v0

    iget v1, v0, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    if-nez v1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iget v0, v0, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/e/a/b$a;->a(Lcom/apicloud/a/i/a/e/a/b$a;I)D

    move-result-wide v0

    double-to-float p1, v0

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a double."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public d(I)Z
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object v0

    iget v1, v0, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iget v0, v0, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/e/a/b$a;->b(Lcom/apicloud/a/i/a/e/a/b$a;I)Z

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a boolean."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object v0

    iget v1, v0, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iget v0, v0, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/e/a/b$a;->c(Lcom/apicloud/a/i/a/e/a/b$a;I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not a string."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f(I)I
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b;->d:Lcom/apicloud/a/i/a/e/a/b$b;

    iget v1, p0, Lcom/apicloud/a/i/a/e/a/b;->b:I

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$b;->a(II)Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object v0

    iget v1, v0, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b;->a:Lcom/apicloud/a/i/a/e/a/b$a;

    iget v0, v0, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    iget-object v1, p0, Lcom/apicloud/a/i/a/e/a/b;->e:[I

    aget v1, v1, v2

    add-int/2addr v0, v1

    invoke-static {p1, v0}, Lcom/apicloud/a/i/a/e/a/b$a;->d(Lcom/apicloud/a/i/a/e/a/b$a;I)I

    move-result p1

    return p1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not an integer."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
