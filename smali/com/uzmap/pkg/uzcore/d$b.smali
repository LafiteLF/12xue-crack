.class Lcom/uzmap/pkg/uzcore/d$b;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzcore/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation


# instance fields
.field final a:Lcom/uzmap/pkg/uzcore/b/e;

.field final synthetic b:Lcom/uzmap/pkg/uzcore/d;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzcore/d;Lcom/uzmap/pkg/uzcore/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d$b;->b:Lcom/uzmap/pkg/uzcore/d;

    const-string p1, "Deepe-doConfigParser"

    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/d$b;->a:Lcom/uzmap/pkg/uzcore/b/e;

    return-void
.end method

.method private a()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$b;->b:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->a(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/uzcore/b/d;->b()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$b;->b:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/uzmap/pkg/uzapp/a;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d$b;->b:Lcom/uzmap/pkg/uzcore/d;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/d;->b(Lcom/uzmap/pkg/uzcore/d;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzcore/b/d;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->s()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/deepe/b;->ae:Ljava/lang/String;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/deepe/b;->af:Ljava/lang/String;

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/d$b;->a:Lcom/uzmap/pkg/uzcore/b/e;

    if-eqz v3, :cond_3

    new-instance v3, Lcom/uzmap/pkg/uzcore/d$b$1;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/uzmap/pkg/uzcore/d$b$1;-><init>(Lcom/uzmap/pkg/uzcore/d$b;ZLcom/uzmap/pkg/uzcore/b/d;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/deepe/c/c;->b(Ljava/lang/Runnable;)Z

    :cond_3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/d$b;->a()V

    return-void
.end method
