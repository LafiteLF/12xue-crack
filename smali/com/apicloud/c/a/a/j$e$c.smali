.class public Lcom/apicloud/c/a/a/j$e$c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/c/a/a/j$e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/apicloud/c/a/a/j$w;)Lcom/apicloud/c/a/a/j$e$c;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/apicloud/c/a/a/j$e$c;->a(Lcom/apicloud/c/a/a/j$w;I)Lcom/apicloud/c/a/a/j$e$c;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/apicloud/c/a/a/j$w;I)Lcom/apicloud/c/a/a/j$e$c;
    .locals 0

    iget-object p1, p1, Lcom/apicloud/c/a/a/j$w;->c:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p2

    iput p2, p0, Lcom/apicloud/c/a/a/j$e$c;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    iput p2, p0, Lcom/apicloud/c/a/a/j$e$c;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p2

    iput p2, p0, Lcom/apicloud/c/a/a/j$e$c;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/apicloud/c/a/a/j$e$c;->d:I

    return-object p0
.end method
