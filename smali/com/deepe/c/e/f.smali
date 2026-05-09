.class Lcom/deepe/c/e/f;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/deepe/c/e/f$a;
    }
.end annotation


# instance fields
.field final a:Ljava/lang/StringBuilder;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/deepe/c/e/f$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/deepe/c/e/f;->c:Ljava/lang/String;

    return-void
.end method

.method private a(Lcom/deepe/c/e/f$a;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "\""

    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-lt v3, v1, :cond_2

    if-eqz p2, :cond_1

    iget-object p1, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0xc

    if-eq v4, v5, :cond_6

    const/16 v5, 0xd

    if-eq v4, v5, :cond_5

    const/16 v5, 0x22

    const/16 v6, 0x5c

    if-eq v4, v5, :cond_4

    const/16 v5, 0x2f

    if-eq v4, v5, :cond_4

    if-eq v4, v6, :cond_4

    packed-switch v4, :pswitch_data_0

    const/16 v5, 0x1f

    if-gt v4, v5, :cond_3

    iget-object v5, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v6, v2

    const-string v4, "\\u%04x"

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_3
    iget-object v5, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    goto :goto_2

    :pswitch_0
    iget-object v4, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\n"

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\t"

    goto :goto_1

    :pswitch_2
    iget-object v4, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\b"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_4
    iget-object v5, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    iget-object v4, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\r"

    goto :goto_1

    :cond_6
    iget-object v4, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v5, "\\f"

    goto :goto_1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private e()Lcom/deepe/c/e/f$a;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/deepe/c/e/f$a;

    return-object v0

    :cond_0
    new-instance v0, Lcom/deepe/c/e/d;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private f()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/c/e/f;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/deepe/c/e/f;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private g()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/e/f;->e()Lcom/deepe/c/e/f$a;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/e/f$a;->e:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/deepe/c/e/f$a;->c:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_1

    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/e/f;->f()V

    sget-object v0, Lcom/deepe/c/e/f$a;->d:Lcom/deepe/c/e/f$a;

    invoke-direct {p0, v0}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;)V

    return-void

    :cond_1
    new-instance v0, Lcom/deepe/c/e/d;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/deepe/c/e/f;->e()Lcom/deepe/c/e/f$a;

    move-result-object v0

    sget-object v1, Lcom/deepe/c/e/f$a;->a:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/deepe/c/e/f$a;->b:Lcom/deepe/c/e/f$a;

    invoke-direct {p0, v0}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;)V

    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/e/f;->f()V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/deepe/c/e/f$a;->b:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/deepe/c/e/f$a;->d:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/deepe/c/e/f;->c:Ljava/lang/String;

    if-nez v1, :cond_3

    const-string v1, ":"

    goto :goto_1

    :cond_3
    const-string v1, ": "

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/deepe/c/e/f$a;->e:Lcom/deepe/c/e/f$a;

    invoke-direct {p0, v0}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;)V

    goto :goto_2

    :cond_4
    sget-object v1, Lcom/deepe/c/e/f$a;->f:Lcom/deepe/c/e/f$a;

    if-ne v0, v1, :cond_5

    :goto_2
    return-void

    :cond_5
    new-instance v0, Lcom/deepe/c/e/d;

    const-string v1, "Nesting problem"

    invoke-direct {v0, v1}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a()Lcom/deepe/c/e/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/e/f$a;->a:Lcom/deepe/c/e/f$a;

    const-string v1, "["

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;

    move-result-object v0

    return-object v0
.end method

.method a(Lcom/deepe/c/e/f$a;Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/e/f;->e()Lcom/deepe/c/e/f$a;

    move-result-object v0

    if-eq v0, p2, :cond_1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/deepe/c/e/d;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-ne v0, p2, :cond_2

    invoke-direct {p0}, Lcom/deepe/c/e/f;->f()V

    :cond_2
    iget-object p1, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method a(Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lcom/deepe/c/e/d;

    const-string p2, "Nesting problem: multiple top-level roots"

    invoke-direct {p1, p2}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/deepe/c/e/f;->h()V

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public a(Ljava/lang/Object;Z)Lcom/deepe/c/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/e/f;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    instance-of v0, p1, Lcom/deepe/c/e/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/deepe/c/e/c;

    invoke-virtual {p1, p0, p2}, Lcom/deepe/c/e/c;->a(Lcom/deepe/c/e/f;Z)V

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/deepe/c/e/e;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/deepe/c/e/e;

    invoke-virtual {p1, p0, p2}, Lcom/deepe/c/e/e;->a(Lcom/deepe/c/e/f;Z)V

    return-object p0

    :cond_1
    invoke-direct {p0}, Lcom/deepe/c/e/f;->h()V

    if-eqz p1, :cond_4

    instance-of v0, p1, Ljava/lang/Boolean;

    if-nez v0, :cond_4

    sget-object v0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    if-ne p1, v0, :cond_2

    goto :goto_0

    :cond_2
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_3

    iget-object p2, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1}, Lcom/deepe/c/e/e;->a(Ljava/lang/Number;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/deepe/c/e/f;->a(Ljava/lang/String;Z)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object p2, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    return-object p0

    :cond_5
    new-instance p1, Lcom/deepe/c/e/d;

    const-string p2, "Nesting problem"

    invoke-direct {p1, p2}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Ljava/lang/String;)Lcom/deepe/c/e/f;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/deepe/c/e/f;->g()V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/e/f;->a(Ljava/lang/String;Z)V

    return-object p0

    :cond_0
    new-instance p1, Lcom/deepe/c/e/d;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public b()Lcom/deepe/c/e/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/e/f$a;->a:Lcom/deepe/c/e/f$a;

    sget-object v1, Lcom/deepe/c/e/f$a;->b:Lcom/deepe/c/e/f$a;

    const-string v2, "]"

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;

    move-result-object v0

    return-object v0
.end method

.method public c()Lcom/deepe/c/e/f;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/e/f$a;->c:Lcom/deepe/c/e/f$a;

    const-string v1, "{"

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;

    move-result-object v0

    return-object v0
.end method

.method public d()Lcom/deepe/c/e/f;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    sget-object v0, Lcom/deepe/c/e/f$a;->c:Lcom/deepe/c/e/f$a;

    sget-object v1, Lcom/deepe/c/e/f$a;->e:Lcom/deepe/c/e/f$a;

    const-string v2, "}"

    invoke-virtual {p0, v0, v1, v2}, Lcom/deepe/c/e/f;->a(Lcom/deepe/c/e/f$a;Lcom/deepe/c/e/f$a;Ljava/lang/String;)Lcom/deepe/c/e/f;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/deepe/c/e/f;->a:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
