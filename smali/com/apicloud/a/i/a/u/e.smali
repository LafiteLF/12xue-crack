.class public Lcom/apicloud/a/i/a/u/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# instance fields
.field private final a:Lcom/apicloud/a/d;

.field private b:Z


# direct methods
.method public constructor <init>(Lcom/apicloud/a/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/apicloud/a/i/a/u/e;->b:Z

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/e;->a:Lcom/apicloud/a/d;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-boolean p2, p0, Lcom/apicloud/a/i/a/u/e;->b:Z

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/apicloud/a/i/a/u/e;->b:Z

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/e;->a:Lcom/apicloud/a/d;

    invoke-interface {p2}, Lcom/apicloud/a/d;->b()Lcom/apicloud/a/e/f;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/apicloud/a/e/f;->c(Ljava/lang/Object;)Lcom/apicloud/a/c/l;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    new-instance p2, Lcom/apicloud/a/i/c/d;

    invoke-direct {p2}, Lcom/apicloud/a/i/c/d;-><init>()V

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const-string p4, "value"

    invoke-virtual {p2, p4, p3}, Lcom/apicloud/a/i/c/d;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p3, "change"

    invoke-virtual {p1, p3, p2}, Lcom/apicloud/a/c/l;->a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
