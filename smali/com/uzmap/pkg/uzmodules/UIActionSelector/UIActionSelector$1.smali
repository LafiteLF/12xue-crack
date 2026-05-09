.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->setOnclick()V
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

    .line 369
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 373
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2802(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z

    .line 374
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const-string v0, "cancel"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->hiddenView(Ljava/lang/String;)V

    .line 376
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "eventType"

    .line 378
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 380
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 382
    :goto_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$900(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
