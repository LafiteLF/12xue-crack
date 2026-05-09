.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;
.super Ljava/lang/Object;
.source "UzImgFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Holder"
.end annotation


# instance fields
.field public filecount_textview:Landroid/widget/TextView;

.field public filename_textView:Landroid/widget/TextView;

.field public photo_imgview:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$Holder;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
