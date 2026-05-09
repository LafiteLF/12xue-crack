.class public Lcom/apicloud/a/i/a/ac/a;
.super Lcom/apicloud/a/i/a/i/b;

# interfaces
.implements Lcom/apicloud/a/i/a/ac/d;


# instance fields
.field private a:I

.field private b:Z

.field private c:Lcom/apicloud/a/c/l;

.field private d:Lcom/apicloud/a/i/c/d;

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/i/b;-><init>(Lcom/apicloud/a/d;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ac/a;->a:I

    return v0
.end method

.method a(I)V
    .locals 0

    iput p1, p0, Lcom/apicloud/a/i/a/ac/a;->a:I

    return-void
.end method

.method public a(IZ)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/ac/a;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/a;->c:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ac/a;->d:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "scrollTop"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->d:Lcom/apicloud/a/i/c/d;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "isFixed"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->c:Lcom/apicloud/a/c/l;

    iget-object p2, p0, Lcom/apicloud/a/i/a/ac/a;->d:Lcom/apicloud/a/i/c/d;

    const-string v0, "scroll"

    invoke-virtual {p1, v0, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->g:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/ac/a;->b:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/ac/a;->h()Lcom/apicloud/a/d;

    move-result-object p1

    invoke-interface {p1}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->c:Lcom/apicloud/a/c/l;

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->c:Lcom/apicloud/a/c/l;

    :goto_0
    iput-object p1, p0, Lcom/apicloud/a/i/a/ac/a;->d:Lcom/apicloud/a/i/c/d;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "[sticky]"

    return-object v0
.end method
