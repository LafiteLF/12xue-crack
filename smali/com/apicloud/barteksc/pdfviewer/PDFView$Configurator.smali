.class public Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
.super Ljava/lang/Object;
.source "PDFView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/barteksc/pdfviewer/PDFView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Configurator"
.end annotation


# instance fields
.field private annotationRendering:Z

.field private antialiasing:Z

.field private autoSpacing:Z

.field private defaultPage:I

.field private final documentSource:Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;

.field private enableDoubletap:Z

.field private enableSwipe:Z

.field private linkHandler:Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;

.field private nightMode:Z

.field private onDrawAllListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

.field private onDrawListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

.field private onErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;

.field private onLoadCompleteListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;

.field private onLongPressListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLongPressListener;

.field private onPageChangeListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageChangeListener;

.field private onPageErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageErrorListener;

.field private onPageScrollListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageScrollListener;

.field private onRenderListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnRenderListener;

.field private onTapListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnTapListener;

.field private pageFitPolicy:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

.field private pageFling:Z

.field private pageNumbers:[I

.field private pageSnap:Z

.field private password:Ljava/lang/String;

.field private scrollHandle:Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;

.field private spacing:I

.field private swipeHorizontal:Z

.field final synthetic this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;


# direct methods
.method private constructor <init>(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;)V
    .locals 3

    .line 1340
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 1288
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    const/4 v0, 0x1

    .line 1290
    iput-boolean v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    .line 1292
    iput-boolean v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    .line 1314
    new-instance v1, Lcom/apicloud/barteksc/pdfviewer/link/DefaultLinkHandler;

    iget-object v2, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-direct {v1, v2}, Lcom/apicloud/barteksc/pdfviewer/link/DefaultLinkHandler;-><init>(Lcom/apicloud/barteksc/pdfviewer/PDFView;)V

    iput-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;

    const/4 v1, 0x0

    .line 1316
    iput v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    .line 1318
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    .line 1320
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    .line 1322
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    .line 1324
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;

    .line 1326
    iput-boolean v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    .line 1328
    iput v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    .line 1330
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    .line 1332
    sget-object p1, Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;->WIDTH:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    .line 1334
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    .line 1336
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    .line 1338
    iput-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    .line 1341
    iput-object p2, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;

    return-void
.end method

.method synthetic constructor <init>(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;Lcom/apicloud/barteksc/pdfviewer/PDFView$1;)V
    .locals 0

    .line 1284
    invoke-direct {p0, p1, p2}, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;-><init>(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;)V

    return-void
.end method


# virtual methods
.method public autoSpacing(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1450
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    return-object p0
.end method

.method public defaultPage(I)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1420
    iput p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    return-object p0
.end method

.method public enableAnnotationRendering(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1360
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    return-object p0
.end method

.method public enableAntialiasing(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1440
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    return-object p0
.end method

.method public enableDoubletap(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1355
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    return-object p0
.end method

.method public enableSwipe(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1350
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    return-object p0
.end method

.method public linkHandler(Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1415
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;

    return-object p0
.end method

.method public load()V
    .locals 4

    .line 1475
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-static {v0}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$100(Lcom/apicloud/barteksc/pdfviewer/PDFView;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1476
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-static {v0, p0}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$202(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;

    return-void

    .line 1479
    :cond_0
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    invoke-virtual {v0}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->recycle()V

    .line 1480
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnLoadComplete(Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;)V

    .line 1481
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnError(Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;)V

    .line 1482
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnDraw(Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1483
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnDrawAll(Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;)V

    .line 1484
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageChangeListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnPageChange(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageChangeListener;)V

    .line 1485
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageScrollListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnPageScroll(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageScrollListener;)V

    .line 1486
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnRenderListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnRender(Lcom/apicloud/barteksc/pdfviewer/listener/OnRenderListener;)V

    .line 1487
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnTapListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnTap(Lcom/apicloud/barteksc/pdfviewer/listener/OnTapListener;)V

    .line 1488
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLongPressListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnLongPress(Lcom/apicloud/barteksc/pdfviewer/listener/OnLongPressListener;)V

    .line 1489
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageErrorListener;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setOnPageError(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageErrorListener;)V

    .line 1490
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v0, v0, Lcom/apicloud/barteksc/pdfviewer/PDFView;->callbacks:Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->linkHandler:Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/listener/Callbacks;->setLinkHandler(Lcom/apicloud/barteksc/pdfviewer/link/LinkHandler;)V

    .line 1491
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableSwipe:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->setSwipeEnabled(Z)V

    .line 1492
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->setNightMode(Z)V

    .line 1493
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->enableDoubletap:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->enableDoubletap(Z)V

    .line 1494
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->defaultPage:I

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$300(Lcom/apicloud/barteksc/pdfviewer/PDFView;I)V

    .line 1495
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$400(Lcom/apicloud/barteksc/pdfviewer/PDFView;Z)V

    .line 1496
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->annotationRendering:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->enableAnnotationRendering(Z)V

    .line 1497
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$500(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;)V

    .line 1498
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->antialiasing:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->enableAntialiasing(Z)V

    .line 1499
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$600(Lcom/apicloud/barteksc/pdfviewer/PDFView;I)V

    .line 1500
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->autoSpacing:Z

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$700(Lcom/apicloud/barteksc/pdfviewer/PDFView;Z)V

    .line 1501
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    invoke-static {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$800(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;)V

    .line 1502
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->setPageSnap(Z)V

    .line 1503
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-boolean v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    invoke-virtual {v0, v1}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->setPageFling(Z)V

    .line 1505
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    if-eqz v0, :cond_1

    .line 1506
    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v2, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;

    iget-object v3, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$900(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;[I)V

    goto :goto_0

    .line 1508
    :cond_1
    iget-object v0, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->this$0:Lcom/apicloud/barteksc/pdfviewer/PDFView;

    iget-object v1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->documentSource:Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;

    iget-object v2, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/apicloud/barteksc/pdfviewer/PDFView;->access$1000(Lcom/apicloud/barteksc/pdfviewer/PDFView;Lcom/apicloud/barteksc/pdfviewer/source/DocumentSource;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public nightMode(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1470
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->nightMode:Z

    return-object p0
.end method

.method public onDraw(Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1365
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onDrawListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onDrawAll(Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1370
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onDrawAllListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnDrawListener;

    return-object p0
.end method

.method public onError(Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1385
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;

    return-object p0
.end method

.method public onLoad(Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1375
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onLoadCompleteListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;

    return-object p0
.end method

.method public onLongPress(Lcom/apicloud/barteksc/pdfviewer/listener/OnLongPressListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1410
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onLongPressListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnLongPressListener;

    return-object p0
.end method

.method public onPageChange(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageChangeListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1395
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageChangeListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageChangeListener;

    return-object p0
.end method

.method public onPageError(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageErrorListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageErrorListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageErrorListener;

    return-object p0
.end method

.method public onPageScroll(Lcom/apicloud/barteksc/pdfviewer/listener/OnPageScrollListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1380
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onPageScrollListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnPageScrollListener;

    return-object p0
.end method

.method public onRender(Lcom/apicloud/barteksc/pdfviewer/listener/OnRenderListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1400
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onRenderListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnRenderListener;

    return-object p0
.end method

.method public onTap(Lcom/apicloud/barteksc/pdfviewer/listener/OnTapListener;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1405
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->onTapListener:Lcom/apicloud/barteksc/pdfviewer/listener/OnTapListener;

    return-object p0
.end method

.method public pageFitPolicy(Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1455
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFitPolicy:Lcom/apicloud/barteksc/pdfviewer/util/FitPolicy;

    return-object p0
.end method

.method public pageFling(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1465
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageFling:Z

    return-object p0
.end method

.method public pageSnap(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1460
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageSnap:Z

    return-object p0
.end method

.method public varargs pages([I)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1345
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->pageNumbers:[I

    return-object p0
.end method

.method public password(Ljava/lang/String;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1430
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->password:Ljava/lang/String;

    return-object p0
.end method

.method public scrollHandle(Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1435
    iput-object p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->scrollHandle:Lcom/apicloud/barteksc/pdfviewer/scroll/ScrollHandle;

    return-object p0
.end method

.method public spacing(I)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1445
    iput p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->spacing:I

    return-object p0
.end method

.method public swipeHorizontal(Z)Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;
    .locals 0

    .line 1425
    iput-boolean p1, p0, Lcom/apicloud/barteksc/pdfviewer/PDFView$Configurator;->swipeHorizontal:Z

    return-object p0
.end method
