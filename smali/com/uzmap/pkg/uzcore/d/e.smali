.class public Lcom/uzmap/pkg/uzcore/d/e;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/uzmap/pkg/uzcore/d/g;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/f$a;Lcom/uzmap/pkg/uzcore/d/g;)Z
    .locals 1

    const-string v0, "appintent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-interface {p2}, Lcom/uzmap/pkg/uzcore/d/f$a;->b()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p3, p1}, Lcom/uzmap/pkg/uzcore/d/g;->a(Z)V

    :cond_1
    invoke-virtual {p3}, Lcom/uzmap/pkg/uzcore/d/g;->a()Z

    move-result p1

    return p1
.end method

.method private c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzcore/d/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/uzcore/d/g;

    invoke-direct {v0}, Lcom/uzmap/pkg/uzcore/d/g;-><init>()V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/f$a;)Lcom/uzmap/pkg/uzcore/d/f$a;
    .locals 1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/uzmap/pkg/uzcore/d/e;->a(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/d/f$a;Lcom/uzmap/pkg/uzcore/d/g;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/g;->size()I

    move-result p1

    if-lez p1, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/d/g;->clear()V

    :cond_0
    invoke-virtual {v0, p2}, Lcom/uzmap/pkg/uzcore/d/g;->add(Ljava/lang/Object;)Z

    return-object p2
.end method

.method public final a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzcore/d/g;

    return-object p1
.end method

.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/e;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/d/e;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/d/g;

    move-result-object p1

    return-object p1
.end method
