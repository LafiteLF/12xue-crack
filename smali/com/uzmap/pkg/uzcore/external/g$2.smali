.class Lcom/uzmap/pkg/uzcore/external/g$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/g$2;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Lcom/uzmap/pkg/uzcore/external/g$a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/uzmap/pkg/uzcore/external/g$a;-><init>(Z)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/external/g$2;->a:Ljava/lang/String;

    iput-object v1, v0, Lcom/uzmap/pkg/uzcore/external/g$a;->a:Ljava/lang/String;

    new-instance v1, Lcom/uzmap/pkg/uzcore/external/g$b;

    invoke-static {}, Lcom/uzmap/pkg/uzcore/d;->a()Lcom/uzmap/pkg/uzcore/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/uzmap/pkg/uzcore/d;->c()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/uzmap/pkg/uzcore/external/g$b;-><init>(Landroid/content/Context;Lcom/uzmap/pkg/uzcore/external/g$a;)V

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzcore/external/g$b;->a()V

    return-void
.end method
