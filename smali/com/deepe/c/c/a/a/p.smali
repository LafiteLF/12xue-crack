.class public Lcom/deepe/c/c/a/a/p;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/deepe/c/c/a/a/h;

.field final b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    new-instance v0, Lcom/deepe/c/c/a/a/h;

    invoke-direct {v0}, Lcom/deepe/c/c/a/a/h;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/c/a/a/p;->a:Lcom/deepe/c/c/a/a/h;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    return-void
.end method


# virtual methods
.method a(F)F
    .locals 0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p1

    return p1
.end method

.method a(Ljava/lang/Boolean;)F
    .locals 0

    if-nez p1, :cond_0

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result p1

    return p1
.end method

.method a(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->j()Z

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->o()Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method a(Z)Ljava/lang/Integer;
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->d:I

    invoke-static {v0, v1, v2, p1}, Lcom/deepe/c/c/a/a/g;->a(Ljava/lang/String;IIZ)Lcom/deepe/c/c/a/a/g;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/g;->a()I

    move-result v0

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {p1}, Lcom/deepe/c/c/a/a/g;->b()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method a(CZ)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-nez p2, :cond_1

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/a/a/p;->a(I)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    if-ne v0, p1, :cond_3

    :cond_2
    return-object v1

    :cond_3
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :cond_4
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->p()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    goto :goto_0

    :cond_5
    if-ne v1, p1, :cond_6

    goto :goto_0

    :cond_6
    if-nez p2, :cond_4

    invoke-virtual {p0, v1}, Lcom/deepe/c/c/a/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget p2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {p1, v0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(C)Z
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, p1, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :cond_1
    return p1
.end method

.method a(I)Z
    .locals 1

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->d:I

    sub-int/2addr v2, v0

    if-gt v1, v2, :cond_0

    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    add-int v3, v1, v0

    invoke-virtual {v2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :cond_1
    return p1
.end method

.method public b(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/c/a/a/p;->a(CZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method b(I)Z
    .locals 1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method c(C)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/deepe/c/c/a/a/p;->a(CZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h()Z
    .locals 2

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 2

    :goto_0
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    if-lt v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p0, v0}, Lcom/deepe/c/c/a/a/p;->a(I)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    return-void

    :cond_1
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    goto :goto_0
.end method

.method public j()Z
    .locals 3

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2c

    if-eq v0, v1, :cond_1

    return v2

    :cond_1
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->i()V

    return v1
.end method

.method public k()F
    .locals 4

    iget-object v0, p0, Lcom/deepe/c/c/a/a/p;->a:Lcom/deepe/c/c/a/a/h;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v3, p0, Lcom/deepe/c/c/a/a/p;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/h;->a(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->a:Lcom/deepe/c/c/a/a/h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/h;->a()I

    move-result v1

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :cond_0
    return v0
.end method

.method l()F
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->j()Z

    iget-object v0, p0, Lcom/deepe/c/c/a/a/p;->a:Lcom/deepe/c/c/a/a/h;

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v3, p0, Lcom/deepe/c/c/a/a/p;->d:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/deepe/c/c/a/a/h;->a(Ljava/lang/String;II)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->a:Lcom/deepe/c/c/a/a/h;

    invoke-virtual {v1}, Lcom/deepe/c/c/a/a/h;->a()I

    move-result v1

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :cond_0
    return v0
.end method

.method m()Ljava/lang/Integer;
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method n()Lcom/deepe/c/c/a/a/k$p;
    .locals 3

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->k()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->u()Lcom/deepe/c/c/a/a/k$bc;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/deepe/c/c/a/a/k$p;

    sget-object v2, Lcom/deepe/c/c/a/a/k$bc;->a:Lcom/deepe/c/c/a/a/k$bc;

    invoke-direct {v1, v0, v2}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    return-object v1

    :cond_1
    new-instance v2, Lcom/deepe/c/c/a/a/k$p;

    invoke-direct {v2, v0, v1}, Lcom/deepe/c/c/a/a/k$p;-><init>(FLcom/deepe/c/c/a/a/k$bc;)V

    return-object v2
.end method

.method o()Ljava/lang/Boolean;
    .locals 4

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return-object v2

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x30

    const/16 v3, 0x31

    if-eq v0, v1, :cond_2

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_0
    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    if-ne v0, v3, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_3
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method p()I
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    const/4 v2, -0x1

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_1
    return v2
.end method

.method public q()Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/c/a/a/p;->a(CZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 7

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x7a

    const/16 v4, 0x5a

    const/16 v5, 0x61

    const/16 v6, 0x41

    if-lt v2, v6, :cond_1

    if-le v2, v4, :cond_2

    :cond_1
    if-lt v2, v5, :cond_5

    if-gt v2, v3, :cond_5

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->p()I

    move-result v1

    if-lt v1, v6, :cond_3

    if-le v1, v4, :cond_2

    :cond_3
    if-lt v1, v5, :cond_4

    if-le v1, v3, :cond_2

    :cond_4
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5
    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    return-object v1
.end method

.method s()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    :goto_0
    const/16 v3, 0x61

    if-lt v2, v3, :cond_1

    const/16 v3, 0x7a

    if-le v2, v3, :cond_2

    :cond_1
    const/16 v3, 0x41

    if-lt v2, v3, :cond_3

    const/16 v3, 0x5a

    if-le v2, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->p()I

    move-result v2

    goto :goto_0

    :cond_3
    :goto_1
    iget v3, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :goto_2
    invoke-virtual {p0, v2}, Lcom/deepe/c/c/a/a/p;->a(I)Z

    move-result v4

    if-nez v4, :cond_5

    const/16 v4, 0x28

    if-ne v2, v4, :cond_4

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_4
    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    return-object v1

    :cond_5
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->p()I

    move-result v2

    goto :goto_2
.end method

.method t()Ljava/lang/String;
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    :goto_0
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {p0, v1}, Lcom/deepe/c/c/a/a/p;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    return-object v1
.end method

.method u()Lcom/deepe/c/c/a/a/k$bc;
    .locals 4

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x25

    if-ne v0, v2, :cond_1

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    sget-object v0, Lcom/deepe/c/c/a/a/k$bc;->i:Lcom/deepe/c/c/a/a/k$bc;

    return-object v0

    :cond_1
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->d:I

    add-int/lit8 v2, v2, -0x2

    if-le v0, v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/c/a/a/k$bc;->valueOf(Ljava/lang/String;)Lcom/deepe/c/c/a/a/k$bc;

    move-result-object v0

    iget v2, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/deepe/c/c/a/a/p;->c:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    return-object v1
.end method

.method v()Z
    .locals 3

    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x61

    if-lt v0, v1, :cond_1

    const/16 v1, 0x7a

    if-le v0, v1, :cond_2

    :cond_1
    const/16 v1, 0x41

    if-lt v0, v1, :cond_3

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public w()Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x27

    if-eq v2, v3, :cond_1

    const/16 v3, 0x22

    if-eq v2, v3, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->p()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-ne v3, v2, :cond_1

    :cond_2
    if-ne v3, v4, :cond_3

    iput v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    return-object v1

    :cond_3
    iget v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v2, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method x()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/deepe/c/c/a/a/p;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v0, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget v1, p0, Lcom/deepe/c/c/a/a/p;->d:I

    iput v1, p0, Lcom/deepe/c/c/a/a/p;->c:I

    iget-object v1, p0, Lcom/deepe/c/c/a/a/p;->b:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
