.class public Lcom/apicloud/a/i/e/d;
.super Lcom/apicloud/a/i/e/g;


# instance fields
.field private b:Lcom/apicloud/a/g/h;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/apicloud/a/i/e/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/g;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {p1}, Lcom/apicloud/a/d;->g()Lcom/apicloud/a/g/h;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/e/d;->b:Lcom/apicloud/a/g/h;

    invoke-direct {p0}, Lcom/apicloud/a/i/e/d;->d()V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->i(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-object v1

    :sswitch_1
    const-string v0, "style"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->f(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_2
    const-string v0, "class"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->d(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_3
    const-string v0, "name"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->g(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_4
    const-string v0, "id"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->e(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_5
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->b(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-object v1

    :sswitch_6
    const-string v0, "hidden"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->j(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-object v1

    :sswitch_7
    const-string v0, "tapmode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->k(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-object v1

    :sswitch_8
    const-string v0, "tagName"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->c(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :sswitch_9
    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    invoke-direct {p0, p1, p3}, Lcom/apicloud/a/i/e/d;->h(Landroid/view/View;Lcom/apicloud/a/c;)V

    return-object v1

    :goto_0
    const-string v0, "data-"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/e/d;->b(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V

    return-object v1

    :cond_a
    const-string v0, "scope"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/e/d;->c(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V

    return-object v1

    :cond_b
    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/apicloud/a/c;

    if-eqz v0, :cond_c

    const-string p1, "text"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p3, "[object]"

    goto :goto_1

    :cond_c
    move-object p3, p1

    :cond_d
    :goto_1
    return-object p3

    :sswitch_data_0
    .sparse-switch
        -0x5ff074bf -> :sswitch_9
        -0x5c56aebb -> :sswitch_8
        -0x5bc9903a -> :sswitch_7
        -0x48916256 -> :sswitch_6
        -0x3b54f756 -> :sswitch_5
        0xd1b -> :sswitch_4
        0x337a8b -> :sswitch_3
        0x5a5a978 -> :sswitch_2
        0x68b1db1 -> :sswitch_1
        0x10263a7c -> :sswitch_0
    .end sparse-switch
.end method

.method private a(Landroid/view/View;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of v1, v0, Lcom/apicloud/a/i/a/g/f;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/apicloud/a/i/a/g/f;

    invoke-interface {v0, p1}, Lcom/apicloud/a/i/a/g/f;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_1
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/apicloud/a/i/a/g/e;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/apicloud/a/i/a/g/e;

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/e;->a_()V

    :cond_3
    :goto_0
    return-void
.end method

.method private a(Landroid/view/View;ILcom/apicloud/a/c;)V
    .locals 0

    if-eqz p3, :cond_0

    invoke-static {p1, p2, p3}, Lcom/apicloud/a/g/b/b;->a(Landroid/view/View;ILcom/apicloud/a/c;)V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;Lcom/apicloud/a/g/g;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/apicloud/a/i/e/d$2;

    invoke-direct {v0, p0, p2, p1}, Lcom/apicloud/a/i/e/d$2;-><init>(Lcom/apicloud/a/i/e/d;Lcom/apicloud/a/g/g;Landroid/view/View;)V

    invoke-static {v0}, Lcom/apicloud/a/g/b/a;->a(Lcom/apicloud/a/g/b/a$a;)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/String;ILcom/apicloud/a/c;)V
    .locals 1

    iget-object p4, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-interface {p4}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p4

    const-class v0, Landroid/view/ViewGroup;

    invoke-virtual {p4, p2, v0}, Lcom/apicloud/a/e/f;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/ViewGroup;

    if-eqz p4, :cond_2

    instance-of p2, p4, Lcom/apicloud/a/i/a/g/f;

    if-eqz p2, :cond_0

    move-object p2, p4

    check-cast p2, Lcom/apicloud/a/i/a/g/f;

    invoke-interface {p2}, Lcom/apicloud/a/i/a/g/f;->a()I

    move-result p2

    goto :goto_0

    :cond_0
    invoke-virtual {p4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p2

    :goto_0
    if-ltz p3, :cond_1

    if-ge p3, p2, :cond_1

    invoke-virtual {p4, p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :goto_1
    return-void

    :cond_2
    new-instance p3, Ljava/lang/RuntimeException;

    new-instance p4, Ljava/lang/StringBuilder;

    const-string v0, "Can not find view parent with id "

    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for view "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method private a(Landroid/view/View;Z)V
    .locals 2

    const v0, -0x101009e

    if-nez p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-direct {p0, p1, v1, v0}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;ZI)V

    new-instance v0, Lcom/apicloud/a/i/e/d$1;

    const-class v1, Landroid/view/View;

    invoke-direct {v0, p0, v1, p2}, Lcom/apicloud/a/i/e/d$1;-><init>(Lcom/apicloud/a/i/e/d;Ljava/lang/Class;Z)V

    invoke-static {p1, v0}, Lcom/apicloud/a/b/e;->a(Landroid/view/View;Lcom/apicloud/a/b/e$a;)V

    return-void
.end method

.method private a(Landroid/view/View;ZI)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-static {v0, p1, p2, p3}, Lcom/apicloud/a/g/b/b;->a(Lcom/apicloud/a/d;Landroid/view/View;ZI)V

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/i/e/d;Landroid/view/View;ILcom/apicloud/a/c;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;ILcom/apicloud/a/c;)V

    return-void
.end method

.method private b(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/l;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "$remove"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    const-string v2, "index"

    invoke-virtual {p2, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Ljava/lang/String;ILcom/apicloud/a/c;)V

    const-string v0, "elements"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/j;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/apicloud/a/i/a/g/j;

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/g/j;->a(Lcom/apicloud/a/c;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private b(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V
    .locals 1

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, v0, p2}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private c(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 2

    const-string v0, "tagName"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/apicloud/a/i/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/e/d;->b:Lcom/apicloud/a/g/h;

    invoke-virtual {v1, v0, p2}, Lcom/apicloud/a/g/h;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/g/g;)V

    return-object v0
.end method

.method private c(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method

.method private d(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 3

    const-string v0, "class"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const v0, 0x7f040024

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-static {p2}, Lcom/apicloud/a/g/m;->e(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/apicloud/a/i/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->b:Lcom/apicloud/a/g/h;

    invoke-virtual {v2, v0, p2}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p2

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/k;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lcom/apicloud/a/g/g;->b()Lcom/apicloud/a/c;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v1

    :goto_1
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object v1

    :cond_4
    if-eqz v1, :cond_6

    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c;->a(Lcom/apicloud/a/c;)V

    goto :goto_2

    :cond_5
    move-object v0, v1

    :cond_6
    :goto_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/g/g;)V

    return-object v0
.end method

.method private d()V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/i;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/i;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/c;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/c;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/e;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/e;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/k;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/k;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/f;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/f;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/a;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/a;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/b;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    new-instance v1, Lcom/apicloud/a/i/e/h;

    iget-object v2, p0, Lcom/apicloud/a/i/e/d;->a:Lcom/apicloud/a/d;

    invoke-direct {v1, v2}, Lcom/apicloud/a/i/e/h;-><init>(Lcom/apicloud/a/d;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private e(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 2

    const-string v0, "id"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/apicloud/a/i/b;->b(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apicloud/a/i/b;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/e/d;->b:Lcom/apicloud/a/g/h;

    invoke-virtual {v1, v0, p2}, Lcom/apicloud/a/g/h;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/g/g;)V

    return-object v0
.end method

.method private f(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 2

    const-string v0, "style"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p2, Lcom/apicloud/a/c;

    if-eqz v1, :cond_1

    check-cast p2, Lcom/apicloud/a/c;

    goto :goto_0

    :cond_1
    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p2

    goto :goto_0

    :cond_2
    move-object p2, v0

    :goto_0
    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/apicloud/a/i/e/d;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v0
.end method

.method private g(Landroid/view/View;Lcom/apicloud/a/c;)Ljava/lang/Object;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-static {p1, p2}, Lcom/apicloud/a/i/c;->b(Landroid/view/View;Ljava/lang/String;)V

    :cond_0
    return-object p2
.end method

.method private h(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "enabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private i(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/e/b;->b(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private j(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "hidden"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/i/e/d;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    const/4 v0, 0x1

    invoke-interface {p2, v0}, Lcom/apicloud/c/b/b;->q(I)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/e/d;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p2, v0}, Lcom/apicloud/c/b/b;->q(I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private k(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 6

    invoke-virtual {p2}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "parent"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->n(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v0, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;

    return-object v1

    :cond_1
    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p2}, Lcom/apicloud/a/c;->e()Lcom/apicloud/a/c;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/apicloud/a/c;->b()Z

    move-result p2

    if-eqz p2, :cond_3

    return-object v1

    :cond_3
    iget-object p2, p0, Lcom/apicloud/a/i/e/d;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_5

    return-object v2

    :cond_5
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/apicloud/a/i/e/g;

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p2, p1, v2}, Lcom/apicloud/a/i/e/g;->a(Landroid/view/View;Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p2

    move-object v2, p2

    :cond_6
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/apicloud/a/c;->b()Z

    move-result p2

    if-eqz p2, :cond_4

    return-object v1

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, p1, v3, p2}, Lcom/apicloud/a/i/e/d;->a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    instance-of v5, v4, Lcom/apicloud/a/c;

    if-eqz v5, :cond_8

    check-cast v4, Lcom/apicloud/a/c;

    invoke-virtual {v2, v4}, Lcom/apicloud/a/c;->a(Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_8
    invoke-virtual {v2, v3, v4}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
