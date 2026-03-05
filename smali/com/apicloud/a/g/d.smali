.class public Lcom/apicloud/a/g/d;
.super Lcom/apicloud/a/g/l;


# static fields
.field private static final serialVersionUID:J = 0x8efcf9d95e9e0a3L


# instance fields
.field private a:Lcom/apicloud/a/b/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/a/b/d<",
            "Lcom/apicloud/a/g/l;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Lcom/apicloud/a/g/l;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    new-instance v0, Lcom/apicloud/a/b/d;

    invoke-direct {v0, p1}, Lcom/apicloud/a/b/d;-><init>(I)V

    iput-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    return-void
.end method


# virtual methods
.method public a(I)Lcom/apicloud/a/g/l;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/b/d;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/g/l;

    return-object p1
.end method

.method public a(Lcom/apicloud/a/g/l;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    invoke-virtual {v0, p1}, Lcom/apicloud/a/b/d;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a()[Lcom/apicloud/a/g/l;
    .locals 2

    iget-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    invoke-virtual {v0}, Lcom/apicloud/a/b/d;->size()I

    move-result v1

    new-array v1, v1, [Lcom/apicloud/a/g/l;

    invoke-virtual {v0, v1}, Lcom/apicloud/a/b/d;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/apicloud/a/g/l;

    return-object v0
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    invoke-virtual {v0}, Lcom/apicloud/a/b/d;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/g/d;->a:Lcom/apicloud/a/b/d;

    invoke-virtual {v0}, Lcom/apicloud/a/b/d;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
