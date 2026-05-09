.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;
.super Ljava/lang/Object;
.source "UzImgsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnPhotoClick"
.end annotation


# instance fields
.field checkBox:Landroid/widget/CheckBox;

.field position:I

.field selectedImage:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;ILandroid/widget/CheckBox;Landroid/widget/ImageView;)V
    .locals 0

    .line 257
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 258
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->position:I

    .line 259
    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->checkBox:Landroid/widget/CheckBox;

    .line 260
    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->selectedImage:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .line 264
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->access$1(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->access$2(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->position:I

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->checkBox:Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnPhotoClick;->selectedImage:Landroid/widget/ImageView;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$OnItemClickClass;->OnItemClick(Landroid/view/View;ILandroid/widget/CheckBox;Landroid/widget/ImageView;)V

    :cond_0
    return-void
.end method
