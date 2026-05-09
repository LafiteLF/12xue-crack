.class Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;
.super Ljava/lang/Object;
.source "ImageBrowserAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;I)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    iput p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 175
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;->access$200(Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter;)Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    move-result-object p1

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/ImageBrowserAdapter$2;->val$position:I

    const-string v1, "click"

    invoke-static {p1, v1, v0}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    return-void
.end method
