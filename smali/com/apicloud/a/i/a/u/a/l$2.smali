.class Lcom/apicloud/a/i/a/u/a/l$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/u/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/u/a/l;->c(Lcom/apicloud/a/i/a/u/a/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/u/a/l;

.field private final synthetic b:[Ljava/lang/String;

.field private final synthetic c:[I

.field private final synthetic d:Lcom/apicloud/a/i/a/u/a/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/u/a/l;[Ljava/lang/String;[ILcom/apicloud/a/i/a/u/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    iput-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->b:[Ljava/lang/String;

    iput-object p3, p0, Lcom/apicloud/a/i/a/u/a/l$2;->c:[I

    iput-object p4, p0, Lcom/apicloud/a/i/a/u/a/l$2;->d:Lcom/apicloud/a/i/a/u/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/u/a/d;Ljava/lang/String;I)V
    .locals 3

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/u/a/l;->c()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-lt p3, p2, :cond_3

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->d:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p2

    const-string p3, "time"

    invoke-static {p2, p3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->d:Lcom/apicloud/a/i/a/u/a/b;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/u/a/b;->e()Ljava/lang/String;

    move-result-object p2

    const-string p3, "date"

    invoke-static {p2, p3}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    iget-object p3, p0, Lcom/apicloud/a/i/a/u/a/l$2;->d:Lcom/apicloud/a/i/a/u/a/b;

    invoke-static {p2, p3}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/l;Lcom/apicloud/a/i/a/u/a/b;)V

    :cond_1
    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p2}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/l;)Lcom/apicloud/a/i/a/u/a/i;

    move-result-object p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {p2, p1}, Lcom/apicloud/a/i/a/u/a/l;->indexOfChild(Landroid/view/View;)I

    move-result p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p2}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/u/a/m;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {p1}, Lcom/apicloud/a/i/a/u/a/l;->a(Lcom/apicloud/a/i/a/u/a/l;)Lcom/apicloud/a/i/a/u/a/i;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/apicloud/a/i/a/u/a/i;->a(Ljava/util/List;)V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-virtual {v0, p3}, Lcom/apicloud/a/i/a/u/a/l;->c(I)Lcom/apicloud/a/i/a/u/a/d;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/d;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/u/a/d;->d()I

    move-result v0

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->b:[Ljava/lang/String;

    aput-object v1, v2, p3

    iget-object v2, p0, Lcom/apicloud/a/i/a/u/a/l$2;->c:[I

    aput v0, v2, p3

    new-instance v2, Lcom/apicloud/a/i/a/u/a/m;

    invoke-direct {v2, p3}, Lcom/apicloud/a/i/a/u/a/m;-><init>(I)V

    invoke-virtual {v2, v1}, Lcom/apicloud/a/i/a/u/a/m;->a(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lcom/apicloud/a/i/a/u/a/m;->a(I)V

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, p3, :cond_5

    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/apicloud/a/i/a/u/a/l$2;->a:Lcom/apicloud/a/i/a/u/a/l;

    invoke-static {v0}, Lcom/apicloud/a/i/a/u/a/l;->b(Lcom/apicloud/a/i/a/u/a/l;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_0
.end method
