.class Lcom/uzmap/pkg/uzcore/d/f$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/deepe/a/e/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/d/f;->d(Z)V
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

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$2;->a:Lcom/uzmap/pkg/uzcore/d/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/deepe/c/i/i;

    invoke-direct {v0}, Lcom/deepe/c/i/i;-><init>()V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/deepe/c/i/i;->a(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/d/f$2;->a:Lcom/uzmap/pkg/uzcore/d/f;

    const-string v1, "takescreenshot"

    invoke-virtual {p1, v1, v0}, Lcom/uzmap/pkg/uzcore/d/f;->a(Ljava/lang/String;Lcom/deepe/c/i/i;)V

    return-void
.end method
