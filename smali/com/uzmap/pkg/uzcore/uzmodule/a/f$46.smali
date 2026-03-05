.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->aR(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Lcom/uzmap/pkg/uzcore/uzmodule/b/m;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->c(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    const-string v2, "connectIconPath"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    const-string v3, "disconnectIconPath"

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    const-string v4, "outOfBounds"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    const-string v5, "scale"

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->optInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {v2}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v5, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$46;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/m;

    invoke-virtual {v5, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/m;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/b/b/h;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v3}, Lcom/uzmap/pkg/b/b/h;->a(I)V

    invoke-virtual {v0, v4}, Lcom/uzmap/pkg/b/b/h;->b(I)V

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->isShown()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->a()V

    :cond_1
    return-void
.end method
