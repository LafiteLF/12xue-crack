.class Lcom/apicloud/a/i/a/ad/a/e;
.super Ljava/lang/Object;


# instance fields
.field private a:[Ljava/lang/Object;

.field private b:[I

.field private c:[Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private e:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/apicloud/a/i/a/ad/a/e;->a:[Ljava/lang/Object;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/e;->b:[I

    return-void
.end method

.method private b()V
    .locals 10

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/e;->a:[Ljava/lang/Object;

    array-length v0, v0

    iget v1, p0, Lcom/apicloud/a/i/a/ad/a/e;->d:I

    iget-object v2, p0, Lcom/apicloud/a/i/a/ad/a/e;->c:[Landroid/util/SparseArray;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_0

    return-void

    :cond_0
    aget-object v5, v2, v4

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v6

    sub-int v7, v6, v0

    add-int/lit8 v6, v6, -0x1

    move v8, v3

    :goto_1
    if-lt v8, v7, :cond_1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v9, v6, -0x1

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    add-int/lit8 v8, v8, 0x1

    move v6, v9

    goto :goto_1
.end method


# virtual methods
.method a()V
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/i/a/ad/a/e;->a:[Ljava/lang/Object;

    iget-object v1, p0, Lcom/apicloud/a/i/a/ad/a/e;->b:[I

    iget v2, p0, Lcom/apicloud/a/i/a/ad/a/e;->d:I

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v4, p0, Lcom/apicloud/a/i/a/ad/a/e;->e:Landroid/util/SparseArray;

    array-length v5, v0

    sub-int/2addr v5, v3

    :goto_1
    if-gez v5, :cond_1

    invoke-direct {p0}, Lcom/apicloud/a/i/a/ad/a/e;->b()V

    return-void

    :cond_1
    aget-object v3, v0, v5

    if-eqz v3, :cond_4

    aget v6, v1, v5

    const/4 v7, 0x0

    aput-object v7, v0, v5

    const/4 v7, -0x1

    aput v7, v1, v5

    invoke-virtual {p0, v6}, Lcom/apicloud/a/i/a/ad/a/e;->b(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    iget-object v4, p0, Lcom/apicloud/a/i/a/ad/a/e;->c:[Landroid/util/SparseArray;

    aget-object v4, v4, v6

    :cond_3
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_4
    :goto_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1
.end method

.method a(I)V
    .locals 4

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1

    new-array v0, p1, [Landroid/util/SparseArray;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-lt v2, p1, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/a/ad/a/e;->d:I

    aget-object p1, v0, v1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ad/a/e;->e:Landroid/util/SparseArray;

    iput-object v0, p0, Lcom/apicloud/a/i/a/ad/a/e;->c:[Landroid/util/SparseArray;

    return-void

    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Can\'t have a objectTypeCount < 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method b(I)Z
    .locals 0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
