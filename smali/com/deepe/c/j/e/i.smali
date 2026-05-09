.class public Lcom/deepe/c/j/e/i;
.super Lcom/deepe/c/j/d;


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/deepe/c/j/d;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/j/e/i;->b:I

    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/deepe/c/j/d;-><init>(IIF)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/deepe/c/j/e/i;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/i;->a:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x7530

    :goto_0
    return v0
.end method

.method public final a(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/deepe/c/j/e/i;->a:I

    return-void
.end method

.method public final a(Lcom/deepe/c/j/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/j/r;
        }
    .end annotation

    if-eqz p1, :cond_1

    iget-object v0, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/deepe/c/j/r;->a:Lcom/deepe/c/j/k;

    iget v0, v0, Lcom/deepe/c/j/k;->a:I

    const/16 v1, 0x12d

    if-eq v0, v1, :cond_0

    const/16 v1, 0x12e

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "onRedirectResponse"

    invoke-static {v0, p1}, Lcom/deepe/c/j/s;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/deepe/c/j/d;->a(Lcom/deepe/c/j/r;)V

    return-void
.end method

.method public b()I
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/i;->b:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/deepe/c/j/e/i;->a()I

    move-result v0

    :goto_0
    return v0
.end method

.method public final b(I)V
    .locals 0

    mul-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/deepe/c/j/e/i;->b:I

    return-void
.end method
