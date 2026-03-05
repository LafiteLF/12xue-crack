.class Lcom/apicloud/a/i/a/w/c$2;
.super Lcom/apicloud/a/b/e$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/w/c;->b(Landroid/view/ViewGroup;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/b/e$a<",
        "Landroid/widget/RadioButton;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/w/c;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/w/c;Ljava/lang/Class;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/w/c$2;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-direct {p0, p2}, Lcom/apicloud/a/b/e$a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/RadioButton;)V
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/a/w/c$2;->a:Lcom/apicloud/a/i/a/w/c;

    invoke-static {v0, p1}, Lcom/apicloud/a/i/a/w/c;->a(Lcom/apicloud/a/i/a/w/c;Landroid/widget/RadioButton;)V

    return-void
.end method

.method public synthetic b(Landroid/view/View;)V
    .locals 0

    check-cast p1, Landroid/widget/RadioButton;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/w/c$2;->a(Landroid/widget/RadioButton;)V

    return-void
.end method
