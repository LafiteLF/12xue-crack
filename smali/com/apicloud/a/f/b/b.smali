.class public Lcom/apicloud/a/f/b/b;
.super Lcom/apicloud/a/e/h;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/e/h<",
        "Lcom/apicloud/a/f/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/e/h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/f/b/a;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1, p2}, Lcom/apicloud/a/f/b/a;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/f/b/a;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/f/b/b;->a(Lcom/apicloud/a/f/b/a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
