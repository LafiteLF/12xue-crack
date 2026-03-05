.class Lcom/apicloud/a/i/a/ai/a/f$1;
.super Landroid/util/Property;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/a/i/a/ai/a/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Lcom/apicloud/a/i/a/ai/a/f;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/ai/a/f;)Ljava/lang/Float;
    .locals 0

    invoke-static {p1}, Lcom/apicloud/a/i/a/ai/a/f;->a(Lcom/apicloud/a/i/a/ai/a/f;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/a/i/a/ai/a/f;Ljava/lang/Float;)V
    .locals 0

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {p1, p2}, Lcom/apicloud/a/i/a/ai/a/f;->a(Lcom/apicloud/a/i/a/ai/a/f;F)V

    return-void
.end method

.method public synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/a/f;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ai/a/f$1;->a(Lcom/apicloud/a/i/a/ai/a/f;)Ljava/lang/Float;

    move-result-object p1

    return-object p1
.end method

.method public synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ai/a/f;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/apicloud/a/i/a/ai/a/f$1;->a(Lcom/apicloud/a/i/a/ai/a/f;Ljava/lang/Float;)V

    return-void
.end method
