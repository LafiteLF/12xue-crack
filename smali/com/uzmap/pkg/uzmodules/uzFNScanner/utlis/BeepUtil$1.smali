.class Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil$1;
.super Ljava/lang/Object;
.source "BeepUtil.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzFNScanner/utlis/BeepUtil;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x0

    .line 107
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V

    return-void
.end method
