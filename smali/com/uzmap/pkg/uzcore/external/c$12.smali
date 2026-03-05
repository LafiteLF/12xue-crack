.class Lcom/uzmap/pkg/uzcore/external/c$12;
.super Lcom/uzmap/pkg/uzcore/external/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/c;->b(Landroid/content/Context;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/external/c$c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Lcom/uzmap/pkg/uzcore/external/c$c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/external/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/c$12;->a:Lcom/uzmap/pkg/uzcore/external/c$c;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/external/c$a;-><init>(Lcom/uzmap/pkg/uzcore/external/c$a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/c$12;->a:Lcom/uzmap/pkg/uzcore/external/c$c;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/external/c$c;->a(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
