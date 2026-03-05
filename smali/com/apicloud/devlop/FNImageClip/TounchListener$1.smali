.class Lcom/apicloud/devlop/FNImageClip/TounchListener$1;
.super Ljava/lang/Object;
.source "TounchListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/apicloud/devlop/FNImageClip/TounchListener;-><init>(Landroid/widget/ImageView;Lcom/apicloud/devlop/FNImageClip/ClipRect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/apicloud/devlop/FNImageClip/TounchListener;


# direct methods
.method constructor <init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$1;->this$0:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$1;->this$0:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    invoke-virtual {v0}, Lcom/apicloud/devlop/FNImageClip/TounchListener;->doReset()V

    return-void
.end method
