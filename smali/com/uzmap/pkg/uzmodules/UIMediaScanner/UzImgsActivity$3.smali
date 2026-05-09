.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 221
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 223
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$6(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object p4

    iget-boolean p4, p4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showBrowser:Z

    if-eqz p4, :cond_1

    iget-boolean p4, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    if-eqz p4, :cond_1

    .line 225
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$7(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p4

    .line 226
    new-instance p5, Landroid/content/Intent;

    .line 227
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 228
    const-class v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    .line 226
    invoke-direct {p5, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "imgPaths"

    if-nez p4, :cond_0

    .line 231
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    .line 232
    iget-object v1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p5, v0, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {p5, v0, p4}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 239
    :goto_0
    iget-object p4, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    const-string v0, "selectedPath"

    invoke-virtual {p5, v0, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 241
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    const/4 v0, 0x0

    invoke-virtual {p4, p5, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 244
    :cond_1
    iget-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$6(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object p4

    iget-boolean p4, p4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->showPreview:Z

    if-eqz p4, :cond_2

    .line 245
    iget-boolean p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->isChecked:Z

    if-eqz p1, :cond_3

    .line 246
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$8(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 247
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$9(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V

    goto :goto_1

    .line 251
    :cond_2
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$3;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    invoke-virtual {p1, p3, p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onItemClickEvent(ILcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;)V

    :cond_3
    :goto_1
    return-void
.end method
