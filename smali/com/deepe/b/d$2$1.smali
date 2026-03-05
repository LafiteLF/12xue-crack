.class Lcom/deepe/b/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/external/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d$2;


# direct methods
.method constructor <init>(Lcom/deepe/b/d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$2$1;->a:Lcom/deepe/b/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 0

    const/4 p2, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d$2$1;->a:Lcom/deepe/b/d$2;

    invoke-static {p1}, Lcom/deepe/b/d$2;->a(Lcom/deepe/b/d$2;)Lcom/deepe/b/d;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d$2$1;->a:Lcom/deepe/b/d$2;

    invoke-static {p1}, Lcom/deepe/b/d$2;->a(Lcom/deepe/b/d$2;)Lcom/deepe/b/d;

    move-result-object p1

    invoke-static {p1}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;)Lcom/deepe/b/d$a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/deepe/b/d$a;->requestRebootApp()Z

    :cond_0
    return-void
.end method
