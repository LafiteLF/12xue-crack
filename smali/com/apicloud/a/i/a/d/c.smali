.class public Lcom/apicloud/a/i/a/d/c;
.super Lcom/apicloud/a/i/d;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d<",
        "Lcom/apicloud/a/i/a/d/b;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/d;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "mode"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x3df94319

    if-eq v0, v1, :cond_3

    const v1, -0x351b9df6    # -7483653.0f

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "scanCode"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "normal"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/b;->a(I)V

    :goto_1
    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "device-position"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x2e04e7

    if-eq v0, v1, :cond_3

    const v1, 0x5d2de29

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "front"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "back"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/b;->b(I)V

    :goto_1
    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 2

    const-string v0, "flash"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_5

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_3

    const v1, 0x2dddaf

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "auto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    const/4 p2, 0x3

    goto :goto_0

    :cond_3
    const-string v0, "off"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p2, 0x0

    goto :goto_0

    :cond_5
    const-string v0, "on"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 p2, 0x1

    :goto_0
    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/b;->c(I)V

    :goto_1
    return-void
.end method

.method private e(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private f(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 0

    return-void
.end method

.method private g(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 1

    const-string v0, "aspect-ratio"

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p2}, Lcom/apicloud/a/i/a/d/a/a;->b(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/d/c;->a(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V
    .locals 2

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

    invoke-virtual {p0, v1, p2, p1}, Lcom/apicloud/a/i/a/d/c;->a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/d/b;)V

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/i/a/d/b;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "flash"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->d(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_1
    const-string v0, "mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->b(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_2
    const-string v0, "frame-size"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->f(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_3
    const-string v0, "aspect-ratio"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->g(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_4
    const-string v0, "resolution"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->e(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    return-void

    :sswitch_5
    const-string v0, "device-position"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    invoke-direct {p0, p3, p2}, Lcom/apicloud/a/i/a/d/c;->c(Lcom/apicloud/a/i/a/d/b;Lcom/apicloud/a/c;)V

    :goto_0
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7f834140 -> :sswitch_5
        -0x5f5e8754 -> :sswitch_4
        -0x5c2d29aa -> :sswitch_3
        -0x12e0cb9f -> :sswitch_2
        0x3339a3 -> :sswitch_1
        0x5cfeff0 -> :sswitch_0
    .end sparse-switch
.end method
