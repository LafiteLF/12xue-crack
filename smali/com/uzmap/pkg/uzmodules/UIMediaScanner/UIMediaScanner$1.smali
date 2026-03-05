.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;
.super Ljava/lang/Object;
.source "UIMediaScanner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->jsmethod_scan(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
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
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 278
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "type"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v0

    const-string v2, "all"

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 284
    :goto_0
    new-instance v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->getContext()Lcom/uzmap/pkg/uzcore/UZAppActivity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;-><init>(Landroid/content/Context;)V

    .line 285
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 286
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v1, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldir(I)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Ljava/util/ArrayList;)V

    :cond_1
    const-string v2, "picture"

    .line 288
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 289
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v1, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAlldir(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Ljava/util/ArrayList;)V

    :cond_2
    const-string v2, "video"

    .line 291
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 292
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-virtual {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Util;->listAllVideo()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;Ljava/util/ArrayList;)V

    .line 297
    :cond_3
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "sort"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "time"

    const-string v2, "desc"

    if-eqz v0, :cond_5

    const-string v5, "key"

    .line 303
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 304
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_4
    const-string v5, "order"

    .line 306
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 307
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_5
    move-object v0, v2

    :goto_1
    const-string v5, "size"

    .line 311
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 312
    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_SIZE:I

    sput v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    goto :goto_2

    .line 314
    :cond_6
    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_TIME:I

    sput v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    .line 317
    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 318
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    goto :goto_3

    .line 320
    :cond_7
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    sput v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    .line 323
    :goto_3
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_TIME:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    if-ne v0, v1, :cond_9

    .line 324
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    if-ne v0, v1, :cond_8

    .line 325
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->ascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 327
    :cond_8
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    if-ne v0, v1, :cond_9

    .line 328
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->dascSortByTime(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 332
    :cond_9
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_SIZE:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_FLAG:I

    if-ne v0, v1, :cond_b

    .line 333
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_ASC:I

    if-ne v0, v1, :cond_a

    .line 334
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->ascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 337
    :cond_a
    sget v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_LAW:I

    sget v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->SORT_BY_DESC:I

    if-ne v0, v1, :cond_b

    .line 338
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/SortUtils;->dascSortBySize(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 344
    :cond_b
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "count"

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->isNull(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_c

    .line 345
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 346
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V

    goto :goto_4

    :cond_c
    move v0, v2

    .line 349
    :goto_4
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-gtz v1, :cond_d

    return-void

    .line 354
    :cond_d
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_f

    if-gez v0, :cond_e

    goto :goto_5

    .line 358
    :cond_e
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 359
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v2, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V

    goto :goto_6

    .line 355
    :cond_f
    :goto_5
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object v1

    .line 356
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    invoke-static {v0, v2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;I)V

    :goto_6
    move-object v7, v1

    .line 361
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->val$moduleConztext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 362
    iget-object v5, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    const/4 v8, 0x1

    iget v9, v5, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbWidth:I

    .line 363
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;

    iget v10, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->thumbHeight:I

    const-string v6, "success"

    .line 362
    invoke-virtual/range {v5 .. v10}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UIMediaScanner;->creatRetJSON(Ljava/lang/String;Ljava/util/List;ZII)Lorg/json/JSONObject;

    move-result-object v1

    .line 361
    invoke-virtual {v0, v1, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    return-void
.end method
