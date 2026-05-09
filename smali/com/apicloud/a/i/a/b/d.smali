.class public Lcom/apicloud/a/i/a/b/d;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/b/b;",
        ">;"
    }
.end annotation


# static fields
.field private static a:[Ljava/lang/String;


# instance fields
.field private final b:Lcom/apicloud/a/i/a/b/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "play"

    const-string v1, "pause"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/b/d;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/b/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/b/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/b/d;->b:Lcom/apicloud/a/i/a/b/c;

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/b/d;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/b/b;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/b/b;)Lcom/apicloud/a/e/g;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/a/i/a/b/b;",
            ")",
            "Lcom/apicloud/a/e/g<",
            "Lcom/apicloud/a/i/a/b/b;",
            ">;"
        }
    .end annotation

    iget-object p1, p0, Lcom/apicloud/a/i/a/b/d;->b:Lcom/apicloud/a/i/a/b/c;

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/b/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/b/d;->a(Lcom/apicloud/a/i/a/b/b;)Lcom/apicloud/a/e/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/b/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/b/d;->a(Lcom/apicloud/a/i/a/b/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/b/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result p3

    const p4, 0x348b34

    if-eq p3, p4, :cond_2

    const p4, 0x65825f6

    if-eq p3, p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p3, "pause"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/b/b;->b()V

    goto :goto_0

    :cond_2
    const-string p3, "play"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/b/b;->a()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "audio"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/b/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/b/d;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/b/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/b/b;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "timeupdate"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->h(Z)V

    return-void

    :sswitch_1
    const-string v0, "waiting"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->i(Z)V

    return-void

    :sswitch_2
    const-string v0, "pause"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->f(Z)V

    return-void

    :sswitch_3
    const-string v0, "error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->j(Z)V

    return-void

    :sswitch_4
    const-string v0, "ended"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->g(Z)V

    return-void

    :sswitch_5
    const-string v0, "play"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->e(Z)V

    return-void

    :sswitch_6
    const-string v0, "progress"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p2, p4}, Lcom/apicloud/a/i/a/b/b;->k(Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_6
        0x348b34 -> :sswitch_5
        0x5c2caba -> :sswitch_4
        0x5c4d208 -> :sswitch_3
        0x65825f6 -> :sswitch_2
        0x4289964d -> :sswitch_1
        0x690e7dd6 -> :sswitch_0
    .end sparse-switch
.end method

.method public b()Lcom/apicloud/a/c;
    .locals 3

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    const-string v1, "width"

    const-string v2, "300px"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "height"

    const-string v2, "44px"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v1, "display"

    const-string v2, "none"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/b/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/b/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/b/d;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/b/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/b/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/b/d;->b(Lcom/apicloud/a/i/a/b/b;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/b/b;)V
    .locals 0

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/b/b;->c()V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/b/d;->a:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
