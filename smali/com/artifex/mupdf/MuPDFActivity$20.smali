.class Lcom/artifex/mupdf/MuPDFActivity$20;
.super Landroid/os/AsyncTask;
.source "MuPDFActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/artifex/mupdf/MuPDFActivity;->search(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        "Lcom/artifex/mupdf/SearchTaskResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/artifex/mupdf/MuPDFActivity;

.field final synthetic val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;


# direct methods
.method constructor <init>(Lcom/artifex/mupdf/MuPDFActivity;Lcom/artifex/mupdf/ProgressDialogX;)V
    .locals 0

    .line 778
    iput-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    iput-object p2, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Integer;)Lcom/artifex/mupdf/SearchTaskResult;
    .locals 4

    .line 782
    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/artifex/mupdf/ReaderView;->getDisplayedViewIndex()I

    move-result v0

    goto :goto_1

    .line 785
    :cond_0
    invoke-static {}, Lcom/artifex/mupdf/SearchTaskResult;->get()Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object v0

    iget v0, v0, Lcom/artifex/mupdf/SearchTaskResult;->pageNumber:I

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    :goto_0
    add-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    .line 787
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v2}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v2

    invoke-virtual {v2}, Lcom/artifex/mupdf/MuPDFCore;->countPages()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/artifex/mupdf/MuPDFActivity$20;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Integer;

    .line 788
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {p0, v2}, Lcom/artifex/mupdf/MuPDFActivity$20;->publishProgress([Ljava/lang/Object;)V

    .line 789
    iget-object v2, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v2}, Lcom/artifex/mupdf/MuPDFActivity;->access$100(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/MuPDFCore;

    move-result-object v2

    iget-object v3, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v3}, Lcom/artifex/mupdf/MuPDFActivity;->access$900(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/artifex/mupdf/MuPDFCore;->searchPage(ILjava/lang/String;)[Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 791
    array-length v3, v2

    if-lez v3, :cond_1

    .line 792
    new-instance p1, Lcom/artifex/mupdf/SearchTaskResult;

    iget-object v1, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v1}, Lcom/artifex/mupdf/MuPDFActivity;->access$900(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1, v0, v2}, Lcom/artifex/mupdf/SearchTaskResult;-><init>(Ljava/lang/String;I[Landroid/graphics/RectF;)V

    return-object p1

    .line 794
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 778
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity$20;->doInBackground([Ljava/lang/Integer;)Lcom/artifex/mupdf/SearchTaskResult;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    .line 822
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 823
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    invoke-virtual {v0}, Lcom/artifex/mupdf/ProgressDialogX;->cancel()V

    return-void
.end method

.method protected onPostExecute(Lcom/artifex/mupdf/SearchTaskResult;)V
    .locals 3

    .line 801
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    invoke-virtual {v0}, Lcom/artifex/mupdf/ProgressDialogX;->cancel()V

    if-eqz p1, :cond_0

    .line 804
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object v0

    iget v1, p1, Lcom/artifex/mupdf/SearchTaskResult;->pageNumber:I

    invoke-virtual {v0, v1}, Lcom/artifex/mupdf/ReaderView;->setDisplayedViewIndex(I)V

    .line 805
    invoke-static {p1}, Lcom/artifex/mupdf/SearchTaskResult;->set(Lcom/artifex/mupdf/SearchTaskResult;)V

    .line 808
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$300(Lcom/artifex/mupdf/MuPDFActivity;)Lcom/artifex/mupdf/ReaderView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/artifex/mupdf/ReaderView;->resetupChildren()V

    goto :goto_0

    :cond_0
    const-string p1, "text_not_found"

    .line 811
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResStringID(Ljava/lang/String;)I

    move-result p1

    .line 812
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$1100(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 813
    iget-object p1, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {p1}, Lcom/artifex/mupdf/MuPDFActivity;->access$1100(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 814
    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    const-string v2, "Dismiss"

    invoke-virtual {p1, v0, v2, v1}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 816
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 778
    check-cast p1, Lcom/artifex/mupdf/SearchTaskResult;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity$20;->onPostExecute(Lcom/artifex/mupdf/SearchTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 834
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 835
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->this$0:Lcom/artifex/mupdf/MuPDFActivity;

    invoke-static {v0}, Lcom/artifex/mupdf/MuPDFActivity;->access$1200(Lcom/artifex/mupdf/MuPDFActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/artifex/mupdf/MuPDFActivity$20$1;

    invoke-direct {v1, p0}, Lcom/artifex/mupdf/MuPDFActivity$20$1;-><init>(Lcom/artifex/mupdf/MuPDFActivity$20;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 2

    .line 828
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 829
    iget-object v0, p0, Lcom/artifex/mupdf/MuPDFActivity$20;->val$progressDialog:Lcom/artifex/mupdf/ProgressDialogX;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/artifex/mupdf/ProgressDialogX;->setProgress(I)V

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 778
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/artifex/mupdf/MuPDFActivity$20;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
