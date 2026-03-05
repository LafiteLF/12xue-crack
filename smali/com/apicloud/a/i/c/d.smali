.class public Lcom/apicloud/a/i/c/d;
.super Lcom/apicloud/a/i/c/c;


# static fields
.field private static final serialVersionUID:J = 0x2957a8e19f72499cL


# instance fields
.field private a:Lcom/apicloud/a/i/c/j;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/apicloud/a/i/c/c;-><init>()V

    new-instance v0, Lcom/apicloud/a/i/c/j;

    invoke-direct {v0}, Lcom/apicloud/a/i/c/j;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/c/d;->a:Lcom/apicloud/a/i/c/j;

    const-string v1, "detail"

    invoke-super {p0, v1, v0}, Lcom/apicloud/a/i/c/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Lcom/apicloud/a/h/b;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    const-string v0, "dataset"

    invoke-super {p0, v0, p1}, Lcom/apicloud/a/i/c/c;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/c/d;->a:Lcom/apicloud/a/i/c/j;

    invoke-virtual {v0, p1, p2}, Lcom/apicloud/a/i/c/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/c/d;->a:Lcom/apicloud/a/i/c/j;

    invoke-virtual {v0}, Lcom/apicloud/a/i/c/j;->clear()V

    return-void
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Object;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
