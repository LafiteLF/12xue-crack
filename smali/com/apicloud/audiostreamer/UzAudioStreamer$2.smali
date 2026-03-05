.class Lcom/apicloud/audiostreamer/UzAudioStreamer$2;
.super Ljava/lang/Object;
.source "UzAudioStreamer.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audiostreamer/UzAudioStreamer;->jsmethod_getDuration(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/audiostreamer/UzAudioStreamer;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    iput-object p2, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;->this$0:Lcom/apicloud/audiostreamer/UzAudioStreamer;

    iget-object v1, p0, Lcom/apicloud/audiostreamer/UzAudioStreamer$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/apicloud/audiostreamer/UzAudioStreamer;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;I)V

    return-void
.end method
