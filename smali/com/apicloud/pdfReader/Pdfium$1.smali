.class Lcom/apicloud/pdfReader/Pdfium$1;
.super Ljava/lang/Object;
.source "Pdfium.java"

# interfaces
.implements Lcom/apicloud/barteksc/pdfviewer/listener/OnLoadCompleteListener;


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

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$showLoading:Z

.field final synthetic val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/pdfReader/Pdfium;ZLjava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/apicloud/pdfReader/Pdfium$1;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    iput-boolean p2, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$showLoading:Z

    iput-object p3, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadComplete(I)V
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$1;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-static {v0}, Lcom/apicloud/pdfReader/Pdfium;->access$000(Lcom/apicloud/pdfReader/Pdfium;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$showLoading:Z

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$1;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    invoke-static {v0}, Lcom/apicloud/pdfReader/Pdfium;->access$000(Lcom/apicloud/pdfReader/Pdfium;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 80
    iget-object v0, p0, Lcom/apicloud/pdfReader/Pdfium$1;->this$0:Lcom/apicloud/pdfReader/Pdfium;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/apicloud/pdfReader/Pdfium;->access$002(Lcom/apicloud/pdfReader/Pdfium;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 83
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "eventType"

    const-string v2, "show"

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    iget-object v1, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$path:Ljava/lang/String;

    const-string v2, "pdfCachePath"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "totalPage"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/apicloud/pdfReader/Pdfium$1;->val$uzModuleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/apicloud/barteksc/pdfviewer/util/MouleUtil;->succes(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/HashMap;Z)V

    return-void
.end method
