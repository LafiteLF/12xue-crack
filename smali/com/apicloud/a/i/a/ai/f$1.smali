.class Lcom/apicloud/a/i/a/ai/f$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/apicloud/a/i/a/ai/a/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/ai/f;->d(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/f;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/f;->a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/g;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/f;->a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->a()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/f;->b(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/apicloud/a/d;->l()Lcom/apicloud/a/f/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-static {v1}, Lcom/apicloud/a/i/a/ai/f;->c(Lcom/apicloud/a/i/a/ai/f;)Lorg/json/JSONObject;

    move-result-object v1

    const/4 v2, 0x1

    const-string v3, "keyback"

    invoke-interface {v0, v3, v1, v2}, Lcom/apicloud/a/f/a/a;->a(Ljava/lang/String;Ljava/lang/Object;Z)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/f$1;->a:Lcom/apicloud/a/i/a/ai/f;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/f;->a(Lcom/apicloud/a/i/a/ai/f;)Lcom/apicloud/a/i/a/ai/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/apicloud/a/i/a/ai/g;->o()V

    :cond_1
    return-void
.end method
