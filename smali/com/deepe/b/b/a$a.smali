.class Lcom/deepe/b/b/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/deepe/b/b/c;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/deepe/b/b/a$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/deepe/b/b/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/deepe/b/b/c;Lcom/deepe/b/b/c;)I
    .locals 0

    iget p1, p1, Lcom/deepe/b/b/c;->a:I

    iget p2, p2, Lcom/deepe/b/b/c;->a:I

    sub-int/2addr p1, p2

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/deepe/b/b/c;

    check-cast p2, Lcom/deepe/b/b/c;

    invoke-virtual {p0, p1, p2}, Lcom/deepe/b/b/a$a;->a(Lcom/deepe/b/b/c;Lcom/deepe/b/b/c;)I

    move-result p1

    return p1
.end method
