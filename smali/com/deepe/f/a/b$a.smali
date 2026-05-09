.class public final Lcom/deepe/f/a/b$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/f/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field private static a:[I


# instance fields
.field private b:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/deepe/f/a/b$a;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x1
    .end array-data
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/deepe/f/a/b$a;->b:I

    return-void
.end method

.method private a(I)Z
    .locals 2

    iget v0, p0, Lcom/deepe/f/a/b$a;->b:I

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-lez p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/f/a/b$a;->b:I

    return v0
.end method

.method public a(Ljava/util/Calendar;)I
    .locals 3

    iget v0, p0, Lcom/deepe/f/a/b$a;->b:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/4 v0, 0x7

    invoke-virtual {p1, v0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x5

    rem-int/2addr p1, v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    goto :goto_1

    :cond_1
    add-int v2, p1, v1

    rem-int/2addr v2, v0

    invoke-direct {p0, v2}, Lcom/deepe/f/a/b$a;->a(I)Z

    move-result v2

    if-eqz v2, :cond_2

    :goto_1
    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public a(IZ)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    iget p2, p0, Lcom/deepe/f/a/b$a;->b:I

    shl-int p1, v0, p1

    or-int/2addr p1, p2

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/deepe/f/a/b$a;->b:I

    shl-int p1, v0, p1

    not-int p1, p1

    and-int/2addr p1, p2

    :goto_0
    iput p1, p0, Lcom/deepe/f/a/b$a;->b:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget v0, p0, Lcom/deepe/f/a/b$a;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
