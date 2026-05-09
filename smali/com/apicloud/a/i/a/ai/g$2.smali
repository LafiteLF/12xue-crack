.class Lcom/apicloud/a/i/a/ai/g$2;
.super Lcom/apicloud/a/d/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/ai/g;->a(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/ai/g;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/ai/g;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/ai/g$2;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-direct {p0}, Lcom/apicloud/a/d/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/ai/g$2;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-static {v0}, Lcom/apicloud/a/i/a/ai/g;->b(Lcom/apicloud/a/i/a/ai/g;)Lcom/apicloud/a/i/a/n/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/apicloud/a/i/a/n/b;->a(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/apicloud/a/i/a/ai/g$2;->a:Lcom/apicloud/a/i/a/ai/g;

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/g;->b(Lcom/apicloud/a/i/a/ai/g;)Lcom/apicloud/a/i/a/n/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/apicloud/a/i/a/n/b;->setVisibility(I)V

    return-void
.end method
