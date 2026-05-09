.class public Lcom/uzmap/pkg/b/b/m;
.super Lcom/deepe/c/l/a/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uzmap/pkg/b/b/m$a;,
        Lcom/uzmap/pkg/b/b/m$b;
    }
.end annotation


# instance fields
.field private b:Lcom/uzmap/pkg/b/b/m$b;


# direct methods
.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    new-instance v0, Lcom/uzmap/pkg/b/b/m$a;

    invoke-direct {v0}, Lcom/uzmap/pkg/b/b/m$a;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/deepe/c/l/a/b;-><init>(Ljava/net/URI;Lcom/deepe/c/l/b/a;)V

    return-void
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/m;->b:Lcom/uzmap/pkg/b/b/m$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/b/b/m$b;->a(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Z)V
    .locals 1

    const-string v0, " @@@@@@@@@@@@@ DebugSocketClient onClose"

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/m;->b:Lcom/uzmap/pkg/b/b/m$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lcom/uzmap/pkg/b/b/m$b;->a(ILjava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public a(Lcom/deepe/c/l/g/h;)V
    .locals 0

    const-string p1, " @@@@@@@@@@@@@ DebugSocketClient ------ onOpen"

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/m;->b:Lcom/uzmap/pkg/b/b/m$b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/uzmap/pkg/b/b/m$b;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/uzmap/pkg/b/b/m$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/m;->b:Lcom/uzmap/pkg/b/b/m$b;

    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " @@@@@@@@@@@@@ DebugSocketClient ------ onError\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/m;->b:Lcom/uzmap/pkg/b/b/m$b;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/uzmap/pkg/b/b/m$b;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " @@@@@@@@@@@@@ DebugSocketClient ------ onMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/d;->g(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/b/b/m;->c(Ljava/lang/String;)V

    return-void
.end method

.method protected a(Ljavax/net/ssl/SSLParameters;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/deepe/c/l/a/b;->a(Ljavax/net/ssl/SSLParameters;)V

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/m;->i()Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/uzmap/pkg/b/b/m;->i()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
