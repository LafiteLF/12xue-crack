.class Lcom/artifex/mupdf/PageView$2;
.super Landroid/view/View;
.source "PageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/PageView;->setPage(ILandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/PageView;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/PageView;Landroid/content/Context;)V
    .locals 0

    .line 191
    iput-object p1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 195
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 196
    iget-object v0, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    iget v0, v0, Lcom/artifex/mupdf/PageView;->mSourceScale:F

    invoke-virtual {p0}, Lcom/artifex/mupdf/PageView$2;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    iget-object v1, v1, Lcom/artifex/mupdf/PageView;->mSize:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    .line 197
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 199
    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$600(Lcom/artifex/mupdf/PageView;)Z

    move-result v1

    const/4 v8, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$700(Lcom/artifex/mupdf/PageView;)[Landroid/graphics/RectF;

    move-result-object v1

    if-eqz v1, :cond_0

    const v1, -0x7faaaa01

    .line 202
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$700(Lcom/artifex/mupdf/PageView;)[Landroid/graphics/RectF;

    move-result-object v9

    array-length v10, v9

    move v11, v8

    :goto_0
    if-ge v11, v10, :cond_0

    aget-object v1, v9, v11

    .line 204
    iget v2, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v1, v0

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$600(Lcom/artifex/mupdf/PageView;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$500(Lcom/artifex/mupdf/PageView;)[Lcom/artifex/mupdf/LinkInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$800(Lcom/artifex/mupdf/PageView;)Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, -0x7f003378

    .line 212
    invoke-virtual {v7, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 213
    iget-object v1, p0, Lcom/artifex/mupdf/PageView$2;->this$0:Lcom/artifex/mupdf/PageView;

    invoke-static {v1}, Lcom/artifex/mupdf/PageView;->access$500(Lcom/artifex/mupdf/PageView;)[Lcom/artifex/mupdf/LinkInfo;

    move-result-object v9

    array-length v10, v9

    :goto_1
    if-ge v8, v10, :cond_1

    aget-object v1, v9, v8

    .line 214
    iget v2, v1, Landroid/graphics/RectF;->left:F

    mul-float/2addr v2, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    mul-float/2addr v3, v0

    iget v4, v1, Landroid/graphics/RectF;->right:F

    mul-float/2addr v4, v0

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    mul-float v5, v1, v0

    move-object v1, p1

    move-object v6, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
