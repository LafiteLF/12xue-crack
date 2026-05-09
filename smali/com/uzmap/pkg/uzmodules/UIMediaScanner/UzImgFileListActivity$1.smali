.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;
.super Ljava/lang/Object;
.source "UzImgFileListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    return-object p0
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 52
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v1, "all"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->LocalImgFileList(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Ljava/util/List;)V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v2, "picture"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->LocalImgFileList(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Ljava/util/List;)V

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->filterType:Ljava/lang/String;

    const-string v2, "video"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 59
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->LocalImgFileList(I)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Ljava/util/List;)V

    .line 62
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    move v2, v1

    .line 64
    :goto_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    goto :goto_2

    .line 65
    :cond_3
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 66
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v5, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "filecount"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filecontent:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    :goto_1
    const-string v5, "imgpath"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;

    iget-object v4, v4, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzFileTraversal;->filename:Ljava/lang/String;

    const-string v5, "filename"

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 73
    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    new-instance v2, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;

    invoke-direct {v2, p0, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;-><init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
