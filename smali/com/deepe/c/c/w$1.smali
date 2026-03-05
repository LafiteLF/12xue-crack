.class Lcom/deepe/c/c/w$1;
.super Lcom/deepe/c/i/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/c/w;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/deepe/c/i/l<",
        "Ljava/lang/String;",
        "Lcom/deepe/c/c/v;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/deepe/c/i/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/deepe/c/c/v;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/c/w$1;->a(Ljava/lang/String;Lcom/deepe/c/c/v;)I

    move-result p1

    return p1
.end method

.method protected a(Ljava/lang/String;Lcom/deepe/c/c/v;)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected bridge synthetic a(ZLjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/String;

    check-cast p3, Lcom/deepe/c/c/v;

    check-cast p4, Lcom/deepe/c/c/v;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/deepe/c/c/w$1;->a(ZLjava/lang/String;Lcom/deepe/c/c/v;Lcom/deepe/c/c/v;)V

    return-void
.end method

.method protected a(ZLjava/lang/String;Lcom/deepe/c/c/v;Lcom/deepe/c/c/v;)V
    .locals 0

    return-void
.end method
