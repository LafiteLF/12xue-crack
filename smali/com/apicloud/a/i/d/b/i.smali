.class public Lcom/apicloud/a/i/d/b/i;
.super Landroid/graphics/drawable/StateListDrawable;


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/apicloud/a/i/d/b/i;->a:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public a(ILandroid/graphics/drawable/Drawable;)Lcom/apicloud/a/i/d/b/i;
    .locals 8

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Lcom/apicloud/a/i/d/b/i;

    invoke-direct {v2}, Lcom/apicloud/a/i/d/b/i;-><init>()V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-lt v4, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    if-ne v5, p1, :cond_1

    move-object v6, p2

    :cond_1
    const/4 v7, -0x1

    if-ne v5, v7, :cond_2

    new-array v5, v3, [I

    goto :goto_1

    :cond_2
    const/4 v7, 0x1

    new-array v7, v7, [I

    aput v5, v7, v3

    move-object v5, v7

    :goto_1
    invoke-virtual {v2, v5, v6}, Lcom/apicloud/a/i/d/b/i;->addState([ILandroid/graphics/drawable/Drawable;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method public addState([ILandroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_1

    return-void

    :cond_1
    aget v2, p1, v1

    iget-object v3, p0, Lcom/apicloud/a/i/d/b/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getStateDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/apicloud/a/i/d/b/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/Drawable;

    return-object p1
.end method
