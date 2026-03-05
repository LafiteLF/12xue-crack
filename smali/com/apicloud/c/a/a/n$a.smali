.class Lcom/apicloud/c/a/a/n$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:I

.field b:I

.field c:Z

.field d:Z

.field e:Z

.field f:[I

.field final synthetic g:Lcom/apicloud/c/a/a/n;


# direct methods
.method public constructor <init>(Lcom/apicloud/c/a/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/c/a/a/n$a;->a()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/c/a/a/n$a;->a:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/apicloud/c/a/a/n$a;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n$a;->c:Z

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n$a;->d:Z

    iput-boolean v1, p0, Lcom/apicloud/c/a/a/n$a;->e:Z

    iget-object v1, p0, Lcom/apicloud/c/a/a/n$a;->f:[I

    if-eqz v1, :cond_0

    invoke-static {v1, v0}, Ljava/util/Arrays;->fill([II)V

    :cond_0
    return-void
.end method

.method a(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    sub-int/2addr v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    add-int/2addr v0, p1

    :goto_0
    iput v0, p0, Lcom/apicloud/c/a/a/n$a;->b:I

    return-void
.end method

.method a([Lcom/apicloud/c/a/a/n$e;)V
    .locals 5

    array-length v0, p1

    iget-object v1, p0, Lcom/apicloud/c/a/a/n$a;->f:[I

    if-eqz v1, :cond_0

    array-length v1, v1

    if-ge v1, v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    iget-object v1, v1, Lcom/apicloud/c/a/a/n;->a:[Lcom/apicloud/c/a/a/n$e;

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/apicloud/c/a/a/n$a;->f:[I

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/apicloud/c/a/a/n$a;->f:[I

    aget-object v3, p1, v1

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Lcom/apicloud/c/a/a/n$e;->a(I)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method b()V
    .locals 1

    iget-boolean v0, p0, Lcom/apicloud/c/a/a/n$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->d()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/apicloud/c/a/a/n$a;->g:Lcom/apicloud/c/a/a/n;

    iget-object v0, v0, Lcom/apicloud/c/a/a/n;->b:Lcom/apicloud/c/a/a/i;

    invoke-virtual {v0}, Lcom/apicloud/c/a/a/i;->c()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/apicloud/c/a/a/n$a;->b:I

    return-void
.end method
