.class Lcom/apicloud/a/i/d/a/i;
.super Lcom/apicloud/a/i/d/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/a/i/d/a/f<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/a/i/d/a/f;-><init>()V

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Float;Ljava/lang/Float;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/apicloud/a/i/d/a/i;->a(FF)Z

    move-result p1

    return p1
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Float;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/d/a/i;->a(Ljava/lang/Float;Ljava/lang/Float;)Z

    move-result p1

    return p1
.end method
