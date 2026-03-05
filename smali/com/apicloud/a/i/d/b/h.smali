.class public Lcom/apicloud/a/i/d/b/h;
.super Landroid/graphics/drawable/ColorDrawable;


# instance fields
.field public a:I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/apicloud/a/i/d/b/h;->a:I

    iput v0, p0, Lcom/apicloud/a/i/d/b/h;->b:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/apicloud/a/i/d/b/h;->a:I

    iput p1, p0, Lcom/apicloud/a/i/d/b/h;->b:I

    return-void
.end method


# virtual methods
.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/h;->b:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget v0, p0, Lcom/apicloud/a/i/d/b/h;->a:I

    return v0
.end method
