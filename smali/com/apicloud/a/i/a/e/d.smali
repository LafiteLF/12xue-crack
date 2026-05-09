.class public Lcom/apicloud/a/i/a/e/d;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/e/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "auto-flush"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/e/b;->a(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/d;->a(Lcom/apicloud/a/i/a/e/b;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/e/b;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x20d43610

    if-eq v0, v1, :cond_2

    const v1, 0x20d4361f

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "canvasw"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b;->a()F

    move-result p1

    :goto_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "canvash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    :goto_1
    const/4 p1, 0x0

    return-object p1

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/e/b;->b()F

    move-result p1

    goto :goto_0
.end method

.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/e/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/e/d;->a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/d;->a(Landroid/view/View;Lcom/apicloud/a/c;)V

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

    const v3, -0x586f129a

    if-eq v2, v3, :cond_5

    const v3, 0x20d43610

    if-eq v2, v3, :cond_3

    const v3, 0x20d4361f

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "canvasw"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/e/b;->a(F)V

    goto :goto_0

    :cond_3
    const-string v2, "canvash"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v2}, Lcom/apicloud/a/c;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/e/b;->b(F)V

    goto :goto_0

    :cond_5
    const-string v2, "auto-flush"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/apicloud/a/i/a/e/d;->b(Lcom/apicloud/a/i/a/e/b;Lcom/apicloud/a/c;)V

    goto :goto_0
.end method
