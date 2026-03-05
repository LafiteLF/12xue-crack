.class Lcom/ezhiduo/mp3recorder/RecApi$1;
.super Landroid/os/Handler;
.source "RecApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ezhiduo/mp3recorder/RecApi;->jsmethod_start(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ezhiduo/mp3recorder/RecApi;


# direct methods
.method constructor <init>(Lcom/ezhiduo/mp3recorder/RecApi;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    .line 58
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 59
    iget p1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "\u6587\u4ef6\u5199\u5165\u5931\u8d25"

    const-string v2, "\u8bf7\u68c0\u67e5\u5f00\u542f\u5f55\u97f3\u6743\u9650"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "status"

    const-string v6, "message"

    const/4 v7, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 125
    :pswitch_1
    :try_start_1
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    iget-object p1, p1, Lcom/ezhiduo/mp3recorder/RecApi;->mRecMicToMp3:Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;

    invoke-virtual {p1}, Lcom/coolzhouy/lamedemo/mp3recorder/RecMicToMp3;->getDb()D

    move-result-wide v1

    .line 126
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "getDb"

    .line 127
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "db"

    .line 128
    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 129
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 120
    :pswitch_2
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 121
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 115
    :pswitch_3
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 116
    invoke-virtual {v0, v6, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "type"

    const-string v1, "error"

    .line 110
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "\u7f16\u7801\u5931\u8d25"

    .line 111
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 105
    :pswitch_5
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 106
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 100
    :pswitch_6
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 95
    :pswitch_7
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "\u65e0\u6cd5\u751f\u6210\u6587\u4ef6"

    .line 96
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 97
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto/16 :goto_0

    .line 90
    :pswitch_8
    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "\u4e0d\u652f\u6301\u5f55\u97f3"

    .line 91
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v3, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->error(Lorg/json/JSONObject;Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 68
    :pswitch_9
    new-instance p1, Landroid/media/MediaPlayer;

    invoke-direct {p1}, Landroid/media/MediaPlayer;-><init>()V

    .line 69
    iget-object v1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    iget-object v1, v1, Lcom/ezhiduo/mp3recorder/RecApi;->mp3Url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 71
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    .line 72
    div-int/lit16 v1, p1, 0x3e8

    if-nez v1, :cond_1

    .line 75
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    iget-object v3, v3, Lcom/ezhiduo/mp3recorder/RecApi;->mp3Url:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 77
    :cond_0
    iget-object v2, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    const-string v3, ""

    iput-object v3, v2, Lcom/ezhiduo/mp3recorder/RecApi;->fsUrl:Ljava/lang/String;

    .line 80
    :cond_1
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "\u5b8c\u6210\u4e86"

    .line 81
    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "path"

    .line 82
    iget-object v3, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    iget-object v3, v3, Lcom/ezhiduo/mp3recorder/RecApi;->fsUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "duration"

    .line 83
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "millisecond"

    .line 84
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 85
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v0, v7}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_0

    .line 62
    :pswitch_a
    invoke-virtual {v0, v5, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p1, "\u5f55\u97f3\u4e2d..."

    .line 63
    invoke-virtual {v0, v6, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    iget-object p1, p0, Lcom/ezhiduo/mp3recorder/RecApi$1;->this$0:Lcom/ezhiduo/mp3recorder/RecApi;

    invoke-static {p1}, Lcom/ezhiduo/mp3recorder/RecApi;->access$000(Lcom/ezhiduo/mp3recorder/RecApi;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v0, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
