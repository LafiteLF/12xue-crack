.class public Lcom/apicloud/a/i/b/j/a;
.super Lcom/apicloud/a/i/a/o/g;


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Ljava/lang/String;Lcom/apicloud/a/c/l;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/a/o/g;-><init>(Landroid/widget/EditText;Ljava/lang/String;Lcom/apicloud/a/c/l;)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/apicloud/a/i/b/j/a;->b:I

    iget-object p1, p0, Lcom/apicloud/a/i/b/j/a;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    iput p1, p0, Lcom/apicloud/a/i/b/j/a;->b:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    iget-object p1, p0, Lcom/apicloud/a/i/b/j/a;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    iget v0, p0, Lcom/apicloud/a/i/b/j/a;->b:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/apicloud/a/i/b/j/a;->b:I

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/j/a;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/c/d;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "lineCount"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/b/j/a;->a:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getHeight()I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "height"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/apicloud/a/i/b/j/a;->a(Lcom/apicloud/a/i/c/d;)V

    :cond_0
    return-void
.end method
