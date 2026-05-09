.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 360
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 361
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->setResult(ILandroid/content/Intent;)V

    .line 362
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$5;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-virtual {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->finish()V

    return-void
.end method
