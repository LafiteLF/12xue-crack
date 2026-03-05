.class Lmoduledialog/viewfactory/DialogCreater$6;
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

.field final synthetic val$iconViewData:Lmoduledialog/bean/IconViewData;


# direct methods
.method constructor <init>(Lmoduledialog/viewfactory/DialogCreater;Lmoduledialog/bean/IconViewData;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lmoduledialog/viewfactory/DialogCreater$6;->this$0:Lmoduledialog/viewfactory/DialogCreater;

    iput-object p2, p0, Lmoduledialog/viewfactory/DialogCreater$6;->val$iconViewData:Lmoduledialog/bean/IconViewData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 172
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 173
    iget-object v0, p0, Lmoduledialog/viewfactory/DialogCreater$6;->val$iconViewData:Lmoduledialog/bean/IconViewData;

    invoke-virtual {v0}, Lmoduledialog/bean/IconViewData;->getClickID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "clickID"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v0, p0, Lmoduledialog/viewfactory/DialogCreater$6;->this$0:Lmoduledialog/viewfactory/DialogCreater;

    invoke-static {v0}, Lmoduledialog/viewfactory/DialogCreater;->access$000(Lmoduledialog/viewfactory/DialogCreater;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lmoduledialog/utils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;Z)V

    return-void
.end method
