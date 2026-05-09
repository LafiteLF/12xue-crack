.class Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

.field final synthetic val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;->this$0:Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser$1;->val$uzContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v1, "change"

    invoke-static {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/photoBrowser/PhotoBrowser;->callback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/lang/String;I)V

    return-void
.end method
