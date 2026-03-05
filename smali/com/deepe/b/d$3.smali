.class Lcom/deepe/b/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->a(Lcom/deepe/b/d/f;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Z

.field private final synthetic c:Lcom/deepe/b/d/f;


# direct methods
.method constructor <init>(Lcom/deepe/b/d;ZLcom/deepe/b/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$3;->a:Lcom/deepe/b/d;

    iput-boolean p2, p0, Lcom/deepe/b/d$3;->b:Z

    iput-object p3, p0, Lcom/deepe/b/d$3;->c:Lcom/deepe/b/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d$3;)Lcom/deepe/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d$3;->a:Lcom/deepe/b/d;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-boolean v0, p0, Lcom/deepe/b/d$3;->b:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/deepe/b;->j:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/deepe/b;->n:Ljava/lang/String;

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/deepe/b;->m:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/deepe/b;->o:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/deepe/b/d$3;->c:Lcom/deepe/b/d/f;

    iget-object v3, v3, Lcom/deepe/b/d/f;->g:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/deepe/b;->p:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\uff1a\n"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/deepe/b/d$3;->c:Lcom/deepe/b/d/f;

    iget-object v4, v4, Lcom/deepe/b/d/f;->i:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/deepe/b;->q:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/deepe/b/d$3;->c:Lcom/deepe/b/d/f;

    iget-object v2, v2, Lcom/deepe/b/d/f;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    move-result-object v0

    iget-boolean v1, p0, Lcom/deepe/b/d$3;->b:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepe/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/deepe/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    :goto_1
    iget-object v1, p0, Lcom/deepe/b/d$3;->a:Lcom/deepe/b/d;

    invoke-static {v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/deepe/b/d$3$1;

    iget-object v3, p0, Lcom/deepe/b/d$3;->c:Lcom/deepe/b/d/f;

    iget-boolean v4, p0, Lcom/deepe/b/d$3;->b:Z

    invoke-direct {v2, p0, v3, v4}, Lcom/deepe/b/d$3$1;-><init>(Lcom/deepe/b/d$3;Lcom/deepe/b/d/f;Z)V

    invoke-static {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;

    return-void
.end method
