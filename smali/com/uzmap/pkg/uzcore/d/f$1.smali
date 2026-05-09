.class Lcom/uzmap/pkg/uzcore/d/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/b/j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/d/f;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/uzcore/d/f;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzcore/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$1;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/d/f$1;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const-string v1, "shake"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    return-void
.end method
