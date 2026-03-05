.class Lcom/apicloud/audioRecorder/AudioRecorder$2;
.super Ljava/lang/Object;
.source "AudioRecorder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/audioRecorder/AudioRecorder;->convertToMp3(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;IIILjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

.field private final synthetic val$channel:I

.field private final synthetic val$inFile:Ljava/lang/String;

.field private final synthetic val$outFile:Ljava/lang/String;

.field private final synthetic val$quality:I

.field private final synthetic val$simpleRate:I

.field private final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/apicloud/audioRecorder/AudioRecorder;IIILjava/lang/String;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iput p2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$channel:I

    iput p3, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$simpleRate:I

    iput p4, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$quality:I

    iput-object p5, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$inFile:Ljava/lang/String;

    iput-object p6, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$outFile:Ljava/lang/String;

    iput-object p7, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 260
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->setIsConverting(Z)V

    .line 262
    new-instance v0, Lcom/zc/RecordDemo/Mp3Conveter;

    iget v2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$channel:I

    iget v3, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$simpleRate:I

    .line 263
    iget v4, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$quality:I

    .line 262
    invoke-direct {v0, v2, v3, v4}, Lcom/zc/RecordDemo/Mp3Conveter;-><init>(III)V

    .line 264
    iget-object v2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$inFile:Ljava/lang/String;

    iget-object v3, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$outFile:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lcom/zc/RecordDemo/Mp3Conveter;->encodeFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v0}, Lcom/zc/RecordDemo/Mp3Conveter;->destroyEncoder()V

    .line 266
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    iget-object v2, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-virtual {v0, v2, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Z)V

    .line 268
    iget-object v0, p0, Lcom/apicloud/audioRecorder/AudioRecorder$2;->this$0:Lcom/apicloud/audioRecorder/AudioRecorder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/apicloud/audioRecorder/AudioRecorder;->setIsConverting(Z)V

    return-void
.end method
