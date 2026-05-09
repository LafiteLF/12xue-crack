.class public Lcom/apicloud/a/i/a/aa/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/apicloud/a/i/a/x/c;

.field private b:Lcom/apicloud/a/d;

.field private c:Z

.field private d:Z

.field private e:Lcom/apicloud/a/c/l;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;Lcom/apicloud/a/i/a/x/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/c;->b:Lcom/apicloud/a/d;

    iput-object p2, p0, Lcom/apicloud/a/i/a/aa/c;->a:Lcom/apicloud/a/i/a/x/c;

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/aa/c;->a:Lcom/apicloud/a/i/a/x/c;

    invoke-virtual {p1, p2}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/c;->e:Lcom/apicloud/a/c/l;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/c;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/c;->e:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "refresherrefresh"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/c;->c:Z

    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/aa/c;->d:Z

    return-void
.end method

.method public c()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/aa/c;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/aa/c;->e:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const-string v2, "refresherrestore"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method
