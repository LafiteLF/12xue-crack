.class Lcom/apicloud/audioRecorder/AudioRecorder$3;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audioRecorder/AudioRecorder;->jsmethod_getAttr(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

.field private final synthetic val$file:Ljava/io/File;

.field private final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/audioRecorder/AudioRecorder;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iput-object p2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object p3, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->val$file:Ljava/io/File;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 287
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iget-object v1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    iget-object v2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$3;->val$file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IJ)V

    return-void
.end method
