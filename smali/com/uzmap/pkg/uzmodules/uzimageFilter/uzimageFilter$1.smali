.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;
.super Ljava/lang/Object;
.source "uzimageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->jsmethod_open(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

.field private final synthetic val$imagePath:Ljava/lang/String;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->val$imagePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 185
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->val$imagePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 189
    :try_start_0
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 195
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v4, 0x0

    .line 196
    invoke-static {v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    .line 198
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 199
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 200
    iget v6, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    const/high16 v7, 0x44480000    # 800.0f

    const/high16 v8, 0x43f00000    # 480.0f

    if-le v5, v6, :cond_0

    int-to-float v9, v5

    cmpl-float v9, v9, v8

    if-lez v9, :cond_0

    .line 205
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v5, v5

    div-float/2addr v5, v8

    :goto_0
    float-to-int v5, v5

    goto :goto_1

    :cond_0
    if-ge v5, v6, :cond_1

    int-to-float v5, v6

    cmpl-float v5, v5, v7

    if-lez v5, :cond_1

    .line 207
    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v5, v5

    div-float/2addr v5, v7

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_1
    if-gtz v5, :cond_2

    move v5, v3

    .line 211
    :cond_2
    iput v5, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 213
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 214
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 215
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inInputShareable:Z

    .line 219
    :try_start_1
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->guessInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 224
    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_3

    .line 226
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createErrorCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;II)V

    return-void

    .line 229
    :cond_3
    invoke-static {v0}, Lcom/uzmap/pkg/uzkit/UZUtility;->getLocalImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 231
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 232
    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    invoke-static {v3}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->access$0(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;)Ljava/util/HashMap;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v4, ""

    invoke-virtual {v0, v3, v2, v4, v1}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->createSuccessCallback(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;ILjava/lang/String;I)V

    :catch_0
    return-void
.end method
