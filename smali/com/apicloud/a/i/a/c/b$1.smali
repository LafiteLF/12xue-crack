.class Lcom/apicloud/a/i/a/c/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/c/b;->a(Landroid/widget/Button;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/c/b;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/c/b;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/c/b$1;->a:Lcom/apicloud/a/i/a/c/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/c/b$1;->a:Lcom/apicloud/a/i/a/c/b;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/c/b;->a(Lcom/apicloud/a/i/a/c/b;Landroid/view/View;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/apicloud/a/i/a/g/b;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/apicloud/a/i/a/g/b;->a()V

    :cond_0
    return-void
.end method
