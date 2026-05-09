.class Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;
.super Ljava/lang/Object;
.source "RenderingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/barteksc/pdfviewer/RenderingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RenderingTask"
.end annotation


# instance fields
.field annotationRendering:Z

.field bestQuality:Z

.field bounds:Landroid/graphics/RectF;

.field cacheOrder:I

.field height:F

.field page:I

.field final synthetic this$0:Lcom/apicloud/barteksc/pdfviewer/RenderingHandler;

.field thumbnail:Z

.field width:F


# direct methods
.method constructor <init>(Lcom/apicloud/barteksc/pdfviewer/RenderingHandler;FFLandroid/graphics/RectF;IZIZZ)V
    .locals 0

    .line 149
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->this$0:Lcom/apicloud/barteksc/pdfviewer/RenderingHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    iput p5, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->page:I

    .line 151
    iput p2, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->width:F

    .line 152
    iput p3, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->height:F

    .line 153
    iput-object p4, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bounds:Landroid/graphics/RectF;

    .line 154
    iput-boolean p6, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->thumbnail:Z

    .line 155
    iput p7, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->cacheOrder:I

    .line 156
    iput-boolean p8, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->bestQuality:Z

    .line 157
    iput-boolean p9, p0, Lcom/apicloud/barteksc/pdfviewer/RenderingHandler$RenderingTask;->annotationRendering:Z

    return-void
.end method
