.class Lcom/uzmap/pkg/b/b/g$c$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/b/b/g$c;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/uzmap/pkg/b/b/g$c;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/b/b/g$c;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$3;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$3;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-static {p1}, Lcom/uzmap/pkg/b/b/g$c;->a(Lcom/uzmap/pkg/b/b/g$c;)Lcom/uzmap/pkg/b/b/g;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/b/b/g$c$3;->a:Lcom/uzmap/pkg/b/b/g$c;

    iget-object v0, v0, Lcom/uzmap/pkg/b/b/g$c;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/b/b/g$c$3;->a:Lcom/uzmap/pkg/b/b/g$c;

    iget-object v1, v1, Lcom/uzmap/pkg/b/b/g$c;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/b/b/g;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/uzmap/pkg/b/b/g$c$3;->a:Lcom/uzmap/pkg/b/b/g$c;

    invoke-virtual {p1}, Lcom/uzmap/pkg/b/b/g$c;->c()V

    return-void
.end method
