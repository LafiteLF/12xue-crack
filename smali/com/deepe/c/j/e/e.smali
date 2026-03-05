.class public Lcom/deepe/c/j/e/e;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/deepe/c/j/e/e;->b:I

    iput v0, p0, Lcom/deepe/c/j/e/e;->c:I

    iput-object p1, p0, Lcom/deepe/c/j/e/e;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/e/e;->b:I

    return-void
.end method

.method public a()Z
    .locals 1

    iget v0, p0, Lcom/deepe/c/j/e/e;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/deepe/c/j/e/e;->c:I

    return-void
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/e;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/j/g;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/deepe/c/j/e/e;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
