.class Lcom/deepe/c/c/a/a/d$k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/a/a/d$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/a/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "k"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/deepe/c/c/a/a/d$k;->a:Z

    iput-object p2, p0, Lcom/deepe/c/c/a/a/d$k;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/a/a/d$o;Lcom/deepe/c/c/a/a/k$ak;)Z
    .locals 4

    iget-boolean p1, p0, Lcom/deepe/c/c/a/a/d$k;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/c/c/a/a/d$k;->b:Ljava/lang/String;

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/c/c/a/a/d$k;->b:Ljava/lang/String;

    :goto_0
    iget-object v0, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    iget-object p2, p2, Lcom/deepe/c/c/a/a/k$ak;->v:Lcom/deepe/c/c/a/a/k$ai;

    invoke-interface {p2}, Lcom/deepe/c/c/a/a/k$ai;->b()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move v0, v1

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/deepe/c/c/a/a/k$am;

    check-cast v3, Lcom/deepe/c/c/a/a/k$ak;

    if-eqz p1, :cond_3

    invoke-virtual {v3}, Lcom/deepe/c/c/a/a/k$ak;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_2
    if-ne v0, v2, :cond_5

    return v2

    :cond_5
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/c/c/a/a/d$k;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/deepe/c/c/a/a/d$k;->b:Ljava/lang/String;

    aput-object v2, v0, v1

    const-string v1, "only-of-type <%s>"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "only-child"

    :goto_0
    return-object v0
.end method
