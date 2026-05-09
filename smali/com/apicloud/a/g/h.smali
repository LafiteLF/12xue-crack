.class public final Lcom/apicloud/a/g/h;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/deepe/c/i/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/l<",
            "Ljava/lang/Integer;",
            "Lcom/apicloud/a/c;",
            ">;"
        }
    .end annotation
.end field

.field private static e:Lcom/deepe/c/i/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/deepe/c/i/l<",
            "Ljava/lang/Integer;",
            "Lcom/apicloud/a/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/apicloud/a/g/f;",
            ">;"
        }
    .end annotation
.end field

.field private c:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/l;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Lcom/deepe/c/i/l;-><init>(I)V

    sput-object v0, Lcom/apicloud/a/g/h;->d:Lcom/deepe/c/i/l;

    new-instance v0, Lcom/deepe/c/i/l;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lcom/deepe/c/i/l;-><init>(I)V

    sput-object v0, Lcom/apicloud/a/g/h;->e:Lcom/deepe/c/i/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41800000    # 16.0f

    iput v0, p0, Lcom/apicloud/a/g/h;->c:F

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/h;->a:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/g/h;->b:Ljava/util/LinkedList;

    return-void
.end method

.method public static a(F)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(F)F

    move-result p0

    return p0
.end method

.method public static a(I)I
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->b(I)I

    move-result p0

    return p0
.end method

.method public static a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 8

    invoke-virtual {p0}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/apicloud/a/c;->l(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_4

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_4
    :goto_4
    return-object p0

    :cond_5
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v3}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_5
    if-lt v6, v5, :cond_6

    goto :goto_0

    :cond_6
    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v6, v6, 0x1

    goto :goto_5
.end method

.method public static a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 2

    invoke-interface {p0}, Lcom/apicloud/a/d;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/g/h;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, ".json"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/apicloud/a/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0}, Lcom/apicloud/a/g/h;->d(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-interface {p0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/d/g;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    invoke-static {p0}, Lcom/apicloud/a/g/h;->a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    invoke-static {p1, p0}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Lcom/apicloud/a/c;)V

    :cond_3
    return-object p0
.end method

.method public static a(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 1

    invoke-static {p0}, Lcom/apicloud/a/g/h;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {p0, v0}, Lcom/apicloud/a/g/h;->a(Ljava/lang/String;Lcom/apicloud/a/c;)V

    :cond_1
    return-object v0
.end method

.method public static a()V
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/h;->d:Lcom/deepe/c/i/l;

    invoke-virtual {v0}, Lcom/deepe/c/i/l;->b()V

    return-void
.end method

.method private static a(ILcom/apicloud/a/c;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/h;->e:Lcom/deepe/c/i/l;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/i/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;Lcom/apicloud/a/c;)V
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/h;->d:Lcom/deepe/c/i/l;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/deepe/c/i/l;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static b(F)F
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->a(F)F

    move-result p0

    return p0
.end method

.method public static b(I)I
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/a/d;->a(I)I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    invoke-static {v1}, Lcom/apicloud/a/g/h;->d(I)Lcom/apicloud/a/c;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    new-instance v2, Lcom/apicloud/a/c;

    invoke-direct {v2}, Lcom/apicloud/a/c;-><init>()V

    const-string v3, ";"

    invoke-virtual {p0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, p0

    if-lt v4, v5, :cond_4

    invoke-virtual {v2}, Lcom/apicloud/a/c;->b()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1, v0}, Lcom/apicloud/a/g/h;->a(ILcom/apicloud/a/c;)V

    :cond_3
    return-object v0

    :cond_4
    aget-object v5, p0, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    aget-object v5, p0, v4

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    aget-object v6, v5, v3

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v5, v5, v7

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6}, Lcom/apicloud/a/g/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/apicloud/a/g/a/i;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5}, Lcom/apicloud/a/g/a/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public static c(I)Lcom/apicloud/a/c;
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/h;->d:Lcom/deepe/c/i/l;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/c;

    return-object p0
.end method

.method public static c(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    invoke-static {p0}, Lcom/apicloud/a/g/h;->c(I)Lcom/apicloud/a/c;

    move-result-object p0

    return-object p0
.end method

.method private final d(F)F
    .locals 1

    iget v0, p0, Lcom/apicloud/a/g/h;->c:F

    mul-float/2addr v0, p1

    return v0
.end method

.method private static d(I)Lcom/apicloud/a/c;
    .locals 1

    sget-object v0, Lcom/apicloud/a/g/h;->e:Lcom/deepe/c/i/l;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/deepe/c/i/l;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/c;

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-static {p0}, Lcom/apicloud/a/c;->f(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v1
    :try_end_0
    .catch Lcom/deepe/c/e/d; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/deepe/c/e/d;->printStackTrace()V

    :goto_0
    return-object v1
.end method

.method private static e(Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 2

    invoke-static {p0}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Lcom/apicloud/a/g/a/j;

    invoke-direct {v0, p0}, Lcom/apicloud/a/g/a/j;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/apicloud/a/g/a/j;->a()Lcom/apicloud/a/g/a/a;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/a/g/a/a;->a()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/apicloud/a/c;->a(Ljava/util/Map;)Lcom/apicloud/a/c;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/c;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "::"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p2, p1}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/apicloud/a/g/g;->a()Lcom/apicloud/a/c;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method public final a(Landroid/view/View;)Lcom/apicloud/a/g/g;
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/i/e/j;->a(Landroid/view/View;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/apicloud/a/i/c;->b(Landroid/view/View;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final a(Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/g/g;
    .locals 4

    invoke-static {p2}, Lcom/apicloud/a/g/m;->a([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, v0, :cond_1

    aget-object p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lcom/apicloud/a/g/g;

    invoke-direct {v0}, Lcom/apicloud/a/g/g;-><init>()V

    array-length v2, p2

    :goto_0
    if-lt v1, v2, :cond_2

    return-object v0

    :cond_2
    aget-object v3, p2, v1

    invoke-virtual {p0, p1, v3}, Lcom/apicloud/a/g/h;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Lcom/apicloud/a/g/g;->a(Lcom/apicloud/a/g/g;)V

    invoke-virtual {v3}, Lcom/apicloud/a/g/g;->c()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v0, v3}, Lcom/apicloud/a/g/g;->a(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/apicloud/a/g/l;)Lcom/apicloud/a/g/l;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->d()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/apicloud/a/g/h;->d(F)F

    move-result v0

    invoke-static {v0}, Lcom/apicloud/a/g/h;->a(F)F

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/apicloud/a/a/d;->a(Lcom/apicloud/a/g/l;)F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/l;->a(Ljava/lang/Number;)V

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public final a(Ljava/lang/String;Lcom/apicloud/a/g/f;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/g/m;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Lcom/apicloud/a/g/f;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/apicloud/a/g/h;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/apicloud/a/g/h;->b:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/apicloud/a/g/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/apicloud/a/g/l;)Lcom/apicloud/a/g/l;
    .locals 3

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->floatValue()F

    move-result v0

    const/4 v1, 0x4

    invoke-virtual {p1}, Lcom/apicloud/a/g/l;->d()I

    move-result v2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/apicloud/a/g/h;->d(F)F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/a/d;->b(Lcom/apicloud/a/g/l;)F

    move-result v0

    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/g/l;->a(Ljava/lang/Number;)V

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/g/h;->c:F

    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/g/h;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/lang/String;Ljava/lang/String;)Lcom/apicloud/a/g/g;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/apicloud/a/g/h;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/g/f;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p2, "["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/apicloud/a/g/g;->a(Ljava/lang/String;Lcom/apicloud/a/g/f;)Lcom/apicloud/a/g/g;

    move-result-object p1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/apicloud/a/g/h;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/g/f;

    invoke-virtual {v1, p2}, Lcom/apicloud/a/g/f;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {p2, v1}, Lcom/apicloud/a/g/g;->a(Ljava/lang/String;Lcom/apicloud/a/g/f;)Lcom/apicloud/a/g/g;

    move-result-object v1

    invoke-virtual {v1}, Lcom/apicloud/a/g/g;->d()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    :cond_4
    return-object v1
.end method
