.class Lcom/apicloud/a/i/a/x/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/x/i;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/x/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field a:Lcom/apicloud/a/c/l;

.field b:Lcom/apicloud/a/i/c/d;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/apicloud/a/i/a/x/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/x/f;Lcom/apicloud/a/c/l;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/f$a;->e:Lcom/apicloud/a/i/a/x/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    new-instance p1, Lcom/apicloud/a/i/c/d;

    invoke-direct {p1}, Lcom/apicloud/a/i/c/d;-><init>()V

    iput-object p1, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/f$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/c/d;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v1, "state"

    const-string v2, "normal"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v2, "statechange"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/f$a;->c:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/c/d;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    if-nez p1, :cond_0

    const-string p1, "normal"

    goto :goto_0

    :cond_0
    const-string p1, "dragging"

    :goto_0
    const-string v1, "state"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v1, "statechange"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/f$a;->d:Z

    return-void
.end method

.method public b()V
    .locals 3

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/f$a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/c/d;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v1, "state"

    const-string v2, "refreshing"

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    iget-object v1, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v2, "statechange"

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public b(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/apicloud/a/i/a/x/f$a;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    invoke-virtual {v0}, Lcom/apicloud/a/i/c/d;->clear()V

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {p1}, Lcom/apicloud/a/g/h;->b(I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "distance"

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/apicloud/a/i/a/x/f$a;->a:Lcom/apicloud/a/c/l;

    iget-object v0, p0, Lcom/apicloud/a/i/a/x/f$a;->b:Lcom/apicloud/a/i/c/d;

    const-string v1, "pulling"

    invoke-virtual {p1, v1, v0}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/x/f$a;->c:Z

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method
