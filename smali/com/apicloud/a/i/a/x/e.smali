.class public Lcom/apicloud/a/i/a/x/e;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/x/d;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "type"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x4ba14a65

    if-eq v0, v1, :cond_2

    const v1, -0x48cb1d73

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "header"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    const-string v0, "footer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/x/d;->d(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "threshold"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p2}, Lcom/apicloud/a/g/h;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/x/d;->e(I)V

    :cond_0
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "state"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df94319

    if-eq v0, v1, :cond_4

    const v1, -0x322222b1

    if-eq v0, v1, :cond_2

    const v1, -0x132eacd9

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "refreshing"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_1

    :cond_2
    const-string v0, "dragging"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    :goto_0
    return-void

    :cond_5
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/x/d;->f(I)V

    :cond_6
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/x/d;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/x/e;->a(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V
    .locals 4

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x5c1e1b95

    if-eq v2, v3, :cond_5

    const v3, 0x368f3a

    if-eq v2, v3, :cond_3

    const v3, 0x68ac491

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "state"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/x/e;->d(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_3
    const-string v2, "type"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/x/e;->b(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V

    goto :goto_0

    :cond_5
    const-string v2, "threshold"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/x/e;->c(Lcom/apicloud/a/i/a/x/d;Lcom/apicloud/a/c;)V

    goto :goto_0
.end method
