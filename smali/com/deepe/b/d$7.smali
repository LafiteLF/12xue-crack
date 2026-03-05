.class Lcom/deepe/b/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/deepe/b/d;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$7;->a:Lcom/deepe/b/d;

    iput-object p2, p0, Lcom/deepe/b/d$7;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d$7;)Lcom/deepe/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d$7;->a:Lcom/deepe/b/d;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/deepe/b/d$7;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    sget-object v1, Lcom/deepe/b;->k:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzcore/external/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    iget-object v1, p0, Lcom/deepe/b/d$7;->a:Lcom/deepe/b/d;

    invoke-static {v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/deepe/b/d$7$1;

    invoke-direct {v2, p0}, Lcom/deepe/b/d$7$1;-><init>(Lcom/deepe/b/d$7;)V

    invoke-static {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;

    return-void
.end method
