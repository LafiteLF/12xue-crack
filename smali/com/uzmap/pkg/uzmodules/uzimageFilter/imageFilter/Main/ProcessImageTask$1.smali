.class Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask$1;
.super Ljava/lang/Object;
.source "ProcessImageTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->doInBackground([Ljava/lang/Void;)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 65
    iget-object v0, p0, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask$1;->this$0:Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;

    invoke-static {v0}, Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;->access$2(Lcom/uzmap/pkg/uzmodules/uzimageFilter/imageFilter/Main/ProcessImageTask;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "\u56fe\u7247\u592a\u5927\uff0c\u5904\u7406\u5931\u8d25"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
