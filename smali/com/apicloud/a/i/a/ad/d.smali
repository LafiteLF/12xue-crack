.class public Lcom/apicloud/a/i/a/ad/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/apicloud/a/i/a/ad/d;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Landroid/view/View;

.field public final b:Ljava/lang/String;

.field public c:I


# direct methods
.method constructor <init>(ILandroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/apicloud/a/i/a/ad/d;->c:I

    iput-object p2, p0, Lcom/apicloud/a/i/a/ad/d;->a:Landroid/view/View;

    iput-object p3, p0, Lcom/apicloud/a/i/a/ad/d;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/a/i/a/ad/d;)I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/a/ad/d;->c:I

    iget p1, p1, Lcom/apicloud/a/i/a/ad/d;->c:I

    if-ge v0, p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    if-le v0, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/apicloud/a/i/a/ad/d;

    invoke-virtual {p0, p1}, Lcom/apicloud/a/i/a/ad/d;->a(Lcom/apicloud/a/i/a/ad/d;)I

    move-result p1

    return p1
.end method
