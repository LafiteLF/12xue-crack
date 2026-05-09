.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;
.super Ljava/lang/Object;
.source "UzImgsAdapterForFileList.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImgCallBackLisner"
.end annotation


# instance fields
.field num:I

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;


# direct methods
.method public constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;I)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 198
    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->num:I

    return-void
.end method


# virtual methods
.method public resultImgCall(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 3

    .line 202
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Landroid/support/v4/util/LruCache;

    move-result-object v0

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    iget v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->num:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v1, v1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/ref/SoftReference;

    invoke-direct {v2, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    iget-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    invoke-static {p2}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->access$0(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;)Landroid/support/v4/util/LruCache;

    move-result-object p2

    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList;->mAllImgFiles:Ljava/util/ArrayList;

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapterForFileList$ImgCallBackLisner;->num:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;

    iget-object v0, v0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/FileInfo;->path:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
