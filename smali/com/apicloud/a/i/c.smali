.class public Lcom/apicloud/a/i/c;
.super Ljava/lang/Object;


# static fields
.field static final a:I = 0x5

.field static b:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private static a(Lcom/apicloud/a/d;Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 11

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const-string v1, "type"

    invoke-virtual {p1, v1}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/a/i/c;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v0

    :cond_1
    invoke-static {p0, v1}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-interface {p0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Component create a not suport type: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/a/c/b;->a(Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/apicloud/a/d/c;->a(Lcom/apicloud/a/c/b;)V

    return-object v0

    :cond_2
    const-string v3, "id"

    invoke-virtual {p1, v3}, Lcom/apicloud/a/c;->u(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p1}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Lcom/apicloud/a/c;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-nez v4, :cond_3

    invoke-interface {p0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "Component create failed: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v4, v3}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v2, v3, v4}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {p1}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Lcom/apicloud/a/c;->b()Z

    move-result v0

    if-nez v0, :cond_9

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    invoke-virtual {p0}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-interface {v2, v3, v4, v0}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V

    goto :goto_2

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p0, v6}, Lcom/apicloud/a/c;->o(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_1

    :cond_5
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-static {v4}, Lcom/apicloud/a/i/c;->e(Landroid/view/View;)Lcom/apicloud/a/i/a;

    move-result-object v7

    if-nez v7, :cond_6

    new-instance v7, Lcom/apicloud/a/i/a;

    invoke-direct {v7, v1}, Lcom/apicloud/a/i/a;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v7}, Lcom/apicloud/a/i/c;->a(Landroid/view/View;Lcom/apicloud/a/i/a;)V

    :cond_6
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    sget v10, Lcom/apicloud/a/i/c;->a:I

    if-le v9, v10, :cond_7

    add-int/lit8 v9, v10, 0x1

    :cond_7
    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v6, v8}, Lcom/apicloud/a/i/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    invoke-virtual {v0, v6, v7}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_9
    :goto_2
    const-class p0, Ljava/lang/String;

    const-string v0, "events"

    invoke-virtual {p1, v0, p0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_b

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_b

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_4

    :cond_a
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v0, 0x1

    invoke-interface {v2, v3, v4, p1, v0}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Z)V

    goto :goto_3

    :cond_b
    :goto_4
    return-object v4
.end method

.method public static a(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/g/d;Lcom/apicloud/a/c;)Landroid/view/View;
    .locals 3

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    invoke-static {p0, p2}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Lcom/apicloud/a/c;)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    if-nez p1, :cond_3

    instance-of p1, v1, Lcom/apicloud/a/i/a/g/d;

    if-nez p1, :cond_2

    return-object v0

    :cond_2
    move-object p1, v1

    check-cast p1, Lcom/apicloud/a/i/a/g/d;

    :cond_3
    const-class v0, Lcom/apicloud/a/c;

    const-string v2, "children"

    invoke-virtual {p2, v2, v0}, Lcom/apicloud/a/c;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_6

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/a/c;

    invoke-static {p0, p1, v0}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/g/d;Lcom/apicloud/a/c;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v2, v1

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/g/d;->a(Landroid/view/View;)V

    goto :goto_0

    :cond_6
    :goto_1
    return-object v1
.end method

.method public static a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "attributes"

    invoke-virtual {p0, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/e/b;
    .locals 0

    invoke-interface {p0}, Lcom/apicloud/a/d;->c()Lcom/apicloud/a/e/d;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/e/d;->a(Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;[Ljava/lang/String;)Lcom/apicloud/a/i/c/h;
    .locals 2

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_4

    array-length v0, p1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/apicloud/a/i/c/h;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/h;-><init>()V

    if-eqz p0, :cond_2

    array-length v1, p0

    if-lez v1, :cond_2

    invoke-virtual {v0, p0}, Lcom/apicloud/a/i/c/h;->a([Ljava/lang/String;)Lcom/apicloud/a/i/c/h;

    :cond_2
    if-eqz p1, :cond_3

    array-length p0, p1

    if-lez p0, :cond_3

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/c/h;->b([Ljava/lang/String;)Lcom/apicloud/a/i/c/h;

    :cond_3
    return-object v0

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/i/b;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/apicloud/a/i/c;->b([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/view/View;I)V
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const v0, 0x7f040014

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/apicloud/a/c;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/c;)Lcom/apicloud/a/c;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b;->a(Lcom/apicloud/a/c;)V

    return-void
.end method

.method public static a(Landroid/view/View;Lcom/apicloud/a/i/a;)V
    .locals 1

    const v0, 0x7f040010

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b;->a(Ljava/lang/String;)V

    return-void
.end method

.method public static a(Landroid/view/View;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/b;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static a(Lcom/apicloud/a/d;Landroid/view/View;Ljava/lang/Object;I)V
    .locals 10

    instance-of v0, p1, Lcom/apicloud/a/i/a/g/d;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/apicloud/a/i/a/g/d;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/g/d;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    instance-of v1, p2, Lcom/apicloud/a/c;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/apicloud/a/c;

    invoke-static {p2}, Lcom/apicloud/a/c;->b(Lcom/apicloud/a/c;)Ljava/util/Map;

    move-result-object p2

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/apicloud/a/d;->i()Lcom/apicloud/a/c/x;

    move-result-object v2

    invoke-virtual {v2, v0, p2, p3}, Lcom/apicloud/a/c/x;->a(Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-interface {p0}, Lcom/apicloud/a/d;->h()Lcom/apicloud/a/d/c;

    move-result-object p3

    const-string v0, "bind cell data error."

    invoke-static {p2, v0}, Lcom/apicloud/a/c/b;->a(Ljava/lang/Exception;Ljava/lang/String;)Lcom/apicloud/a/c/b;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/apicloud/a/d/c;->b(Lcom/apicloud/a/c/b;)V

    move-object p2, v1

    :goto_0
    if-eqz p2, :cond_3

    invoke-static {p2}, Lcom/apicloud/a/c;->a(Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p2

    invoke-virtual {p2}, Lcom/apicloud/a/c;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/g/d;->a(Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/apicloud/a/i/c;->e(Landroid/view/View;)Lcom/apicloud/a/i/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/apicloud/a/i/a;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v0}, Lcom/apicloud/a/c;->c(Ljava/lang/String;)Lcom/apicloud/a/c;

    move-result-object v0

    invoke-static {p0, v1, v2, v3, v0}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :cond_4
    invoke-static {p1}, Lcom/apicloud/a/i/c;->e(Landroid/view/View;)Lcom/apicloud/a/i/a;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/apicloud/a/i/a;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/apicloud/a/i/a;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a;->a()Ljava/lang/String;

    move-result-object v6

    move-object v3, p0

    move-object v5, p1

    move-object v9, p2

    invoke-static/range {v3 .. v9}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_3

    :cond_6
    :goto_4
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    check-cast p1, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_5
    if-lt v1, v0, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0, v2, p2, p3}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Landroid/view/View;Ljava/lang/Object;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_8
    :goto_6
    return-void
.end method

.method private static a(Lcom/apicloud/a/d;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Lcom/apicloud/a/c;)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    :cond_0
    invoke-static {p0, p3}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p0

    invoke-interface {p0, p1, p2, p4}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V

    return-void
.end method

.method private static a(Lcom/apicloud/a/d;Ljava/lang/String;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    instance-of v0, p6, Lcom/apicloud/a/c;

    if-eqz v0, :cond_1

    check-cast p6, Lcom/apicloud/a/c;

    invoke-virtual {p6, p5}, Lcom/apicloud/a/c;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p6

    goto :goto_0

    :cond_1
    const/4 p6, 0x0

    :goto_0
    if-nez p6, :cond_2

    return-void

    :cond_2
    invoke-static {p0, p3}, Lcom/apicloud/a/i/c;->a(Lcom/apicloud/a/d;Ljava/lang/String;)Lcom/apicloud/a/e/b;

    move-result-object p0

    invoke-static {p4, p6}, Lcom/apicloud/a/c;->b(Ljava/lang/String;Ljava/lang/Object;)Lcom/apicloud/a/c;

    move-result-object p3

    invoke-interface {p0, p1, p2, p3}, Lcom/apicloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/Object;Lcom/apicloud/a/c;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "$bind"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0}, Lcom/apicloud/a/i/b;->b()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b([Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_8

    array-length v0, p1

    if-nez v0, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "({"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    move v3, v1

    :goto_1
    const-string v4, ","

    const-string v5, "\', arguments[0], arguments[1]);}"

    if-lt v3, v2, :cond_6

    if-eqz p1, :cond_3

    array-length p0, p1

    move v6, p0

    goto :goto_2

    :cond_3
    move v6, v1

    :goto_2
    if-lt v1, v6, :cond_4

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    aget-object p0, p1, v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "get "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "(){return this.callMethod(\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 p0, v6, -0x1

    if-eq v1, p0, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    aget-object v6, p0, v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v8, ":function(){return this.callMethod(\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v2, -0x1

    if-eq v3, v5, :cond_7

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_8
    :goto_3
    const-string p0, "{}"

    return-object p0
.end method

.method public static b(Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "#text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static c(Landroid/view/View;)Lcom/apicloud/a/i/b;
    .locals 2

    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/apicloud/a/i/b;

    if-nez v1, :cond_0

    new-instance v1, Lcom/apicloud/a/i/b;

    invoke-direct {v1}, Lcom/apicloud/a/i/b;-><init>()V

    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-object v1
.end method

.method public static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x5f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/view/View;Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lcom/apicloud/a/i/c;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const v0, 0x7f040013

    invoke-virtual {p0, v0, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setId(I)V

    return-void
.end method

.method public static d(Landroid/view/View;)Lcom/apicloud/a/h/b;
    .locals 1

    const v0, 0x7f040011

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/b;->c()Lcom/apicloud/a/h/b;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/apicloud/a/i/c;->b:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/apicloud/a/i/c;->b:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, "_t_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/apicloud/a/i/c;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static d(Landroid/view/View;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/apicloud/a/i/c;->c(Landroid/view/View;)Lcom/apicloud/a/i/b;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/b;->d(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/view/View;)Lcom/apicloud/a/i/a;
    .locals 1

    const v0, 0x7f040010

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/apicloud/a/i/a;

    return-object p0
.end method

.method public static f(Landroid/view/View;)Ljava/lang/String;
    .locals 1

    const v0, 0x7f040013

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public static g(Landroid/view/View;)Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040014

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0
.end method
