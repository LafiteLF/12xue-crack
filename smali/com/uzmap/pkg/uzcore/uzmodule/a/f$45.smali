.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->a(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:I

.field private final synthetic c:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->b:I

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->d(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/d/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->b:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v2}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->e(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$45;->c:Lcom/uzmap/pkg/uzcore/uzmodule/b/v;

    invoke-interface {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/d/m;->a(ILcom/uzmap/pkg/uzcore/a;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method
