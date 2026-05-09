.class Lcom/uzmap/pkg/b/b/h$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/h;->c(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/h;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/h;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/h$5;->a:Lcom/uzmap/pkg/b/b/h;

    iput-object p2, p0, Lcom/uzmap/pkg/b/b/h$5;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/b/b/h$5;->c:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$5;->a:Lcom/uzmap/pkg/b/b/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/b/b/h;->a(Z)V

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$5;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->d(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/b/b/h$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/h$5;->a:Lcom/uzmap/pkg/b/b/h;

    invoke-static {v0}, Lcom/uzmap/pkg/b/b/h;->d(Lcom/uzmap/pkg/b/b/h;)Lcom/uzmap/pkg/b/b/h$a;

    move-result-object v0

    iget-object v2, p0, Lcom/uzmap/pkg/b/b/h$5;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/uzmap/pkg/b/b/h$5;->c:Ljava/lang/String;

    invoke-interface {v0, v1, v2, v3}, Lcom/uzmap/pkg/b/b/h$a;->a(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
