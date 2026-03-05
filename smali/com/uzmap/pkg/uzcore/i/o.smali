.class public Lcom/uzmap/pkg/uzcore/i/o;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:I

.field public c:I

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/i/o;->a:Ljava/lang/String;

    return-void
.end method

.method public static a(Lcom/uzmap/pkg/uzcore/ah;Lcom/uzmap/pkg/uzcore/ah;Landroid/view/ViewGroup;I)Lcom/uzmap/pkg/uzcore/ah;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p3, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x42

    const/4 p3, 0x5

    invoke-interface {p0, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result v4

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result p3

    if-ge v4, p3, :cond_1

    goto :goto_0

    :pswitch_1
    const/16 v1, 0x11

    const/4 p3, 0x3

    invoke-interface {p0, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result v4

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result p3

    if-le v4, p3, :cond_1

    goto :goto_0

    :pswitch_2
    const/16 v1, 0x82

    const/16 p3, 0x50

    invoke-interface {p0, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result v4

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result p3

    if-ge v4, p3, :cond_1

    goto :goto_0

    :pswitch_3
    const/16 v1, 0x21

    const/16 p3, 0x30

    invoke-interface {p0, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result v4

    invoke-interface {p1, p3}, Lcom/uzmap/pkg/uzcore/ah;->c(I)I

    move-result p3

    if-le v4, p3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    move v3, v2

    :goto_1
    move-object p3, p0

    check-cast p3, Landroid/view/View;

    invoke-virtual {p2, p3, v1}, Landroid/view/ViewGroup;->focusSearch(Landroid/view/View;I)Landroid/view/View;

    move-result-object p3

    if-eqz p3, :cond_2

    instance-of v2, p3, Lcom/uzmap/pkg/uzcore/ah;

    if-eqz v2, :cond_2

    check-cast p3, Lcom/uzmap/pkg/uzcore/ah;

    invoke-interface {p3}, Lcom/uzmap/pkg/uzcore/ah;->requestFocus()Z

    return-object p3

    :cond_2
    if-eq p1, p0, :cond_3

    if-eqz v3, :cond_4

    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/ah;->requestFocus()Z

    return-object p1

    :cond_3
    invoke-interface {p1}, Lcom/uzmap/pkg/uzcore/ah;->A()Lcom/uzmap/pkg/uzcore/i/o;

    move-result-object p0

    if-eqz p0, :cond_4

    new-instance p1, Landroid/graphics/Rect;

    iget p3, p0, Lcom/uzmap/pkg/uzcore/i/o;->b:I

    iget v2, p0, Lcom/uzmap/pkg/uzcore/i/o;->c:I

    iget v3, p0, Lcom/uzmap/pkg/uzcore/i/o;->d:I

    iget p0, p0, Lcom/uzmap/pkg/uzcore/i/o;->e:I

    invoke-direct {p1, p3, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {}, Landroid/view/FocusFinder;->getInstance()Landroid/view/FocusFinder;

    move-result-object p0

    invoke-virtual {p0, p2, p1, v1}, Landroid/view/FocusFinder;->findNextFocusFromRect(Landroid/view/ViewGroup;Landroid/graphics/Rect;I)Landroid/view/View;

    move-result-object p0

    if-eqz p0, :cond_4

    instance-of p1, p0, Lcom/uzmap/pkg/uzcore/ah;

    if-eqz p1, :cond_4

    check-cast p0, Lcom/uzmap/pkg/uzcore/ah;

    invoke-interface {p0}, Lcom/uzmap/pkg/uzcore/ah;->requestFocus()Z

    return-object p0

    :cond_4
    return-object v0

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
