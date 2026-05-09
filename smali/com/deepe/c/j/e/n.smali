.class public Lcom/deepe/c/j/e/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/c;


# instance fields
.field private a:Lcom/deepe/c/k/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/deepe/c/k/d;->a()Lcom/deepe/c/k/d;

    move-result-object v0

    iput-object v0, p0, Lcom/deepe/c/j/e/n;->a:Lcom/deepe/c/k/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/j/e/n;->a:Lcom/deepe/c/k/d;

    invoke-virtual {v0, p1}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/deepe/c/j/e/n;->a:Lcom/deepe/c/k/d;

    invoke-virtual {v0, p1, p2}, Lcom/deepe/c/k/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
