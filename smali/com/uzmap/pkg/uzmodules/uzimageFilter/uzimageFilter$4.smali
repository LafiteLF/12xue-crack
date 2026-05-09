.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;
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

.field private final synthetic val$imgName:Ljava/lang/String;

.field private final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

.field private final synthetic val$path:Ljava/io/File;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iput-object p2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iput-object p3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$path:Ljava/io/File;

    iput-object p5, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$imgName:Ljava/lang/String;

    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 369
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    iget-object v2, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v3, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$path:Ljava/io/File;

    iget-object v4, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter$4;->val$imgName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/uzimageFilter;->saveImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Landroid/graphics/Bitmap;Ljava/io/File;Ljava/lang/String;Z)V

    return-void
.end method
