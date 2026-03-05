.class Lcom/uzmap/pkg/uzcore/external/c$21;
.super Lcom/uzmap/pkg/uzcore/external/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzcore/external/c;->c(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic a:Landroid/app/AlertDialog;

.field private final synthetic b:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;

.field private final synthetic c:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Lcom/uzmap/pkg/uzcore/uzmodule/b/c;Landroid/widget/EditText;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->a:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;

    iput-object p3, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->c:Landroid/widget/EditText;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/uzcore/external/c$a;-><init>(Lcom/uzmap/pkg/uzcore/external/c$a;)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->a:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->b:Lcom/uzmap/pkg/uzcore/uzmodule/b/c;

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/c;->a(Ljava/lang/String;)I

    move-result p1

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/external/c$21;->c:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/external/c;->a(Lcom/uzmap/pkg/uzcore/uzmodule/b/c;ILjava/lang/String;)V

    return-void
.end method
