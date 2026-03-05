.class Lcom/apicloud/ijkplayer/IJKPlayer$1;
.super Ljava/lang/Object;
.source "IJKPlayer.java"

# interfaces
.implements Lcom/apicloud/ijkplayer/IJKPlayerView$OnFullScreenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/ijkplayer/IJKPlayer;->jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/ijkplayer/IJKPlayer;


# direct methods
.method constructor <init>(Lcom/apicloud/ijkplayer/IJKPlayer;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFullScreen(Z)V
    .locals 5

    .line 122
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;

    const-string v1, "asher"

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->getHeight(Landroid/content/Context;)I

    move-result p1

    .line 126
    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v3}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/ijkplayer/Utils;->hasNavBar(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 127
    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v3}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/apicloud/ijkplayer/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v3

    add-int/2addr p1, v3

    .line 129
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "hasBottomBar--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v4}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apicloud/ijkplayer/Utils;->hasNavBar(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bottomBarHeight == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v4}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/apicloud/ijkplayer/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 132
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->getWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 133
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 134
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 136
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->toFullScreen()V

    goto/16 :goto_0

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$000(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result p1

    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {v3}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$100(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 139
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$200(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result p1

    iget-object v3, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {v3}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$300(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result v3

    add-int/2addr p1, v3

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 140
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 141
    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 142
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->toWindowScreen()V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "to window h = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {v0}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$200(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result v0

    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object v0, v0, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {v0}, Lcom/apicloud/ijkplayer/IJKPlayerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz p1, :cond_4

    .line 151
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->getHeight(Landroid/content/Context;)I

    move-result p1

    .line 152
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fullScreen 2 -"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/ijkplayer/Utils;->hasNavBar(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {v1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/apicloud/ijkplayer/Utils;->getNavigationBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr p1, v1

    .line 156
    :cond_3
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 157
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->context()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/apicloud/ijkplayer/Utils;->getWidth(Landroid/content/Context;)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 159
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->toFullScreen()V

    goto :goto_0

    .line 161
    :cond_4
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$000(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$100(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 162
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {p1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$200(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result p1

    iget-object v1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    invoke-static {v1}, Lcom/apicloud/ijkplayer/IJKPlayer;->access$300(Lcom/apicloud/ijkplayer/IJKPlayer;)I

    move-result v1

    add-int/2addr p1, v1

    invoke-static {p1}, Lcom/uzmap/pkg/uzkit/UZUtility;->dipToPix(I)I

    move-result p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 165
    iget-object p1, p0, Lcom/apicloud/ijkplayer/IJKPlayer$1;->this$0:Lcom/apicloud/ijkplayer/IJKPlayer;

    iget-object p1, p1, Lcom/apicloud/ijkplayer/IJKPlayer;->mRootView:Lcom/apicloud/ijkplayer/IJKPlayerView;

    invoke-virtual {p1}, Lcom/apicloud/ijkplayer/IJKPlayerView;->toWindowScreen()V

    :goto_0
    return-void
.end method
