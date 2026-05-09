.class Lmoduledialog/viewfactory/DialogCreater$2;
.super Ljava/lang/Object;
.source "DialogCreater.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmoduledialog/viewfactory/DialogCreater;->createView(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmoduledialog/viewfactory/DialogCreater;

.field final synthetic val$btnViewDataCircle:Lmoduledialog/bean/BtnViewData;


# direct methods
.method constructor <init>(Lmoduledialog/viewfactory/DialogCreater;Lmoduledialog/bean/BtnViewData;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lmoduledialog/viewfactory/DialogCreater$2;->this$0:Lmoduledialog/viewfactory/DialogCreater;

    iput-object p2, p0, Lmoduledialog/viewfactory/DialogCreater$2;->val$btnViewDataCircle:Lmoduledialog/bean/BtnViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 93
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 94
    iget-object v0, p0, Lmoduledialog/viewfactory/DialogCreater$2;->val$btnViewDataCircle:Lmoduledialog/bean/BtnViewData;

    invoke-virtual {v0}, Lmoduledialog/bean/BtnViewData;->getClickID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickID"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object v0, p0, Lmoduledialog/viewfactory/DialogCreater$2;->this$0:Lmoduledialog/viewfactory/DialogCreater;

    invoke-static {v0}, Lmoduledialog/viewfactory/DialogCreater;->access$000(Lmoduledialog/viewfactory/DialogCreater;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmoduledialog/utils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;Z)V

    return-void
.end method
