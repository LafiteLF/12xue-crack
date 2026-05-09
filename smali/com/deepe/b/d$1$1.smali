.class Lcom/deepe/b/d$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/external/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d$1;

.field private final synthetic b:Lcom/deepe/b/d/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/d$1;Lcom/deepe/b/d/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$1$1;->a:Lcom/deepe/b/d$1;

    iput-object p2, p0, Lcom/deepe/b/d$1$1;->b:Lcom/deepe/b/d/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d$1$1;->a:Lcom/deepe/b/d$1;

    invoke-static {p1}, Lcom/deepe/b/d$1;->a(Lcom/deepe/b/d$1;)Lcom/deepe/b/d;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;Z)V

    iget-object p1, p0, Lcom/deepe/b/d$1$1;->b:Lcom/deepe/b/d/c;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/deepe/b/d$1$1;->b:Lcom/deepe/b/d/c;

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/deepe/b/d/c;->a(Z)V

    return-void
.end method
