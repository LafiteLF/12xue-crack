.class public Lcom/apicloud/a/i/a/o/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/o/f;->a:Lcom/apicloud/a/d;

    return-void
.end method

.method private a(Landroid/widget/TextView;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/o/f;->c:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/apicloud/a/i/a/o/f;->a:Lcom/apicloud/a/d;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/apicloud/a/i/c/d;

    invoke-direct {v1}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p1}, Lcom/apicloud/a/g/i;->c(Landroid/widget/TextView;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "value"

    invoke-virtual {v1, v3, v2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Landroid/view/View;)Lcom/apicloud/a/h/b;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1, p1}, Lcom/apicloud/a/i/c/d;->a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;

    :cond_1
    const-string p1, "confirm"

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/o/f;->c:Z

    return-void
.end method

.method a(I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method a(II)Z
    .locals 2

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    and-int/lit8 v1, p2, 0x5

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x6

    if-ne p1, v0, :cond_2

    and-int/lit8 p1, p2, 0x6

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/o/f;->b:Z

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/widget/TextView;->getImeOptions()I

    move-result p3

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/a/o/f;->a(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/f;->a(Landroid/widget/TextView;)Z

    invoke-virtual {p0, p2, p3}, Lcom/apicloud/a/i/a/o/f;->a(II)Z

    move-result p2

    if-eqz p2, :cond_1

    return v1

    :cond_1
    iget-boolean p2, p0, Lcom/apicloud/a/i/a/o/f;->b:Z

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/apicloud/a/i/a/o/b;->b(Landroid/widget/TextView;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method
