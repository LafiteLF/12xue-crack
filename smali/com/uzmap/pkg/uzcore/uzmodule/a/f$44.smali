.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$44;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->aQ(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Z


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$44;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-boolean p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$44;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$44;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->c(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/a/a;->a(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->a(Landroid/app/Activity;)Lcom/uzmap/pkg/b/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->e()V

    iget-boolean v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$44;->b:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/uzmap/pkg/b/b/h;->d()V

    :cond_0
    return-void
.end method
