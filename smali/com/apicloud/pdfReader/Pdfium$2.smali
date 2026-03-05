.class Lcom/apicloud/pdfReader/Pdfium$2;
.super Ljava/lang/Object;
.source "Pdfium.java"

# interfaces
.implements Lcom/apicloud/barteksc/pdfviewer/listener/OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/pdfReader/Pdfium;->load(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/pdfReader/Pdfium;

.field final synthetic val$showLoading:Z

.field final synthetic val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/Pdfium;ZLcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/apicloud/pdfReader/Pdfium$2;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    iput-boolean p2, p0, Lcom/apicloud/pdfReader/Pdfium$2;->val$showLoading:Z

    iput-object p3, p0, Lcom/apicloud/pdfReader/Pdfium$2;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$2;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-static {v0}, Lcom/apicloud/pdfReader/Pdfium;->access$000(Lcom/apicloud/pdfReader/Pdfium;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/pdfReader/Pdfium$2;->val$showLoading:Z

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$2;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-static {v0}, Lcom/apicloud/pdfReader/Pdfium;->access$000(Lcom/apicloud/pdfReader/Pdfium;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 68
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$2;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/pdfReader/Pdfium;->access$002(Lcom/apicloud/pdfReader/Pdfium;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 70
    :cond_0
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$2;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/apicloud/barteksc/pdfviewer/util/MouleUtil;->error(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;)V

    return-void
.end method
