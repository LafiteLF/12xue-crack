.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;
.super Ljava/lang/Object;
.source "UzImgsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImgOnclick"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field fileInfo:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;Landroid/widget/CheckBox;)V
    .locals 0

    .line 551
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 552
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->fileInfo:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    .line 553
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->checkBox:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 557
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->checkBox:Landroid/widget/CheckBox;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 558
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    invoke-static {p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity$ImgOnclick;->fileInfo:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
