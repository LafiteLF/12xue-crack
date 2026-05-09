.class Lcom/deepe/c/c/a/a/d$f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/a/a/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "f"
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:Z

.field private final d:Z

.field private final e:Ljava/lang/String;


# direct methods
.method constructor <init>(IIZZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/c/c/a/a/d$f;->a:I

    iput p2, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    iput-boolean p3, p0, Lcom/deepe/c/c/a/a/d$f;->c:Z

    iput-boolean p4, p0, Lcom/deepe/c/c/a/a/d$f;->d:Z

    iput-object p5, p0, Lcom/deepe/c/c/a/a/d$f;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/k$ak;)Z
    .locals 6

    iget-boolean p1, p0, Lcom/deepe/c/c/a/a/d$f;->d:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/a/a/d$f;->e:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/d$f;->e:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_5

    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {v0}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v3, v1

    move v4, v3

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/deepe/c/c/a/a/k$am;

    check-cast v5, Lcom/deepe/c/c/a/a/k$ak;

    if-ne v5, p2, :cond_3

    move v3, v4

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v5}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v3, v1

    move v4, v2

    :goto_2
    iget-boolean p1, p0, Lcom/deepe/c/c/a/a/d$f;->c:Z

    if-eqz p1, :cond_6

    add-int/2addr v3, v2

    goto :goto_3

    :cond_6
    sub-int v3, v4, v3

    :goto_3
    iget p1, p0, Lcom/deepe/c/c/a/a/d$f;->a:I

    if-nez p1, :cond_8

    iget p1, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    if-ne v3, p1, :cond_7

    return v2

    :cond_7
    return v1

    :cond_8
    iget p2, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    sub-int v0, v3, p2

    rem-int/2addr v0, p1

    if-nez v0, :cond_a

    sub-int p1, v3, p2

    invoke-static {p1}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    if-eqz p1, :cond_9

    iget p1, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    sub-int/2addr v3, p1

    invoke-static {v3}, Ljava/lang/Integer;->signum(I)I

    move-result p1

    iget p2, p0, Lcom/deepe/c/c/a/a/d$f;->a:I

    invoke-static {p2}, Ljava/lang/Integer;->signum(I)I

    move-result p2

    if-ne p1, p2, :cond_a

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/d$f;->c:Z

    if-eqz v0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    const-string v0, "last-"

    :goto_0
    iget-boolean v1, p0, Lcom/deepe/c/c/a/a/d$f;->d:Z

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v4

    iget v0, p0, Lcom/deepe/c/c/a/a/d$f;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v3

    iget v0, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v2

    iget-object v0, p0, Lcom/deepe/c/c/a/a/d$f;->e:Ljava/lang/String;

    aput-object v0, v6, v5

    const-string v0, "nth-%schild(%dn%+d of type <%s>)"

    invoke-static {v1, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    iget v0, p0, Lcom/deepe/c/c/a/a/d$f;->a:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    iget v0, p0, Lcom/deepe/c/c/a/a/d$f;->b:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    const-string v0, "nth-%schild(%dn%+d)"

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0
.end method
