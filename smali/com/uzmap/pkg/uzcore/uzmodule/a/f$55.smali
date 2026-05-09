.class Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->bd(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Z

.field private final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->b:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->c:Z

    iput-object p4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->d(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/d/m;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->a:Lcom/uzmap/pkg/uzcore/uzmodule/a/f;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/uzmodule/a/f;->e(Lcom/uzmap/pkg/uzcore/uzmodule/a/f;)Lcom/uzmap/pkg/uzcore/a;

    move-result-object v1

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->b:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->c:Z

    iget-object v4, p0, Lcom/uzmap/pkg/uzcore/uzmodule/a/f$55;->d:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/uzmap/pkg/uzcore/d/m;->a(Lcom/uzmap/pkg/uzcore/a;Ljava/lang/String;ZLjava/lang/String;)V

    return-void
.end method
