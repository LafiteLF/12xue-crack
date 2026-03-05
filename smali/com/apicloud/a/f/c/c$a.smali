.class public Lcom/apicloud/a/f/c/c$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/f/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method static a(Ljava/lang/String;Lcom/apicloud/a/d;)Lcom/apicloud/a/f/c/c;
    .locals 1

    sget-object v0, Lcom/apicloud/a/f/c/c$b;->a:Lcom/apicloud/a/f/c/c$b;

    invoke-static {p0}, Lcom/apicloud/a/f/c/c$b;->a(Ljava/lang/String;)Lcom/apicloud/a/f/c/c$b;

    move-result-object p0

    if-ne v0, p0, :cond_0

    new-instance p0, Lcom/apicloud/a/f/c/a;

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/c/a;-><init>(Lcom/apicloud/a/d;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/apicloud/a/f/c/b;

    invoke-direct {p0, p1}, Lcom/apicloud/a/f/c/b;-><init>(Lcom/apicloud/a/d;)V

    return-object p0
.end method
