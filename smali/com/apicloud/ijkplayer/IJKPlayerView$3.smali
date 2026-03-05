.class Lcom/apicloud/ijkplayer/IJKPlayerView$3;
.super Ljava/lang/Object;
.source "IJKPlayerView.java"

# interfaces
.implements Lcom/apicloud/widget/PopSeekBarView$PopSeekBarListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayerView;->loadLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayerView;)V
    .locals 0

    .line 321
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$3;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPersentChange(I)V
    .locals 5

    .line 325
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayerView$3;->this$0:Lcom/apicloud/ijkplayer/IJKPlayerView;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    div-double/2addr v1, v3

    double-to-float p1, v1

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->access$200(Lcom/apicloud/ijkplayer/IJKPlayerView;FF)Landroid/view/WindowManager$LayoutParams;

    return-void
.end method
