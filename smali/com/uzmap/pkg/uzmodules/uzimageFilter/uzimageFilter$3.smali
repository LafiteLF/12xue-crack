.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;
.super Ljava/lang/Object;
.source "uzimageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->jsmethod_save(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

.field private final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field private final synthetic val$mediaStorageDir:Ljava/io/File;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$mediaStorageDir:Ljava/io/File;

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 352
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$3;->val$mediaStorageDir:Ljava/io/File;

    .line 353
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->formatDate(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ".png"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 352
    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method
