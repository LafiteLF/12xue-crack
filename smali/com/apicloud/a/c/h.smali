.class Lcom/apicloud/a/c/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/c/o;


# instance fields
.field private final a:Lcom/apicloud/a/c/v;


# direct methods
.method constructor <init>(Lcom/apicloud/a/c/v;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    return-void
.end method

.method static synthetic a(Lcom/apicloud/a/c/h;)Lcom/apicloud/a/c/v;
    .locals 0

    iget-object p0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    return-object p0
.end method

.method private b()Lcom/apicloud/a/c/w;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->b()Lcom/apicloud/a/c/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/c/x;->a()Lcom/apicloud/a/c/w;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {v0, p1, p2, p3}, Lcom/apicloud/a/c/v;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p4, :cond_0

    iget-object p4, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {p4, p1, p2, p3}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/c/h;->b()Lcom/apicloud/a/c/w;

    move-result-object p4

    new-instance v0, Lcom/apicloud/a/c/h$1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/apicloud/a/c/h$1;-><init>(Lcom/apicloud/a/c/h;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p4, v0}, Lcom/apicloud/a/c/w;->a(Ljava/lang/Runnable;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {v0}, Lcom/apicloud/a/c/v;->e()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/c/h;->b()Lcom/apicloud/a/c/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/c/w;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/c/h;->a:Lcom/apicloud/a/c/v;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c/v;->a(Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/apicloud/a/c/h;->b()Lcom/apicloud/a/c/w;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/c/h$2;

    invoke-direct {v1, p0, p1}, Lcom/apicloud/a/c/h$2;-><init>(Lcom/apicloud/a/c/h;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/apicloud/a/c/w;->a(Ljava/lang/Runnable;)Z

    return-void
.end method
