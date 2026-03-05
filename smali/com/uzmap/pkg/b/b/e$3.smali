.class Lcom/uzmap/pkg/b/b/e$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/b/b/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/e;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/e$3;->a:Lcom/uzmap/pkg/b/b/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/e$3;->a:Lcom/uzmap/pkg/b/b/e;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/b/b/e;->b(Lcom/uzmap/pkg/b/b/e;Z)V

    return-void
.end method
