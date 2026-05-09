.class Lcom/apicloud/drawingboard/DrawView$DrawPath;
.super Ljava/lang/Object;
.source "DrawView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/drawingboard/DrawView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DrawPath"
.end annotation


# instance fields
.field color:I

.field path:Landroid/graphics/Path;

.field final synthetic this$0:Lcom/apicloud/drawingboard/DrawView;

.field width:I


# direct methods
.method public constructor <init>(Lcom/apicloud/drawingboard/DrawView;Landroid/graphics/Path;II)V
    .locals 0

    .line 261
    iput-object p1, p0, Lcom/apicloud/drawingboard/DrawView$DrawPath;->this$0:Lcom/apicloud/drawingboard/DrawView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 262
    iput-object p2, p0, Lcom/apicloud/drawingboard/DrawView$DrawPath;->path:Landroid/graphics/Path;

    .line 263
    iput p3, p0, Lcom/apicloud/drawingboard/DrawView$DrawPath;->color:I

    .line 264
    iput p4, p0, Lcom/apicloud/drawingboard/DrawView$DrawPath;->width:I

    return-void
.end method
