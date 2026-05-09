.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;
.super Ljava/lang/Object;
.source "UIMediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->jsmethod_fetch(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

.field private final synthetic val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 383
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .line 387
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 388
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    if-ltz v1, :cond_4

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 394
    :cond_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ne v1, v5, :cond_1

    .line 395
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 396
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v5, v3, v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 395
    invoke-virtual {v1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 400
    :cond_1
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    .line 401
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    .line 402
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 401
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 403
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-static {v1, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V

    goto :goto_0

    .line 405
    :cond_2
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v1

    .line 406
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v5

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v6

    add-int/2addr v5, v6

    .line 405
    invoke-virtual {v0, v1, v5}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 407
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$4(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v5

    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v6}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$5(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)I

    move-result v6

    add-int/2addr v5, v6

    invoke-static {v1, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V

    :goto_0
    move-object v8, v0

    if-nez v8, :cond_3

    .line 411
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 412
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v1, v3, v8, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object v1

    .line 411
    invoke-virtual {v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 416
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 417
    iget-object v6, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    const/4 v9, 0x0

    iget v10, v6, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbWidth:I

    .line 418
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    iget v11, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbHeight:I

    const-string v7, "success"

    .line 417
    invoke-virtual/range {v6 .. v11}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void

    .line 389
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 390
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v5, v3, v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;Z)Lorg/json/JSONObject;

    move-result-object v0

    .line 389
    invoke-virtual {v1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
