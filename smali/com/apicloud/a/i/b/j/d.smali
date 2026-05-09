.class public Lcom/apicloud/a/i/b/j/d;
.super Lcom/apicloud/a/i/a/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/a/o/c<",
        "Lcom/apicloud/a/i/b/j/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/i/b/j/c;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/o/c;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/b/j/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/b/j/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/b/j/d;->a:Lcom/apicloud/a/i/b/j/c;

    return-void
.end method

.method private b(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/j/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->d()Lcom/apicloud/a/e/a;

    move-result-object v0

    if-eqz p4, :cond_0

    new-instance p4, Lcom/apicloud/a/i/b/j/a;

    invoke-virtual {p0, p2}, Lcom/apicloud/a/i/b/j/d;->a(Landroid/view/View;)Lcom/apicloud/a/c/l;

    move-result-object v1

    invoke-direct {p4, p2, p3, v1}, Lcom/apicloud/a/i/b/j/a;-><init>(Landroid/widget/EditText;Ljava/lang/String;Lcom/apicloud/a/c/l;)V

    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/o/a;->addTextChangedListener(Landroid/text/TextWatcher;)V

    invoke-virtual {v0, p1, p4}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-class p3, Lcom/apicloud/a/i/b/j/a;

    invoke-virtual {v0, p1, p3}, Lcom/apicloud/a/e/a;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/b/j/a;

    if-eqz p1, :cond_1

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/o/a;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/o/a;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/d;->c(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/b/j/c;

    move-result-object p1

    return-object p1
.end method

.method public synthetic a(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/a/o/b;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/d;->c(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/b/j/c;

    move-result-object p1

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "textarea"

    return-object v0
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "linechange"

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/b/j/d;->b(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/o/c;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/o/a;Ljava/lang/String;Z)V

    return-void
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const/16 v1, 0x28

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const/16 v1, 0xa0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public synthetic b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/o/a;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b/j/d;->c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/b/j/b;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/b/j/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/b/j/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/b/j/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/b/j/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public c(Lcom/apicloud/a/i/a/o/a;)Lcom/apicloud/a/i/b/j/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/b/j/d;->a:Lcom/apicloud/a/i/b/j/c;

    return-object p1
.end method
