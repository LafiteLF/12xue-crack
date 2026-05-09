.class public Lcom/apicloud/a/i/a/u/a;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/apicloud/a/g/e/f;

.field private b:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const v0, 0x1090008

    invoke-direct {p0, p1, v0}, Lcom/apicloud/a/i/a/u/a;-><init>(Landroid/content/Context;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    const p1, 0x1090009

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/u/a;->setDropDownViewResource(I)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/g/e/f;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a;->a:Lcom/apicloud/a/g/e/f;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a;->notifyDataSetChanged()V

    return-void
.end method

.method public a(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/apicloud/a/i/a/u/a;->b:Ljava/lang/Integer;

    invoke-virtual {p0}, Lcom/apicloud/a/i/a/u/a;->notifyDataSetChanged()V

    return-void
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a;->b:Ljava/lang/Integer;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-static {p1, p2, p2}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;II)V

    :cond_0
    iget-object p2, p0, Lcom/apicloud/a/i/a/u/a;->a:Lcom/apicloud/a/g/e/f;

    if-eqz p2, :cond_1

    invoke-static {p1, p2}, Lcom/apicloud/a/g/i;->a(Landroid/widget/TextView;Lcom/apicloud/a/g/e/f;)V

    :cond_1
    return-object p1
.end method
