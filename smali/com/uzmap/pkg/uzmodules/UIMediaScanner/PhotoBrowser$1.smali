.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;
.super Ljava/lang/Object;
.source "PhotoBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->open(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 58
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->setResult(I)V

    .line 59
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/PhotoBrowser;->finish()V

    return-void
.end method
