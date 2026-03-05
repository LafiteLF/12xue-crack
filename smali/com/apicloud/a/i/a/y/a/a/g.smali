.class public Lcom/apicloud/a/i/a/y/a/a/g;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:I

.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field c:[I

.field d:[I

.field e:[I

.field private final f:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/a/g;->f:Ljava/lang/Class;

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/a/y/a/a/g;->a:I

    return-void
.end method


# virtual methods
.method public a(Landroid/text/Spanned;II)V
    .locals 7

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->f:Ljava/lang/Class;

    invoke-interface {p1, p2, p3, v0}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    array-length p3, p2

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    array-length v0, v0

    if-ge v0, p3, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->f:Ljava/lang/Class;

    invoke-static {v0, p3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->b:[Ljava/lang/Object;

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->c:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->d:[I

    new-array v0, p3, [I

    iput-object v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->e:[I

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/apicloud/a/i/a/y/a/a/g;->a:I

    :goto_0
    if-lt v0, p3, :cond_2

    return-void

    :cond_2
    aget-object v1, p2, v0

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v2

    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, v1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v4

    iget-object v5, p0, Lcom/apicloud/a/i/a/y/a/a/g;->b:[Ljava/lang/Object;

    iget v6, p0, Lcom/apicloud/a/i/a/y/a/a/g;->a:I

    aput-object v1, v5, v6

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/a/g;->c:[I

    aput v2, v1, v6

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/a/g;->d:[I

    aput v3, v1, v6

    iget-object v1, p0, Lcom/apicloud/a/i/a/y/a/a/g;->e:[I

    aput v4, v1, v6

    add-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/apicloud/a/i/a/y/a/a/g;->a:I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
