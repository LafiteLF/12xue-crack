.class Lcom/apicloud/a/i/a/i/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/i/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/TouchDelegate;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/i/f$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/f$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/TouchDelegate;Landroid/view/TouchDelegate;)I
    .locals 1

    instance-of v0, p1, Lcom/apicloud/a/i/a/i/e;

    if-eqz v0, :cond_0

    instance-of v0, p2, Lcom/apicloud/a/i/a/i/e;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/apicloud/a/i/a/i/e;

    invoke-virtual {p1}, Lcom/apicloud/a/i/a/i/e;->b()I

    move-result p1

    check-cast p2, Lcom/apicloud/a/i/a/i/e;

    invoke-virtual {p2}, Lcom/apicloud/a/i/a/i/e;->b()I

    move-result p2

    sub-int/2addr p2, p1

    return p2

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/TouchDelegate;

    check-cast p2, Landroid/view/TouchDelegate;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/i/f$a;->a(Landroid/view/TouchDelegate;Landroid/view/TouchDelegate;)I

    move-result p1

    return p1
.end method
