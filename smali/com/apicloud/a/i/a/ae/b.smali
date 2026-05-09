.class public Lcom/apicloud/a/i/a/ae/b;
.super Lcom/apicloud/a/i/a/h/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/apicloud/a/i/a/ae/a;",
        ">",
        "Lcom/apicloud/a/i/a/h/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/h/a;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method

.method private b(Lcom/apicloud/a/c;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    invoke-static {p1}, Lcom/apicloud/a/g/b;->d(Ljava/lang/String;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1
    :try_end_0
    .catch Lcom/apicloud/a/g/n; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/apicloud/a/g/n;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Landroid/widget/CompoundButton;Lcom/apicloud/a/c;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ae/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ae/b;->a(Lcom/apicloud/a/i/a/ae/a;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Lcom/apicloud/a/i/a/ae/a;Lcom/apicloud/a/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/apicloud/a/c;",
            ")V"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/apicloud/a/i/a/h/a;->a(Landroid/widget/CompoundButton;Lcom/apicloud/a/c;)V

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

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "trackOffColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/apicloud/a/i/a/ae/b;->b(Lcom/apicloud/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->d(I)V

    goto :goto_0

    :sswitch_1
    const-string v2, "trackOnColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :sswitch_2
    const-string v2, "color"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, v2}, Lcom/apicloud/a/i/a/ae/b;->b(Lcom/apicloud/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->c(I)V

    goto :goto_0

    :sswitch_3
    const-string v2, "thumbOffColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, v2}, Lcom/apicloud/a/i/a/ae/b;->b(Lcom/apicloud/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->b(I)V

    goto :goto_0

    :sswitch_4
    const-string v2, "thumbOnColor"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, p2, v2}, Lcom/apicloud/a/i/a/ae/b;->b(Lcom/apicloud/a/c;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/apicloud/a/i/a/ae/a;->a(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x690bb1f2 -> :sswitch_4
        -0x264d80d6 -> :sswitch_3
        0x5a72f63 -> :sswitch_2
        0x2e64b0f9 -> :sswitch_1
        0x304e799f -> :sswitch_0
    .end sparse-switch
.end method
