.class public Lcom/apicloud/a/i/a/e/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/e/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:[Z

.field private b:[D

.field private c:[I

.field private d:[Ljava/lang/String;


# direct methods
.method public constructor <init>([D[Z[Ljava/lang/String;[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$a;->b:[D

    iput-object p2, p0, Lcom/apicloud/a/i/a/e/a/b$a;->a:[Z

    iput-object p3, p0, Lcom/apicloud/a/i/a/e/a/b$a;->d:[Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/i/a/e/a/b$a;->c:[I

    return-void
.end method

.method private a(I)D
    .locals 3

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$a;->b:[D

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/e/a/b$a;I)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$a;->a(I)D

    move-result-wide p0

    return-wide p0
.end method

.method private a(II)Ljava/lang/Object;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$a;->c:[I

    aget p1, p1, p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$a;->d:[Ljava/lang/String;

    aget-object p1, p1, p2

    return-object p1

    :cond_2
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$a;->a:[Z

    aget-boolean p1, p1, p2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_3
    iget-object p1, p0, Lcom/apicloud/a/i/a/e/a/b$a;->b:[D

    aget-wide v0, p1, p2

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/apicloud/a/i/a/e/a/b$a;II)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/a/b$a;->a(II)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private b(I)Z
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$a;->a:[Z

    aget-boolean p1, v0, p1

    return p1
.end method

.method static synthetic b(Lcom/apicloud/a/i/a/e/a/b$a;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$a;->b(I)Z

    move-result p0

    return p0
.end method

.method private c(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$a;->d:[Ljava/lang/String;

    aget-object p1, v0, p1

    return-object p1
.end method

.method static synthetic c(Lcom/apicloud/a/i/a/e/a/b$a;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$a;->c(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private d(I)I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/e/a/b$a;->c:[I

    aget p1, v0, p1

    return p1
.end method

.method static synthetic d(Lcom/apicloud/a/i/a/e/a/b$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/e/a/b$a;->d(I)I

    move-result p0

    return p0
.end method
