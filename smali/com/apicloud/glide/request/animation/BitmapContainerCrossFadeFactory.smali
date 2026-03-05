.class public abstract Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;
.super Ljava/lang/Object;
.source "BitmapContainerCrossFadeFactory.java"

# interfaces
.implements Lcom/apicloud/glide/request/animation/GlideAnimationFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final realFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>()V

    invoke-direct {p0, v0}, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 27
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(I)V

    invoke-direct {p0, v0}, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1

    .line 31
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2, p3}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/content/Context;II)V

    invoke-direct {p0, v0}, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/animation/Animation;I)V
    .locals 1

    .line 35
    new-instance v0, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;

    invoke-direct {v0, p1, p2}, Lcom/apicloud/glide/request/animation/DrawableCrossFadeFactory;-><init>(Landroid/view/animation/Animation;I)V

    invoke-direct {p0, v0}, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;-><init>(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)V

    return-void
.end method

.method public constructor <init>(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    return-void
.end method


# virtual methods
.method public build(ZZ)Lcom/apicloud/glide/request/animation/GlideAnimation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/apicloud/glide/request/animation/GlideAnimation<",
            "TT;>;"
        }
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;->realFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    invoke-interface {v0, p1, p2}, Lcom/apicloud/glide/request/animation/GlideAnimationFactory;->build(ZZ)Lcom/apicloud/glide/request/animation/GlideAnimation;

    move-result-object p1

    .line 45
    new-instance p2, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;

    invoke-direct {p2, p0, p1}, Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory$BitmapGlideAnimation;-><init>(Lcom/apicloud/glide/request/animation/BitmapContainerCrossFadeFactory;Lcom/apicloud/glide/request/animation/GlideAnimation;)V

    return-object p2
.end method

.method protected abstract getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method
