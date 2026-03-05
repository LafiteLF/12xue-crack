.class Lapiplotting/APIPlotting$1;
.super Lcom/bumptech/glide/request/target/SimpleTarget;
.source "APIPlotting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapiplotting/APIPlotting;->jsmethod_addView(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bumptech/glide/request/target/SimpleTarget<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lapiplotting/APIPlotting;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lapiplotting/APIPlotting;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lapiplotting/APIPlotting$1;->this$0:Lapiplotting/APIPlotting;

    iput-object p2, p0, Lapiplotting/APIPlotting$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Lcom/bumptech/glide/request/target/SimpleTarget;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 95
    invoke-super {p0, p1, p2}, Lcom/bumptech/glide/request/target/SimpleTarget;->onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V

    .line 96
    iget-object p1, p0, Lapiplotting/APIPlotting$1;->this$0:Lapiplotting/APIPlotting;

    iget-object p2, p0, Lapiplotting/APIPlotting$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const-string v0, "\u56fe\u7247\u52a0\u8f7d\u5931\u8d25"

    invoke-virtual {p1, v0, p2}, Lapiplotting/APIPlotting;->errorMsg(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Lcom/bumptech/glide/request/animation/GlideAnimation<",
            "-",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .line 102
    iget-object p2, p0, Lapiplotting/APIPlotting$1;->this$0:Lapiplotting/APIPlotting;

    iget-object v0, p0, Lapiplotting/APIPlotting$1;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-static {p2, p1, v0}, Lapiplotting/APIPlotting;->access$000(Lapiplotting/APIPlotting;Landroid/graphics/Bitmap;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V

    return-void
.end method

.method public bridge synthetic onResourceReady(Ljava/lang/Object;Lcom/bumptech/glide/request/animation/GlideAnimation;)V
    .locals 0

    .line 91
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lapiplotting/APIPlotting$1;->onResourceReady(Landroid/graphics/Bitmap;Lcom/bumptech/glide/request/animation/GlideAnimation;)V

    return-void
.end method
