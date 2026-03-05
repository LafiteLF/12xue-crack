.class public abstract Lcom/apicloud/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/c/g$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/c/g$b;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    new-instance v0, Lcom/apicloud/b/a/f;

    iget p1, p1, Lcom/apicloud/a/c/g$b;->f:I

    invoke-direct {v0, p2, p3, p4, p1}, Lcom/apicloud/b/a/f;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    invoke-virtual {v0, p5}, Lcom/apicloud/b/a/f;->a(Z)V

    invoke-virtual {p0, v0}, Lcom/apicloud/b/a/c;->a(Lcom/apicloud/b/a/f;)V

    return-void
.end method

.method public abstract a(Lcom/apicloud/b/a/f;)V
.end method
