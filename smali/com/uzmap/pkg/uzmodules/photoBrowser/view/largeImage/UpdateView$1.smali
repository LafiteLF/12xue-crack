.class Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;
.super Ljava/lang/Object;
.source "UpdateView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;->access$000(Lcom/uzmap/pkg/uzmodules/photoBrowser/view/largeImage/UpdateView;ZZ)V

    return-void
.end method
