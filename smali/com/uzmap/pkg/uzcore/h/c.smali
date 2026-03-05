.class public Lcom/uzmap/pkg/uzcore/h/c;
.super Landroid/widget/LinearLayout;

# interfaces
.implements Lcom/uzmap/pkg/uzcore/h/p;


# static fields
.field public static final a:I

.field public static final b:I


# instance fields
.field private c:I

.field private d:Z

.field private e:Lcom/uzmap/pkg/uzcore/h/p$a;

.field private f:Lcom/uzmap/pkg/uzcore/h/p$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzcore/h/c;->a:I

    invoke-static {}, Lcom/uzmap/pkg/uzcore/external/d;->a()I

    move-result v0

    sput v0, Lcom/uzmap/pkg/uzcore/h/c;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/h/f;->a(Landroid/view/View;)I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/h/c;->c:I

    return-void
.end method

.method public static final a(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->d(I)I

    move-result p0

    return p0
.end method

.method public static final b(I)I
    .locals 0

    invoke-static {p0}, Lcom/uzmap/pkg/uzcore/z;->c(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(Lcom/uzmap/pkg/uzcore/h/p$a;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/c;->e:Lcom/uzmap/pkg/uzcore/h/p$a;

    return-void
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/h/p$b;)V
    .locals 0

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/h/c;->f:Lcom/uzmap/pkg/uzcore/h/p$b;

    return-void
.end method

.method public a(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 0

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/h/c;->d:Z

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/c;->a(Z)V

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/uzmap/pkg/uzcore/h/c;->d:Z

    return v0
.end method

.method public a(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/h/c;->f:Lcom/uzmap/pkg/uzcore/h/p$b;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/uzmap/pkg/uzcore/h/p$b;->a(ILandroid/view/View;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()I
    .locals 1

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/h/c;->c()I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    const/16 v0, 0x2d

    invoke-static {v0}, Lcom/uzmap/pkg/uzcore/h/c;->a(I)I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/h/c;->c:I

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sget v1, Lcom/uzmap/pkg/uzcore/h/c;->b:I

    if-ne v0, v1, :cond_0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/h/g;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/h/c;->a(Landroid/view/View;)Z

    return-void

    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/h/c;->e:Lcom/uzmap/pkg/uzcore/h/p$a;

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/uzmap/pkg/uzcore/h/p$a;->a(ILjava/lang/Object;)V

    :cond_1
    return-void
.end method
