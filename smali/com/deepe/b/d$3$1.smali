.class Lcom/deepe/b/d$3$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/external/c$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d$3;

.field private final synthetic b:Lcom/deepe/b/d/f;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/deepe/b/d$3;Lcom/deepe/b/d/f;Z)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d$3$1;->a:Lcom/deepe/b/d$3;

    iput-object p2, p0, Lcom/deepe/b/d$3$1;->b:Lcom/deepe/b/d/f;

    iput-boolean p3, p0, Lcom/deepe/b/d$3$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;)V
    .locals 1

    const/4 p2, -0x1

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lcom/deepe/b/d$3$1;->a:Lcom/deepe/b/d$3;

    invoke-static {p1}, Lcom/deepe/b/d$3;->a(Lcom/deepe/b/d$3;)Lcom/deepe/b/d;

    move-result-object p1

    iget-object p2, p0, Lcom/deepe/b/d$3$1;->b:Lcom/deepe/b/d/f;

    iget-object p2, p2, Lcom/deepe/b/d/f;->j:Ljava/lang/String;

    iget-boolean v0, p0, Lcom/deepe/b/d$3$1;->c:Z

    invoke-static {p1, p2, v0}, Lcom/deepe/b/d;->a(Lcom/deepe/b/d;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
