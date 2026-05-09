.class Lcom/deepe/c/j/n$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/c/j/n$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/c/j/n;->a(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/c/j/n;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/deepe/c/j/n;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/j/n$1;->a:Lcom/deepe/c/j/n;

    iput-object p2, p0, Lcom/deepe/c/j/n$1;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/j/l;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/deepe/c/j/l<",
            "*>;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/j/n$1;->b:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/deepe/c/j/n$1;->b:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-virtual {p1}, Lcom/deepe/c/j/l;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
