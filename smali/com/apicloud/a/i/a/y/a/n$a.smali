.class Lcom/apicloud/a/i/a/y/a/n$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/y/a/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/y/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/y/a/n;


# direct methods
.method private constructor <init>(Lcom/apicloud/a/i/a/y/a/n;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/y/a/n$a;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/y/a/n;Lcom/apicloud/a/i/a/y/a/n$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/apicloud/a/i/a/y/a/n$a;-><init>(Lcom/apicloud/a/i/a/y/a/n;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n$a;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/n;->b(Lcom/apicloud/a/i/a/y/a/n;)I

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/String;Lcom/apicloud/a/i/a/y/a/c$a;)V
    .locals 2

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/apicloud/a/i/c;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/c/s;->b(Ljava/lang/String;)Lcom/deepe/c/c/s;

    move-result-object p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/deepe/c/c/s;->g:Z

    iget-object v0, p0, Lcom/apicloud/a/i/a/y/a/n$a;->a:Lcom/apicloud/a/i/a/y/a/n;

    invoke-static {v0}, Lcom/apicloud/a/i/a/y/a/n;->a(Lcom/apicloud/a/i/a/y/a/n;)Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->f()Lcom/apicloud/a/d/g;

    move-result-object v0

    new-instance v1, Lcom/apicloud/a/i/a/y/a/n$a$1;

    invoke-direct {v1, p0, p2}, Lcom/apicloud/a/i/a/y/a/n$a$1;-><init>(Lcom/apicloud/a/i/a/y/a/n$a;Lcom/apicloud/a/i/a/y/a/c$a;)V

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/a/d/g;->a(Lcom/deepe/c/c/s;Lcom/apicloud/a/d/g$a;)V

    return-void

    :cond_1
    :goto_0
    invoke-interface {p2}, Lcom/apicloud/a/i/a/y/a/c$a;->a()V

    return-void
.end method
