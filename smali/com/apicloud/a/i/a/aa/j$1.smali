.class Lcom/apicloud/a/i/a/aa/j$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/a/i/a/aa/j;->a(Lcom/apicloud/a/i/a/aa/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/apicloud/a/i/a/aa/j;


# direct methods
.method constructor <init>(Lcom/apicloud/a/i/a/aa/j;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/aa/j$1;->a:Lcom/apicloud/a/i/a/aa/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/j$1;->a:Lcom/apicloud/a/i/a/aa/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/aa/j;->a(Lcom/apicloud/a/i/a/aa/j;)Lcom/apicloud/a/i/a/ac/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ac/c;->a(Landroid/view/View;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/apicloud/a/i/a/aa/j$1;->a:Lcom/apicloud/a/i/a/aa/j;

    invoke-static {p1}, Lcom/apicloud/a/i/a/aa/j;->a(Lcom/apicloud/a/i/a/aa/j;)Lcom/apicloud/a/i/a/ac/c;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/apicloud/a/i/a/ac/c;->b(Landroid/view/View;)V

    return-void
.end method
