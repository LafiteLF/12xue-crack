.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;
.super Ljava/lang/Object;
.source "UzImgsAdapterForFileList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPhotoClick"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field position:I

.field selectedImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;ILandroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->position:I

    .line 218
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->checkBox:Landroid/widget/CheckBox;

    .line 219
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->selectedImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 223
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->position:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnPhotoClick;->selectedImage:Landroid/widget/ImageView;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$OnItemClickClass;->OnItemClick(Landroid/view/View;ILandroid/widget/CheckBox;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
