.class Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;
.super Ljava/lang/Object;
.source "TounchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/devlop/FNImageClip/TounchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImageState"
.end annotation


# instance fields
.field private bottom:F

.field private left:F

.field private right:F

.field final synthetic this$0:Lcom/apicloud/devlop/FNImageClip/TounchListener;

.field private top:F


# direct methods
.method constructor <init>(Lcom/apicloud/devlop/FNImageClip/TounchListener;)V
    .locals 0

    .line 364
    iput-object p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->this$0:Lcom/apicloud/devlop/FNImageClip/TounchListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F
    .locals 0

    .line 364
    iget p0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->left:F

    return p0
.end method

.method static synthetic access$100(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F
    .locals 0

    .line 364
    iget p0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->right:F

    return p0
.end method

.method static synthetic access$200(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F
    .locals 0

    .line 364
    iget p0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->top:F

    return p0
.end method

.method static synthetic access$300(Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;)F
    .locals 0

    .line 364
    iget p0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->bottom:F

    return p0
.end method


# virtual methods
.method public getBottom()F
    .locals 1

    .line 395
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->bottom:F

    return v0
.end method

.method public getLeft()F
    .locals 1

    .line 371
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->left:F

    return v0
.end method

.method public getRight()F
    .locals 1

    .line 387
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->right:F

    return v0
.end method

.method public getTop()F
    .locals 1

    .line 379
    iget v0, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->top:F

    return v0
.end method

.method public setBottom(F)V
    .locals 0

    .line 399
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->bottom:F

    return-void
.end method

.method public setLeft(F)V
    .locals 0

    .line 375
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->left:F

    return-void
.end method

.method public setRight(F)V
    .locals 0

    .line 391
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->right:F

    return-void
.end method

.method public setTop(F)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->top:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 404
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ImageState [left="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->left:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", top="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->top:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", right="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->right:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", bottom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/apicloud/devlop/FNImageClip/TounchListener$ImageState;->bottom:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
