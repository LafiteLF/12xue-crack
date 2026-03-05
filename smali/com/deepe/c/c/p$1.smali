.class Lcom/deepe/c/c/p$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/r$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/s;Lcom/deepe/c/c/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/p;

.field private final synthetic b:Lcom/deepe/c/c/q;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/p;Lcom/deepe/c/c/q;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/p$1;->a:Lcom/deepe/c/c/p;

    iput-object p2, p0, Lcom/deepe/c/c/p$1;->b:Lcom/deepe/c/c/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/r$b;Z)V
    .locals 0

    invoke-virtual {p1}, Lcom/deepe/c/c/r$b;->a()Lcom/deepe/c/c/m;

    move-result-object p1

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/deepe/c/c/p$1;->b:Lcom/deepe/c/c/q;

    invoke-interface {p2, p1}, Lcom/deepe/c/c/q;->onGetSuccess(Lcom/deepe/c/c/m;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/deepe/c/c/p$1;->b:Lcom/deepe/c/c/q;

    invoke-interface {p2, p1}, Lcom/deepe/c/c/q;->onGetSuccess(Lcom/deepe/c/c/m;)V

    :cond_1
    return-void
.end method

.method public onErrorResponse(Lcom/deepe/c/j/r;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/c/c/p$1;->b:Lcom/deepe/c/c/q;

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/deepe/c/c/d;->a(ILjava/lang/String;)Lcom/deepe/c/c/d;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/deepe/c/c/q;->onGetError(Lcom/deepe/c/c/d;)V

    return-void
.end method
