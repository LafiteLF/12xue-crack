.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->hiddenView(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

.field final synthetic val$eventType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Ljava/lang/String;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->val$eventType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 10

    .line 595
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 598
    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 599
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->selectorContainer:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->clearAnimation()V

    .line 600
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 601
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$700(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0, v1, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 602
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 603
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Z

    move-result p1

    const-string v0, "eventType"

    const/4 v2, 0x0

    if-eqz p1, :cond_a

    .line 604
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 606
    :try_start_0
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3, v1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2902(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z

    .line 608
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->val$eventType:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 609
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->val$eventType:Ljava/lang/String;

    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    :cond_1
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "level1"

    .line 612
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 614
    :cond_2
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, ""

    const-string v5, "__tag(\\d){0,}"

    if-nez v3, :cond_3

    :try_start_1
    const-string v3, "level2"

    .line 615
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 617
    :cond_3
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "level3"

    .line 618
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v3, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 621
    :cond_4
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lorg/json/JSONArray;

    move-result-object v6

    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3000(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v6, v7}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v6, "sub"

    if-eqz v3, :cond_6

    .line 624
    :try_start_2
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v7}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 625
    iget-object v7, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iget-object v9, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v9}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v8, v4}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 627
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    iget-object v8, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v8}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$3200(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->getJSONObjectByName(Lorg/json/JSONArray;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    goto :goto_0

    :cond_5
    move-object v5, v2

    goto :goto_0

    :cond_6
    move-object v4, v2

    move-object v5, v4

    .line 631
    :goto_0
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    if-eqz v3, :cond_7

    .line 633
    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 634
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_7
    if-eqz v4, :cond_8

    .line 637
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 638
    invoke-virtual {v7, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_8
    if-eqz v5, :cond_9

    .line 641
    invoke-virtual {v7, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_9
    const-string v3, "selectedInfo"

    .line 643
    invoke-virtual {p1, v3, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 644
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v3

    invoke-virtual {v3, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 647
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 650
    :cond_a
    :goto_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->val$eventType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->val$eventType:Ljava/lang/String;

    const-string v3, "hide"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 651
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_3
    const-string v3, "cancel"

    .line 653
    invoke-virtual {p1, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    .line 655
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 657
    :goto_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    .line 659
    :cond_b
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2800(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 660
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1100(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->removeViewFromCurWindow(Landroid/view/View;)V

    .line 661
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Landroid/view/View;)Landroid/view/View;

    .line 663
    :cond_c
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$4;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1, v2}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$1102(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Landroid/view/View;)Landroid/view/View;

    :cond_d
    :goto_3
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    const-string p1, "lyh"

    const-string v0, "animation start ..."

    .line 584
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
