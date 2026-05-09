.class Lcom/apicloud/audiostreamer/UzAudioStreamer$1;
.super Ljava/lang/Object;
.source "UzAudioStreamer.java"

# interfaces
.implements Lcom/apicloud/audiostreamer/PlayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audiostreamer/UzAudioStreamer;->jsmethod_openPlayer(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/audiostreamer/UzAudioStreamer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    iput-object p2, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingInfo(Ljava/lang/String;I)V
    .locals 3

    .line 189
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$602(Lcom/apicloud/audiostreamer/UzAudioStreamer;Ljava/lang/String;)Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 192
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v0

    mul-int/2addr v0, p2

    .line 194
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "\u7f13\u51b2\u4e2d"

    .line 197
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "state"

    if-eqz v1, :cond_0

    :try_start_1
    const-string p1, "bufferStart"

    .line 199
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :cond_0
    const-string v1, "\u7f13\u51b2\u7ed3\u675f"

    .line 200
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "bufferEnd"

    .line 202
    invoke-virtual {p2, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    :goto_0
    const-string p1, "BufferingTime"

    .line 205
    invoke-virtual {p2, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "\u76d1\u542c"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BufferingTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "state:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$600(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 209
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 212
    :goto_1
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 213
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_2
    return-void
.end method

.method public onBufferingRatio(I)V
    .locals 7

    .line 139
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$202(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I

    const-string v0, "buffering"

    const-string v1, "state"

    const-string v2, "BufferingTime"

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-lez p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 141
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result p1

    iget-object v5, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v5}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$000(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v5

    mul-int/2addr p1, v5

    div-int/2addr p1, v4

    .line 143
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 145
    :try_start_0
    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 146
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 148
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 151
    :goto_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 152
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$100(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 153
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_2

    .line 155
    :cond_0
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$700(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result p1

    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v0

    if-le p1, v0, :cond_2

    .line 156
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    goto :goto_2

    :cond_1
    if-ne p1, v4, :cond_2

    .line 163
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    iget v5, p1, Lcom/apicloud/audiostreamer/UzAudioStreamer;->temp:I

    const/4 v6, 0x1

    add-int/2addr v5, v6

    iput v5, p1, Lcom/apicloud/audiostreamer/UzAudioStreamer;->temp:I

    .line 164
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    iget p1, p1, Lcom/apicloud/audiostreamer/UzAudioStreamer;->temp:I

    if-ne p1, v6, :cond_2

    .line 165
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result p1

    iget-object v5, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v5}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$000(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v5

    mul-int/2addr p1, v5

    div-int/2addr p1, v4

    .line 167
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    .line 169
    :try_start_1
    invoke-virtual {v4, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 170
    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 172
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 175
    :goto_1
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 177
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    invoke-virtual {p1, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_2
    :goto_2
    return-void
.end method

.method public onCompletion(I)V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v0

    mul-int/2addr v0, p1

    .line 119
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "BufferingTime"

    .line 121
    iget-object v2, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v2}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$000(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "state"

    const-string v2, "finished"

    .line 122
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "\u76d1\u542c"

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BufferingTime:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "state:"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$600(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 125
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 128
    :goto_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    return-void
.end method

.method public onError(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 105
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "what"

    .line 107
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "extra"

    .line 108
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "complete"

    const/4 p2, 0x0

    .line 109
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 111
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onPercent(II)V
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0, p2}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$402(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I

    .line 90
    :try_start_0
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$500(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    int-to-float p2, p2

    int-to-float p1, p1

    div-float/2addr p2, p1

    const/high16 p1, 0x42c80000    # 100.0f

    mul-float/2addr p2, p1

    float-to-int p1, p2

    const-string p2, "Tim"

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8fdb\u5ea6\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    const-string v0, "progress"

    .line 95
    invoke-virtual {p2, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 96
    iget-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$500(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public onPrepared(I)V
    .locals 3

    .line 54
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$002(Lcom/apicloud/audiostreamer/UzAudioStreamer;I)I

    .line 55
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "status"

    const/4 v2, 0x1

    .line 58
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "duration"

    .line 59
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 61
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 63
    :goto_0
    iget-object v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$100(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v1, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 69
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$200(Lcom/apicloud/audiostreamer/UzAudioStreamer;)I

    move-result v0

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x64

    .line 71
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v1, "BufferingTime"

    .line 73
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v0, "state"

    const-string v1, "prepare"

    .line 74
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 76
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 78
    :goto_1
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$100(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$1;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    invoke-static {v0}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->access$300(Lcom/apicloud/audiostreamer/UzAudioStreamer;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;->success(Lorg/json/JSONObject;Z)V

    :cond_1
    return-void
.end method
