.class Lcom/deepe/c/b/d/b$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/c/b/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/deepe/c/b/d/b$b;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/c/b/d/b$b;Lcom/deepe/c/b/d/b$b;)I
    .locals 0

    iget p1, p1, Lcom/deepe/c/b/d/b$b;->b:I

    iget p2, p2, Lcom/deepe/c/b/d/b$b;->b:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/deepe/c/b/d/b$b;

    check-cast p2, Lcom/deepe/c/b/d/b$b;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/c/b/d/b$1;->a(Lcom/deepe/c/b/d/b$b;Lcom/deepe/c/b/d/b$b;)I

    move-result p1

    return p1
.end method
