.class public Lcom/apicloud/a/i/a/ai/i;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/ai/f;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/ai/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string v0, "play"

    const-string v1, "pause"

    const-string v2, "stop"

    const-string v3, "seek"

    const-string v4, "requestFullScreen"

    const-string v5, "exitFullScreen"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/ai/i;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/ai/h;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/ai/h;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/ai/i;->a:Lcom/apicloud/a/i/a/ai/h;

    return-void
.end method

.method private c(Lcom/apicloud/a/c;)I
    .locals 2

    const-string v0, "direction"

    invoke-virtual {p1, v0}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/16 v0, 0x5a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v0, v1, :cond_2

    const/4 p1, 0x0

    return p1

    :cond_2
    const/16 v0, -0x5a

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne v0, p1, :cond_3

    const/16 p1, 0x8

    return p1

    :cond_3
    sget p1, Lcom/apicloud/a/i/a/ai/g;->a:I

    return p1
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/i;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ai/f;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/i;->a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/h;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/h;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/i;->a:Lcom/apicloud/a/i/a/ai/h;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ai/i;->a(Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p4

    sparse-switch p4, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p4, "requestFullScreen"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3}, Lcom/apicloud/a/i/a/ai/i;->c(Lcom/apicloud/a/c;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->d(I)V

    goto :goto_0

    :sswitch_1
    const-string p3, "pause"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->f(Z)V

    goto :goto_0

    :sswitch_2
    const-string p3, "stop"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->c()V

    goto :goto_0

    :sswitch_3
    const-string p4, "seek"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    const-string p2, "position"

    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ai/f;->c(I)V

    goto :goto_0

    :sswitch_4
    const-string p3, "play"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->a()V

    goto :goto_0

    :sswitch_5
    const-string p3, "exitFullScreen"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->m()V

    :goto_0
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x2fd05067 -> :sswitch_5
        0x348b34 -> :sswitch_4
        0x35ce78 -> :sswitch_3
        0x360802 -> :sswitch_2
        0x65825f6 -> :sswitch_1
        0x1b4e8fca -> :sswitch_0
    .end sparse-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "video"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/ai/i;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/ai/f;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "timeupdate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->j(Z)V

    return-void

    :sswitch_1
    const-string v0, "waiting"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->k(Z)V

    return-void

    :sswitch_2
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->h(Z)V

    return-void

    :sswitch_3
    const-string v0, "error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->l(Z)V

    return-void

    :sswitch_4
    const-string v0, "ended"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->i(Z)V

    return-void

    :sswitch_5
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->g(Z)V

    return-void

    :sswitch_6
    const-string v0, "loadedmetadata"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->n(Z)V

    return-void

    :sswitch_7
    const-string v0, "progress"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/ai/f;->m(Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_7
        -0x71729cc -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x5c2caba -> :sswitch_4
        0x5c4d208 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x4289964d -> :sswitch_1
        0x690e7dd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/ai/f;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/i;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/ai/f;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/i;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->a(Lcom/apicloud/a/d/b;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/i;->b(Lcom/apicloud/a/i/a/ai/f;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/ai/f;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ai/i;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->b(Lcom/apicloud/a/d/b;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/ai/f;->b()V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/ai/i;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
