.class public final Lcom/uzmap/pkg/uzcore/ag;
.super Ljava/lang/Object;


# static fields
.field private static e:I = 0x1


# instance fields
.field public a:I

.field public b:I

.field public c:I

.field public d:I

.field private f:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ag;->f:F

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/StringBuilder;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    const/16 v0, 0x5b

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x5d

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(F)V
    .locals 0

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ag;->f:F

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result v0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result p1

    iput p1, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    :cond_0
    return-void
.end method

.method public final a()Z
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    iput v0, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    check-cast p1, Lcom/uzmap/pkg/uzcore/ag;

    iget v2, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    iget v3, p1, Lcom/uzmap/pkg/uzcore/ag;->a:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    iget v3, p1, Lcom/uzmap/pkg/uzcore/ag;->b:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    iget v3, p1, Lcom/uzmap/pkg/uzcore/ag;->c:I

    if-ne v2, v3, :cond_2

    iget v2, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    iget p1, p1, Lcom/uzmap/pkg/uzcore/ag;->d:I

    if-ne v2, p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/uzmap/pkg/uzcore/ag;->a:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->b:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->c:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/uzmap/pkg/uzcore/ag;->d:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/ag;->a(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
