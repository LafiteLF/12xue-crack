.class public Lcom/apicloud/a/i/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/apicloud/a/h/b;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private final e:Lcom/apicloud/a/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/apicloud/a/c;

    invoke-direct {v0}, Lcom/apicloud/a/c;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/b;->e:Lcom/apicloud/a/c;

    new-instance v0, Lcom/apicloud/a/h/b;

    invoke-direct {v0}, Lcom/apicloud/a/h/b;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/b;->b:Lcom/apicloud/a/h/b;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/b;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Lcom/apicloud/a/c;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/b;->e:Lcom/apicloud/a/c;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/c;->a(Lcom/apicloud/a/c;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/b;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/b;->b:Lcom/apicloud/a/h/b;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/h/b;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/b;->c:Ljava/lang/String;

    return-void
.end method

.method public c()Lcom/apicloud/a/h/b;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/b;->b:Lcom/apicloud/a/h/b;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/b;->d:Ljava/lang/String;

    return-void
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/b;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
