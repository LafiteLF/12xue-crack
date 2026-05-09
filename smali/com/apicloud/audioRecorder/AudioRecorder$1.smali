.class Lcom/apicloud/audioRecorder/AudioRecorder$1;
.super Ljava/util/TimerTask;
.source "AudioRecorder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audioRecorder/AudioRecorder;->jsmethod_addEventListener(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

.field private final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/audioRecorder/AudioRecorder;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iput-object p2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 129
    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 133
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->access$0(Lcom/apicloud/audioRecorder/AudioRecorder;)Landroid/media/MediaRecorder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    .line 135
    iget-object v1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 136
    invoke-static {v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->access$0(Lcom/apicloud/audioRecorder/AudioRecorder;)Landroid/media/MediaRecorder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v2

    int-to-float v2, v2

    const/high16 v3, 0x47000000    # 32768.0f

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/apicloud/audioRecorder/AudioRecorder;->volumeCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->access$1(Lcom/apicloud/audioRecorder/AudioRecorder;)Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iget-object v1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$1;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {v0}, Lcom/apicloud/audioRecorder/AudioRecorder;->access$1(Lcom/apicloud/audioRecorder/AudioRecorder;)Lcom/apicloud/audioRecorder/PcmAudioRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/apicloud/audioRecorder/PcmAudioRecorder;->getVolume()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/audioRecorder/AudioRecorder;->volumeCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    :cond_1
    return-void
.end method
