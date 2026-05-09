.class Lcom/apicloud/pdfReader/PdfReader$3;
.super Ljava/lang/Object;
.source "PdfReader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/PdfReader;->init(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/pdfReader/PdfReader;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/PdfReader;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 249
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-virtual {v0}, Lcom/apicloud/pdfReader/PdfReader;->context()Landroid/content/Context;

    move-result-object v1

    sget v2, Lglide/com/pdfreader/R$layout;->mupdf_view_layout:I

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/apicloud/pdfReader/PdfReader;->access$102(Lcom/apicloud/pdfReader/PdfReader;Landroid/view/View;)Landroid/view/View;

    .line 251
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v1}, Lcom/apicloud/pdfReader/PdfReader;->access$200(Lcom/apicloud/pdfReader/PdfReader;)I

    move-result v1

    iget-object v2, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v2}, Lcom/apicloud/pdfReader/PdfReader;->access$300(Lcom/apicloud/pdfReader/PdfReader;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 252
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v1}, Lcom/apicloud/pdfReader/PdfReader;->access$400(Lcom/apicloud/pdfReader/PdfReader;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 253
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v1}, Lcom/apicloud/pdfReader/PdfReader;->access$500(Lcom/apicloud/pdfReader/PdfReader;)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 254
    iget-object v1, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v1}, Lcom/apicloud/pdfReader/PdfReader;->access$100(Lcom/apicloud/pdfReader/PdfReader;)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v3}, Lcom/apicloud/pdfReader/PdfReader;->access$600(Lcom/apicloud/pdfReader/PdfReader;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v4}, Lcom/apicloud/pdfReader/PdfReader;->access$700(Lcom/apicloud/pdfReader/PdfReader;)Z

    move-result v4

    invoke-virtual {v1, v2, v0, v3, v4}, Lcom/apicloud/pdfReader/PdfReader;->insertViewToCurWindow(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;Ljava/lang/String;Z)V

    .line 256
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    invoke-static {v0}, Lcom/apicloud/pdfReader/PdfReader;->access$100(Lcom/apicloud/pdfReader/PdfReader;)Landroid/view/View;

    move-result-object v1

    sget v2, Lcom/artifex/mupdf/mini/R$id;->page_view:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/artifex/mupdf/mini/PageView;

    iput-object v1, v0, Lcom/apicloud/pdfReader/PdfReader;->pageView:Lcom/artifex/mupdf/mini/PageView;

    .line 258
    iget-object v0, p0, Lcom/apicloud/pdfReader/PdfReader$3;->this$0:Lcom/apicloud/pdfReader/PdfReader;

    iget-object v0, v0, Lcom/apicloud/pdfReader/PdfReader;->pageView:Lcom/artifex/mupdf/mini/PageView;

    new-instance v1, Lcom/apicloud/pdfReader/PdfReader$3$1;

    invoke-direct {v1, p0}, Lcom/apicloud/pdfReader/PdfReader$3$1;-><init>(Lcom/apicloud/pdfReader/PdfReader$3;)V

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/mini/PageView;->setOnPageViewListener(Lcom/artifex/mupdf/mini/PageView$OnPageViewListener;)V

    return-void
.end method
