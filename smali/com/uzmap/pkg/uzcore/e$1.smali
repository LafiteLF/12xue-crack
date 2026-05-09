.class Lcom/uzmap/pkg/uzcore/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/e;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/e;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/e;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/e$1;->a:Lcom/uzmap/pkg/uzcore/e;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/e$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/e$1;->a:Lcom/uzmap/pkg/uzcore/e;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/e$1;->b:Ljava/lang/String;

    const-string v2, "wifidebug"

    invoke-static {v1, v2}, Lcom/uzmap/pkg/uzcore/b/d;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/b/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/e;->b(Lcom/uzmap/pkg/uzcore/b/d;)V

    return-void
.end method
