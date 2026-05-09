.class Lcom/apicloud/a/d/f;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/d/g$a;

.field private final b:Landroid/content/res/Resources;

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Ljava/util/List;Ljava/lang/String;Lcom/apicloud/a/d/g$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/res/Resources;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/apicloud/a/d/g$a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/d/f;->b:Landroid/content/res/Resources;

    iput-object p2, p0, Lcom/apicloud/a/d/f;->c:Ljava/util/List;

    iput-object p3, p0, Lcom/apicloud/a/d/f;->d:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/d;)V
    .locals 1

    iget-object p1, p0, Lcom/apicloud/a/d/f;->c:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/apicloud/a/d/g$a;->b(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(Lcom/deepe/c/c/m;)V
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/d/f;->d:Ljava/lang/String;

    iget-object v1, p0, Lcom/apicloud/a/d/f;->b:Landroid/content/res/Resources;

    invoke-static {p1, v0, v1}, Lcom/deepe/c/c/c;->a(Lcom/deepe/c/c/m;Ljava/lang/String;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/d/f;->c:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    invoke-interface {v0, p1}, Lcom/apicloud/a/d/g$a;->a(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/apicloud/a/d/f;->a(Lcom/deepe/c/c/d;)V

    :goto_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/apicloud/a/d/f;

    iget-object v2, p0, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    iget-object v3, p1, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/apicloud/a/d/f;->d:Ljava/lang/String;

    iget-object p1, p1, Lcom/apicloud/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    return v0

    :cond_3
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/d/f;->a:Lcom/apicloud/a/d/g$a;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/apicloud/a/d/f;->d:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
