.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->onTapUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1101
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$400(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1102
    array-length v1, v0

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    .line 1103
    aget-object v0, v0, v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1104
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/widget/WheelView;->setCurrentItem(I)V

    :cond_0
    return-void
.end method
