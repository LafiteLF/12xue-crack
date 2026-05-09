.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;
.super Ljava/lang/Object;
.source "UzImgFileListActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

.field private final synthetic val$listdata:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->val$listdata:Ljava/util/List;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 76
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    const-string v1, "relativeLayout1"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, -0xc2c2c3

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 77
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    const-string v1, "navi_title"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->clasifyTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41b00000    # 22.0f

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 81
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    const-string v1, "button2"

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZResourcesIDFinder;->getResIdID(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/ConfigInfo;->cancel_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x41a00000    # 20.0f

    .line 83
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 85
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->val$listdata:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;)V

    .line 86
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$6(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;)Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity$1;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method
