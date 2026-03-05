.class Lcom/uzmap/pkg/uzcore/d/f$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/b/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/d/f;->f(Z)V
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$4;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/deepe/a/b/b;)V
    .locals 3

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    iget v1, p2, Lcom/deepe/a/b/b;->a:I

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;I)V

    iget-boolean p2, p2, Lcom/deepe/a/b/b;->b:Z

    const-string v1, "isPlugged"

    invoke-virtual {v0, v1, p2}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$4;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const-string p2, "batterystatus"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$4;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const-string p2, "batterylow"

    :goto_0
    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    return-void
.end method
