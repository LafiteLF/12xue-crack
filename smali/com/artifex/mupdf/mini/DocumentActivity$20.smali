.class Lcom/artifex/mupdf/mini/DocumentActivity$20;
.super Lcom/artifex/mupdf/mini/Worker$Task;
.source "DocumentActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/mini/DocumentActivity;->loadOutline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/mini/DocumentActivity;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/mini/DocumentActivity;)V
    .locals 0

    .line 506
    iput-object p1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    invoke-direct {p0}, Lcom/artifex/mupdf/mini/Worker$Task;-><init>()V

    return-void
.end method

.method private flattenOutline([Lcom/artifex/mupdf/fitz/Outline;Ljava/lang/String;)V
    .locals 7

    .line 508
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    .line 509
    iget-object v3, v2, Lcom/artifex/mupdf/fitz/Outline;->title:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 510
    iget-object v3, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v3, v3, Lcom/artifex/mupdf/mini/DocumentActivity;->flatOutline:Ljava/util/ArrayList;

    new-instance v4, Lcom/artifex/mupdf/mini/OutlineActivity$Item;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v2, Lcom/artifex/mupdf/fitz/Outline;->title:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget v6, v2, Lcom/artifex/mupdf/fitz/Outline;->page:I

    invoke-direct {v4, v5, v6}, Lcom/artifex/mupdf/mini/OutlineActivity$Item;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 511
    :cond_0
    iget-object v3, v2, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    if-eqz v3, :cond_1

    .line 512
    iget-object v2, v2, Lcom/artifex/mupdf/fitz/Outline;->down:[Lcom/artifex/mupdf/fitz/Outline;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/artifex/mupdf/mini/DocumentActivity$20;->flattenOutline([Lcom/artifex/mupdf/fitz/Outline;Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 526
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->flatOutline:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 527
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->outlineButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public work()V
    .locals 3

    const-string v0, "MuPDF"

    const-string v1, "load outline"

    .line 516
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    iget-object v0, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->doc:Lcom/artifex/mupdf/fitz/Document;

    invoke-virtual {v0}, Lcom/artifex/mupdf/fitz/Document;->loadOutline()[Lcom/artifex/mupdf/fitz/Outline;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 519
    iget-object v1, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/artifex/mupdf/mini/DocumentActivity;->flatOutline:Ljava/util/ArrayList;

    const-string v1, ""

    .line 520
    invoke-direct {p0, v0, v1}, Lcom/artifex/mupdf/mini/DocumentActivity$20;->flattenOutline([Lcom/artifex/mupdf/fitz/Outline;Ljava/lang/String;)V

    goto :goto_0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/artifex/mupdf/mini/DocumentActivity$20;->this$0:Lcom/artifex/mupdf/mini/DocumentActivity;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/artifex/mupdf/mini/DocumentActivity;->flatOutline:Ljava/util/ArrayList;

    :goto_0
    return-void
.end method
