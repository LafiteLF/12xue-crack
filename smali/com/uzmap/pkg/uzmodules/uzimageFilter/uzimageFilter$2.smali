.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;
.super Ljava/lang/Object;
.source "uzimageFilter.java"

# interfaces
.implements Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ImageProcessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->jsmethod_filter(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$id:I

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Landroid/graphics/Bitmap;ILcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$bitmap:Landroid/graphics/Bitmap;

    iput p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$id:I

    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResultCallback(Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p1, :cond_2

    .line 288
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 289
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/util/HashMap;

    move-result-object v0

    iget v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 295
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    const-string v2, "fs://uzCache"

    invoke-virtual {v1, v2}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->generatePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 296
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 297
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 299
    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "thumnail.png"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v2, v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->access$1(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Ljava/io/FileOutputStream;)V

    const/16 v2, 0x32

    .line 303
    invoke-static {p1, v2, v2}, Landroid/media/ThumbnailUtils;->extractThumbnail(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 305
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    .line 306
    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-static {v4}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->access$2(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/io/FileOutputStream;

    move-result-object v4

    .line 305
    invoke-virtual {p1, v2, v3, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 307
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v3, 0x0

    .line 308
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 307
    invoke-virtual {p1, v2, v3, v1, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 311
    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3, v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    .line 313
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
