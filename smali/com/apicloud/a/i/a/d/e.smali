.class public Lcom/apicloud/a/i/a/d/e;
.super Lcom/apicloud/a/i/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/e<",
        "Lcom/apicloud/a/i/a/d/b;",
        ">;"
    }
.end annotation


# static fields
.field private static b:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/d/c;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "takePhoto"

    const-string v1, "startRecord"

    const-string v2, "stopRecord"

    const-string v3, "getSupportAspectRatio"

    const-string v4, "setAspectRatio"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/apicloud/a/i/a/d/e;->b:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/e;-><init>(Lcom/apicloud/a/d;)V

    new-instance v0, Lcom/apicloud/a/i/a/d/c;

    invoke-direct {v0, p1}, Lcom/apicloud/a/i/a/d/c;-><init>(Lcom/apicloud/a/d;)V

    iput-object v0, p0, Lcom/apicloud/a/i/a/d/e;->a:Lcom/apicloud/a/i/a/d/c;

    return-void
.end method

.method private a(Lcom/apicloud/a/i/a/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/e;->c(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/d;->a(Z)V

    return-void
.end method

.method private b(Lcom/apicloud/a/i/a/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/e;->c(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/d;->b(Z)V

    return-void
.end method

.method private c(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;
    .locals 2

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/b;->c()Lcom/apicloud/a/i/a/d/d;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/apicloud/a/i/a/d/d;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/e;->e()Lcom/apicloud/a/d;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/apicloud/a/i/a/d/d;-><init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/d/b;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/d;)V

    :cond_0
    return-object v0
.end method

.method private c(Lcom/apicloud/a/i/a/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/e;->c(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/d;->c(Z)V

    return-void
.end method

.method private d(Lcom/apicloud/a/i/a/d/b;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/d/e;->c(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/d;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/d;->d(Z)V

    return-void
.end method


# virtual methods
.method public synthetic a(Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/e;->b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/d/b;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Lcom/apicloud/a/e/g;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/e;->a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/d/b;)Lcom/apicloud/a/i/a/d/c;
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/d/e;->a:Lcom/apicloud/a/i/a/d/c;

    return-object p1
.end method

.method public bridge synthetic a(Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/d/e;->a(Lcom/apicloud/a/i/a/d/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/d/b;Ljava/lang/String;Lcom/apicloud/a/c;Lcom/apicloud/a/c/f;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v0, "takePhoto"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string p2, "quality"

    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/apicloud/a/i/a/d/a;->a(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a;

    move-result-object p2

    invoke-virtual {p1, p2, p4}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/a;Lcom/apicloud/a/c/f;)V

    goto/16 :goto_1

    :sswitch_1
    const-string p4, "setAspectRatio"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    const-string p2, "aspectRatio"

    invoke-virtual {p3, p2}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    const-string p2, "js_parameters"

    const-string p4, ""

    invoke-virtual {p3, p2, p4}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_2
    invoke-static {p2}, Lcom/apicloud/a/i/a/d/a/a;->b(Ljava/lang/String;)Lcom/apicloud/a/i/a/d/a/a;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/i/a/d/a/a;)V

    goto :goto_1

    :sswitch_2
    const-string p3, "stopRecord"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p1, p4}, Lcom/apicloud/a/i/a/d/b;->a(Lcom/apicloud/a/c/f;)V

    goto :goto_1

    :sswitch_3
    const-string p3, "startRecord"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/b;->d()V

    goto :goto_1

    :sswitch_4
    const-string p3, "getSupportAspectRatio"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/b;->b()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance p2, Lcom/apicloud/a/i/c/i;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/i;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_6

    return-object p2

    :cond_6
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/apicloud/a/i/a/d/a/a;

    invoke-virtual {p3}, Lcom/apicloud/a/i/a/d/a/a;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/apicloud/a/i/c/i;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    :goto_1
    const/4 p1, 0x0

    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x7b23dac6 -> :sswitch_4
        -0x71ca34ad -> :sswitch_3
        -0x52f8290d -> :sswitch_2
        -0x4eab032f -> :sswitch_1
        0x5880d5eb -> :sswitch_0
    .end sparse-switch
.end method

.method public a()Ljava/lang/String;
    .locals 1

    const-string v0, "camera"

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V
    .locals 0

    check-cast p2, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/a/d/e;->a(Ljava/lang/String;Lcom/apicloud/a/i/a/d/b;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/d/b;Ljava/lang/String;Z)V
    .locals 1

    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "initdone"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/d/e;->c(Lcom/apicloud/a/i/a/d/b;Z)V

    return-void

    :sswitch_1
    const-string v0, "error"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/d/e;->b(Lcom/apicloud/a/i/a/d/b;Z)V

    return-void

    :sswitch_2
    const-string v0, "stop"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/d/e;->a(Lcom/apicloud/a/i/a/d/b;Z)V

    return-void

    :sswitch_3
    const-string v0, "scancode"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p4}, Lcom/apicloud/a/i/a/d/e;->d(Lcom/apicloud/a/i/a/d/b;Z)V

    return-void

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/apicloud/a/i/e;->a(Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Z)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x350d1216 -> :sswitch_3
        0x360802 -> :sswitch_2
        0x5c4d208 -> :sswitch_1
        0x10078092 -> :sswitch_0
    .end sparse-switch
.end method

.method public b(Lcom/apicloud/a/c;)Lcom/apicloud/a/i/a/d/b;
    .locals 1

    new-instance p1, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/apicloud/a/i/a/d/b;-><init>(Lcom/apicloud/a/d;)V

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->a(Lcom/apicloud/a/d/b;)V

    return-object p1
.end method

.method public bridge synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/d/b;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/d/e;->b(Lcom/apicloud/a/i/a/d/b;)V

    return-void
.end method

.method public b(Lcom/apicloud/a/i/a/d/b;)V
    .locals 1

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/d/e;->e()Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/apicloud/a/d;->b(Lcom/apicloud/a/d/b;)V

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/d/b;->a()V

    invoke-super {p0, p1}, Lcom/apicloud/a/i/e;->b(Landroid/view/View;)V

    return-void
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/apicloud/a/i/a/d/e;->b:[Ljava/lang/String;

    invoke-static {v0}, Lcom/apicloud/a/i/c;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
