.class public Lcom/deepe/c/e/e;
.super Lcom/deepe/c/e/a;


# static fields
.field public static final a:Ljava/lang/Object;

.field private static final b:Ljava/lang/Double;

.field private static final serialVersionUID:J = -0x64fa5b4f649bed45L


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, -0x8000000000000000L

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/deepe/c/e/e;->b:Ljava/lang/Double;

    new-instance v0, Lcom/deepe/c/e/e$1;

    invoke-direct {v0}, Lcom/deepe/c/e/e$1;-><init>()V

    sput-object v0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/c/e/a;-><init>()V

    return-void
.end method

.method protected constructor <init>(Lcom/deepe/c/e/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    invoke-direct {p0}, Lcom/deepe/c/e/a;-><init>()V

    invoke-virtual {p1}, Lcom/deepe/c/e/g;->a()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/deepe/c/e/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/deepe/c/e/e;

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->putAll(Ljava/util/Map;)V

    return-void

    :cond_0
    const-string v0, "JSONObject"

    invoke-static {p1, v0}, Lcom/deepe/c/e/b;->a(Ljava/lang/Object;Ljava/lang/String;)Lcom/deepe/c/e/d;

    move-result-object p1

    throw p1
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/e/g;

    invoke-direct {v0, p1}, Lcom/deepe/c/e/g;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/deepe/c/e/e;-><init>(Lcom/deepe/c/e/g;)V

    return-void
.end method

.method protected constructor <init>(Ljava/util/Map;)V
    .locals 2

    invoke-direct {p0}, Lcom/deepe/c/e/a;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/e/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/deepe/c/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static a(Ljava/lang/Number;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/deepe/c/e/b;->a(D)D

    sget-object v2, Lcom/deepe/c/e/e;->b:Ljava/lang/Double;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p0, "-0"

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    long-to-double v4, v2

    cmpl-double v0, v0, v4

    if-nez v0, :cond_1

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/deepe/c/e/d;

    const-string v0, "Number must be non-null"

    invoke-direct {p0, v0}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static a(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(I)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/deepe/c/e/c;

    invoke-direct {v0, p0}, Lcom/deepe/c/e/c;-><init>(I)V

    return-object v0
.end method

.method public static c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    if-nez p0, :cond_0

    sget-object p0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    return-object p0

    :cond_0
    instance-of v0, p0, Lcom/deepe/c/e/c;

    if-nez v0, :cond_9

    instance-of v0, p0, Lcom/deepe/c/e/e;

    if-eqz v0, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    :try_start_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/deepe/c/e/c;

    check-cast p0, Ljava/util/Collection;

    invoke-direct {v0, p0}, Lcom/deepe/c/e/c;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lcom/deepe/c/e/c;

    invoke-direct {v0, p0}, Lcom/deepe/c/e/c;-><init>(Ljava/lang/Object;)V

    return-object v0

    :cond_4
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_5

    new-instance v0, Lcom/deepe/c/e/e;

    check-cast p0, Ljava/util/Map;

    invoke-direct {v0, p0}, Lcom/deepe/c/e/e;-><init>(Ljava/util/Map;)V

    return-object v0

    :cond_5
    instance-of v0, p0, Ljava/lang/Boolean;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Byte;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Character;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Long;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/Short;

    if-nez v0, :cond_7

    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_0
    return-object p0

    :catch_0
    :cond_8
    const/4 p0, 0x0

    :cond_9
    :goto_1
    return-object p0
.end method

.method public static h()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/deepe/c/e/e;->a(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/deepe/c/e/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/deepe/c/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public final a(Ljava/lang/String;Z)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->p(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    :cond_0
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;F)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->q(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :cond_0
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->s(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p2

    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method final a(Lcom/deepe/c/e/f;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/deepe/c/e/f;->c()Lcom/deepe/c/e/f;

    invoke-super {p0}, Lcom/deepe/c/e/a;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/deepe/c/e/f;->d()Lcom/deepe/c/e/f;

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/deepe/c/e/f;->a(Ljava/lang/String;)Lcom/deepe/c/e/f;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, p2}, Lcom/deepe/c/e/f;->a(Ljava/lang/Object;Z)Lcom/deepe/c/e/f;

    goto :goto_0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    move-object p2, p1

    :cond_0
    return-object p2
.end method

.method public final c(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/c/e/e;
    .locals 2

    if-nez p2, :cond_0

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0

    :cond_0
    sget-object v0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    :cond_1
    :try_start_0
    instance-of v0, p2, Ljava/lang/Number;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/deepe/c/e/b;->a(D)D

    :cond_2
    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1, p2}, Lcom/deepe/c/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/deepe/c/e/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/deepe/c/e/d;->printStackTrace()V

    :goto_0
    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/c/e/e;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/e/e;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/c/e/e;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    return-object p0
.end method

.method public final g()I
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/e/a;->size()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/deepe/c/e/a;->hashCode()I

    move-result v0

    return v0
.end method

.method k(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/deepe/c/e/d;
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lcom/deepe/c/e/d;

    const-string v0, "Names must be non-null"

    invoke-direct {p1, v0}, Lcom/deepe/c/e/d;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/deepe/c/e/a;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/deepe/c/e/e;->a:Ljava/lang/Object;

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final n(Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final o(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/deepe/c/e/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final p(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->a(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/e/e;->c(Ljava/lang/String;Ljava/lang/Object;)Lcom/deepe/c/e/e;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/e/e;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v1, v0}, Lcom/deepe/c/e/a;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final q(Ljava/lang/String;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->d(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public final r(Ljava/lang/String;)Ljava/lang/Double;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->c(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->e(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public final t(Ljava/lang/String;)Ljava/lang/Long;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->f(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Lcom/deepe/c/e/f;

    invoke-direct {v0}, Lcom/deepe/c/e/f;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/deepe/c/e/e;->a(Lcom/deepe/c/e/f;Z)V

    invoke-virtual {v0}, Lcom/deepe/c/e/f;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lcom/deepe/c/e/d; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final u(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/c/e/b;->g(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final v(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/deepe/c/e/e;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Lcom/deepe/c/e/c;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/deepe/c/e/c;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
