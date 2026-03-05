.class final Lcom/apicloud/glide/util/ViewPreloadSizeProvider$SizeViewTarget;
.super Lcom/apicloud/glide/request/target/ViewTarget;
.source "ViewPreloadSizeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/util/ViewPreloadSizeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SizeViewTarget"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/apicloud/glide/request/target/ViewTarget<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/apicloud/glide/request/target/SizeReadyCallback;)V
    .locals 0

    .line 78
    invoke-direct {p0, p1}, Lcom/apicloud/glide/request/target/ViewTarget;-><init>(Landroid/view/View;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/apicloud/glide/util/ViewPreloadSizeProvider$SizeViewTarget;->getSize(Lcom/apicloud/glide/request/target/SizeReadyCallback;)V

    return-void
.end method


# virtual methods
.method public onResourceReady(Ljava/lang/Object;Lcom/apicloud/glide/request/animation/GlideAnimation;)V
    .locals 0

    return-void
.end method
