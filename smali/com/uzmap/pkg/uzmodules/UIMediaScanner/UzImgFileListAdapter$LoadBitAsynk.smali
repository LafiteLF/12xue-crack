.class public Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;
.super Landroid/os/AsyncTask;
.source "UzImgFileListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LoadBitAsynk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;Landroid/widget/ImageView;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 118
    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->imageView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x0

    .line 126
    :goto_0
    :try_start_0
    array-length v2, p1

    if-lt v1, v2, :cond_0

    goto :goto_3

    .line 127
    :cond_0
    aget-object v2, p1, v1

    const-string v3, "mp4"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    aget-object v2, p1, v1

    const-string v3, "3gp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 130
    :cond_1
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;

    new-instance v3, Ljava/io/File;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/16 v4, 0xc8

    invoke-virtual {v2, v3, v4, v4}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter;->getPathBitmap(Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_2

    .line 128
    :cond_2
    :goto_1
    aget-object v2, p1, v1

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/media/ThumbnailUtils;->createVideoThumbnail(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_3
    :goto_3
    return-object v0
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->doInBackground([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 142
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->imageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgFileListAdapter$LoadBitAsynk;->onPostExecute(Landroid/graphics/Bitmap;)V

    return-void
.end method
