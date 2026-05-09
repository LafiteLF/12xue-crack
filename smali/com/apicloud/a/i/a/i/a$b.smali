.class Lcom/apicloud/a/i/a/i/a$b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/i/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/a/i/a/i/a$b;)V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/a/i/a$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Landroid/view/View;)I
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/a/i/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p1

    invoke-static {p2}, Lcom/apicloud/a/i/a/i/b;->b(Landroid/view/View;)Lcom/apicloud/c/b/b;

    move-result-object p2

    invoke-interface {p1}, Lcom/apicloud/c/b/b;->y()I

    move-result p1

    invoke-interface {p2}, Lcom/apicloud/c/b/b;->y()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Landroid/view/View;

    check-cast p2, Landroid/view/View;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/i/a$b;->a(Landroid/view/View;Landroid/view/View;)I

    move-result p1

    return p1
.end method
