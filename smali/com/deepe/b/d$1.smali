.class Lcom/deepe/b/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d;->b(Lcom/deepe/b/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d;

.field private final synthetic b:Lcom/deepe/b/d/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/d;Lcom/deepe/b/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$1;->a:Lcom/deepe/b/d;

    iput-object p2, p0, Lcom/deepe/b/d$1;->b:Lcom/deepe/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/deepe/b/d$1;)Lcom/deepe/b/d;
    .locals 0

    iget-object p0, p0, Lcom/deepe/b/d$1;->a:Lcom/deepe/b/d;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 4

    sget-object v0, Lcom/deepe/b;->b:Ljava/lang/String;

    sget-object v1, Lcom/deepe/b;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    move-result-object v0

    sget-object v1, Lcom/deepe/b;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    sget-object v1, Lcom/deepe/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/external/c$b;->c(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/external/c$b;

    iget-object v1, p0, Lcom/deepe/b/d$1;->a:Lcom/deepe/b/d;

    invoke-static {v1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/deepe/b/d$a;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/deepe/b/d$1$1;

    iget-object v3, p0, Lcom/deepe/b/d$1;->b:Lcom/deepe/b/d/c;

    invoke-direct {v2, p0, v3}, Lcom/deepe/b/d$1$1;-><init>(Lcom/deepe/b/d$1;Lcom/deepe/b/d/c;)V

    invoke-static {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/c$b;Lcom/uzmap/pkg/uzcore/external/c$c;)Landroid/app/AlertDialog;

    return-void
.end method
