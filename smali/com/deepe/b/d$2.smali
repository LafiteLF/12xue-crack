.class Lcom/deepe/b/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/deepe/b/d;Z)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$2;->a:Lcom/deepe/b/d;

    iput-boolean p2, p0, Lcom/deepe/b/d$2;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d$2;)Lcom/deepe/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d$2;->a:Lcom/deepe/b/d;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-boolean v0, p0, Lcom/deepe/b/d$2;->b:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/deepe/b;->u:Ljava/lang/String;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V

    return-void

    :cond_0
    sget-object v0, Lcom/deepe/b;->i:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d$2;->a:Lcom/deepe/b/d;

    invoke-static {v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/d$a;->isFromNativeSDK()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/deepe/b;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object v1, Lcom/deepe/b;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/deepe/b;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->a(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object v1, Lcom/deepe/b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    iget-object v1, p0, Lcom/deepe/b/d$2;->a:Lcom/deepe/b/d;

    invoke-static {v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/deepe/b/d$2$1;

    invoke-direct {v2, p0}, Lcom/deepe/b/d$2$1;-><init>(Lcom/deepe/b/d$2;)V

    invoke-static {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;

    return-void
.end method
