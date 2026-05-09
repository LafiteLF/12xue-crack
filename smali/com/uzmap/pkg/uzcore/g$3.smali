.class Lcom/uzmap/pkg/uzcore/g$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/d/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/g;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/d/c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/g$3;->a:Lcom/uzmap/pkg/uzcore/g;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/g$3;->b:Lcom/uzmap/pkg/uzcore/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/g$3;->a:Lcom/uzmap/pkg/uzcore/g;

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/g$3;->b:Lcom/uzmap/pkg/uzcore/d/c;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/uzmap/pkg/uzcore/g;->a(Lcom/uzmap/pkg/uzcore/g;Lcom/uzmap/pkg/uzcore/d/c;ILcom/uzmap/pkg/uzcore/uzmodule/b/v;)V

    return-void
.end method
