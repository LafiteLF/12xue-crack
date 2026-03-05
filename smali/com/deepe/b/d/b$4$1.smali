.class Lcom/deepe/b/d/b$4$1;
.super Lcom/deepe/b/f/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/b/d/b$4;->onFinish(Lcom/uzmap/pkg/uzkit/request/HttpResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/deepe/b/d/b$4;

.field private final synthetic b:Lcom/deepe/b/b/c;


# direct methods
.method constructor <init>(Lcom/deepe/b/d/b$4;Lcom/deepe/b/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/b/d/b$4$1;->a:Lcom/deepe/b/d/b$4;

    iput-object p2, p0, Lcom/deepe/b/d/b$4$1;->b:Lcom/deepe/b/b/c;

    invoke-direct {p0}, Lcom/deepe/b/f/c;-><init>()V

    return-void
.end method


# virtual methods
.method public a(D)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/b/d/b$4$1;->a:Lcom/deepe/b/d/b$4;

    invoke-static {v0}, Lcom/deepe/b/d/b$4;->a(Lcom/deepe/b/d/b$4;)Lcom/deepe/b/d/b;

    move-result-object v0

    iget-object v1, p0, Lcom/deepe/b/d/b$4$1;->b:Lcom/deepe/b/b/c;

    iget v1, v1, Lcom/deepe/b/b/c;->e:I

    invoke-static {v0, v1, p1, p2}, Lcom/deepe/b/d/b;->a(Lcom/deepe/b/d/b;ID)V

    return-void
.end method
