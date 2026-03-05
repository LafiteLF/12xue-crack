.class Lcom/apicloud/a/i/a/e/a/b$c;
.super Lcom/apicloud/a/i/a/e/a/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:I

.field h:I

.field private final i:[[Lcom/apicloud/a/i/a/e/a/b$d;

.field private final j:[I


# direct methods
.method public constructor <init>([C)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/e/a/b$b;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->a:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->b:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->c:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->d:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->e:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->f:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->g:I

    iput v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->h:I

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$c;->a([C)[[Lcom/apicloud/a/i/a/e/a/b$d;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$c;->i:[[Lcom/apicloud/a/i/a/e/a/b$d;

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$c;->a([[Lcom/apicloud/a/i/a/e/a/b$d;)[I

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$c;->j:[I

    return-void
.end method

.method private a([[Lcom/apicloud/a/i/a/e/a/b$d;II[C)I
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, p2

    move v1, p3

    :goto_0
    array-length v3, p4

    if-lt v1, v3, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p3

    new-array p3, p3, [Lcom/apicloud/a/i/a/e/a/b$d;

    invoke-interface {v0, p3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/apicloud/a/i/a/e/a/b$d;

    aput-object p3, p1, p2

    array-length p1, p4

    return p1

    :cond_0
    new-instance v3, Lcom/apicloud/a/i/a/e/a/b$d;

    invoke-direct {v3}, Lcom/apicloud/a/i/a/e/a/b$d;-><init>()V

    aget-char v4, p4, v1

    const/16 v5, 0x44

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ne v4, v5, :cond_1

    iput v6, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iget v4, p0, Lcom/apicloud/a/i/a/e/a/b$c;->d:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apicloud/a/i/a/e/a/b$c;->d:I

    :goto_1
    iput v4, v3, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    goto :goto_2

    :cond_1
    aget-char v4, p4, v1

    const/16 v5, 0x42

    if-ne v4, v5, :cond_2

    iput v7, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iget v4, p0, Lcom/apicloud/a/i/a/e/a/b$c;->b:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apicloud/a/i/a/e/a/b$c;->b:I

    goto :goto_1

    :cond_2
    aget-char v4, p4, v1

    const/16 v5, 0x53

    if-ne v4, v5, :cond_3

    const/4 v4, 0x2

    iput v4, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iget v4, p0, Lcom/apicloud/a/i/a/e/a/b$c;->h:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apicloud/a/i/a/e/a/b$c;->h:I

    goto :goto_1

    :cond_3
    aget-char v4, p4, v1

    const/16 v5, 0x49

    if-ne v4, v5, :cond_4

    const/4 v4, 0x3

    iput v4, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iget v4, p0, Lcom/apicloud/a/i/a/e/a/b$c;->f:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/apicloud/a/i/a/e/a/b$c;->f:I

    goto :goto_1

    :cond_4
    aget-char v4, p4, v1

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_5

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, p1, v2, v4, p4}, Lcom/apicloud/a/i/a/e/a/b$c;->a([[Lcom/apicloud/a/i/a/e/a/b$d;II[C)I

    move-result v4

    add-int/2addr v1, v4

    const/4 v4, 0x4

    iput v4, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iput v2, v3, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    goto :goto_2

    :cond_5
    aget-char v4, p4, v1

    const/16 v5, 0x5d

    if-ne v4, v5, :cond_6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Lcom/apicloud/a/i/a/e/a/b$d;

    invoke-interface {v0, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Lcom/apicloud/a/i/a/e/a/b$d;

    aput-object p4, p1, p2

    sub-int/2addr v1, p3

    add-int/2addr v1, v7

    return v1

    :cond_6
    aget-char v4, p4, v1

    const/16 v5, 0x3f

    if-ne v4, v5, :cond_7

    const/4 v4, 0x5

    iput v4, v3, Lcom/apicloud/a/i/a/e/a/b$d;->b:I

    iput v6, v3, Lcom/apicloud/a/i/a/e/a/b$d;->a:I

    :cond_7
    :goto_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/2addr v1, v7

    goto/16 :goto_0
.end method

.method private a([[Lcom/apicloud/a/i/a/e/a/b$d;)[I
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-object v2, p1, v1

    array-length v2, v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private a([C)[[Lcom/apicloud/a/i/a/e/a/b$d;
    .locals 5

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$c;->b([C)I

    move-result v0

    new-array v0, v0, [[Lcom/apicloud/a/i/a/e/a/b$d;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, v1, p1}, Lcom/apicloud/a/i/a/e/a/b$c;->a([[Lcom/apicloud/a/i/a/e/a/b$d;II[C)I

    array-length v2, p1

    :goto_0
    if-lt v1, v2, :cond_0

    return-object v0

    :cond_0
    aget-char v3, p1, v1

    const/16 v4, 0x44

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->c:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->c:I

    goto :goto_1

    :cond_1
    const/16 v4, 0x42

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->a:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->a:I

    goto :goto_1

    :cond_2
    const/16 v4, 0x53

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->g:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->g:I

    goto :goto_1

    :cond_3
    const/16 v4, 0x49

    if-ne v3, v4, :cond_4

    iget v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->e:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/apicloud/a/i/a/e/a/b$c;->e:I

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private b([C)I
    .locals 5

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v0, :cond_0

    return v1

    :cond_0
    aget-char v3, p1, v2

    const/16 v4, 0x5b

    if-ne v3, v4, :cond_1

    add-int/lit8 v1, v1, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->a:I

    return v0
.end method

.method public a(I)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->j:[I

    aget p1, v0, p1

    return p1
.end method

.method public a(II)Lcom/apicloud/a/i/a/e/a/b$d;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->i:[[Lcom/apicloud/a/i/a/e/a/b$d;

    aget-object p1, v0, p1

    aget-object p1, p1, p2

    return-object p1
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->c:I

    return v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->e:I

    return v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/e/a/b$c;->g:I

    return v0
.end method
