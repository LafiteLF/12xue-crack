.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$10(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Landroid/widget/GridView;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$6;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setSelection(I)V

    return-void
.end method
