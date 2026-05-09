.class Lcom/deepe/c/c/p$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/c/j$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/c/p;->a(Lcom/deepe/c/c/k;Lcom/deepe/c/c/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/c/p;

.field private final synthetic b:Lcom/deepe/c/c/i;


# direct methods
.method constructor <init>(Lcom/deepe/c/c/p;Lcom/deepe/c/c/i;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/c/p$2;->a:Lcom/deepe/c/c/p;

    iput-object p2, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/c/j$b;Z)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/c/j$b;->a()Lcom/deepe/c/c/g;

    move-result-object p1

    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    invoke-interface {p2, p1}, Lcom/deepe/c/c/i;->a(Lcom/deepe/c/c/g;)V

    return-void

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    invoke-interface {p2, p1}, Lcom/deepe/c/c/i;->a(Lcom/deepe/c/c/g;)V

    :cond_2
    return-void
.end method

.method public onErrorResponse(Lcom/deepe/c/j/r;)V
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/deepe/c/j/r;->e()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/deepe/c/c/d;->a(ILjava/lang/String;)Lcom/deepe/c/c/d;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/c/p$2;->b:Lcom/deepe/c/c/i;

    invoke-interface {v0, p1}, Lcom/deepe/c/c/i;->a(Lcom/deepe/c/c/d;)V

    :cond_0
    return-void
.end method
