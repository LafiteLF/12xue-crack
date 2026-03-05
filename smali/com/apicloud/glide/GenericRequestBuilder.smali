.class public Lcom/apicloud/glide/GenericRequestBuilder;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ModelType:",
        "Ljava/lang/Object;",
        "DataType:",
        "Ljava/lang/Object;",
        "ResourceType:",
        "Ljava/lang/Object;",
        "TranscodeType:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final context:Landroid/content/Context;

.field private diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

.field private errorId:I

.field private errorPlaceholder:Landroid/graphics/drawable/Drawable;

.field private fallbackDrawable:Landroid/graphics/drawable/Drawable;

.field private fallbackResource:I

.field protected final glide:Lcom/apicloud/glide/Glide;

.field private isCacheable:Z

.field private isModelSet:Z

.field private isThumbnailBuilt:Z

.field private isTransformationSet:Z

.field protected final lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

.field private loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/provider/ChildLoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field private model:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TModelType;"
        }
    .end annotation
.end field

.field protected final modelClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TModelType;>;"
        }
    .end annotation
.end field

.field private overrideHeight:I

.field private overrideWidth:I

.field private placeholderDrawable:Landroid/graphics/drawable/Drawable;

.field private placeholderId:I

.field private priority:Lcom/apicloud/glide/Priority;

.field private requestListener:Lcom/apicloud/glide/request/RequestListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

.field private signature:Lcom/apicloud/glide/load/Key;

.field private sizeMultiplier:Ljava/lang/Float;

.field private thumbSizeMultiplier:Ljava/lang/Float;

.field private thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;"
        }
    .end annotation
.end field

.field protected final transcodeClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TTranscodeType;>;"
        }
    .end annotation
.end field

.field private transformation:Lcom/apicloud/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/Transformation<",
            "TResourceType;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TModelType;>;",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/apicloud/glide/Glide;",
            "Lcom/apicloud/glide/manager/RequestTracker;",
            "Lcom/apicloud/glide/manager/Lifecycle;",
            ")V"
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-static {}, Lcom/apicloud/glide/signature/EmptySignature;->obtain()Lcom/apicloud/glide/signature/EmptySignature;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->signature:Lcom/apicloud/glide/load/Key;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    const/4 v1, 0x1

    .line 72
    iput-boolean v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isCacheable:Z

    .line 73
    invoke-static {}, Lcom/apicloud/glide/request/animation/NoAnimation;->getFactory()Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    const/4 v1, -0x1

    .line 74
    iput v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    .line 75
    iput v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    .line 76
    sget-object v1, Lcom/apicloud/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    iput-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    .line 77
    invoke-static {}, Lcom/apicloud/glide/load/resource/UnitTransformation;->get()Lcom/apicloud/glide/load/resource/UnitTransformation;

    move-result-object v1

    iput-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->transformation:Lcom/apicloud/glide/load/Transformation;

    .line 97
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    .line 98
    iput-object p2, p0, Lcom/apicloud/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    .line 99
    iput-object p4, p0, Lcom/apicloud/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    .line 100
    iput-object p5, p0, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    .line 101
    iput-object p6, p0, Lcom/apicloud/glide/GenericRequestBuilder;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    .line 102
    iput-object p7, p0, Lcom/apicloud/glide/GenericRequestBuilder;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    if-eqz p3, :cond_0

    .line 103
    new-instance v0, Lcom/apicloud/glide/provider/ChildLoadProvider;

    invoke-direct {v0, p3}, Lcom/apicloud/glide/provider/ChildLoadProvider;-><init>(Lcom/apicloud/glide/provider/LoadProvider;)V

    :cond_0
    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    if-eqz p3, :cond_1

    goto :goto_0

    .line 110
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "LoadProvider must not be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    return-void

    .line 107
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Context can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method constructor <init>(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/GenericRequestBuilder;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/provider/LoadProvider<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;",
            "Ljava/lang/Class<",
            "TTranscodeType;>;",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;***>;)V"
        }
    .end annotation

    .line 85
    iget-object v1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    iget-object v2, p3, Lcom/apicloud/glide/GenericRequestBuilder;->modelClass:Ljava/lang/Class;

    iget-object v5, p3, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    iget-object v6, p3, Lcom/apicloud/glide/GenericRequestBuilder;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    iget-object v7, p3, Lcom/apicloud/glide/GenericRequestBuilder;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v7}, Lcom/apicloud/glide/GenericRequestBuilder;-><init>(Landroid/content/Context;Ljava/lang/Class;Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Class;Lcom/apicloud/glide/Glide;Lcom/apicloud/glide/manager/RequestTracker;Lcom/apicloud/glide/manager/Lifecycle;)V

    .line 87
    iget-object p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    .line 88
    iget-boolean p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->isModelSet:Z

    iput-boolean p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isModelSet:Z

    .line 89
    iget-object p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->signature:Lcom/apicloud/glide/load/Key;

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->signature:Lcom/apicloud/glide/load/Key;

    .line 90
    iget-object p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    .line 91
    iget-boolean p1, p3, Lcom/apicloud/glide/GenericRequestBuilder;->isCacheable:Z

    iput-boolean p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isCacheable:Z

    return-void
.end method

.method private buildRequest(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/Request;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;)",
            "Lcom/apicloud/glide/request/Request;"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    if-nez v0, :cond_0

    .line 795
    sget-object v0, Lcom/apicloud/glide/Priority;->NORMAL:Lcom/apicloud/glide/Priority;

    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    :cond_0
    const/4 v0, 0x0

    .line 797
    invoke-direct {p0, p1, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/apicloud/glide/request/target/Target;Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private buildRequestRecursive(Lcom/apicloud/glide/request/target/Target;Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;)Lcom/apicloud/glide/request/Request;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;",
            "Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;",
            ")",
            "Lcom/apicloud/glide/request/Request;"
        }
    .end annotation

    .line 801
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    if-eqz v0, :cond_4

    .line 802
    iget-boolean v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    if-nez v1, :cond_3

    .line 807
    iget-object v0, v0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    invoke-static {}, Lcom/apicloud/glide/request/animation/NoAnimation;->getFactory()Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 808
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    iput-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    if-nez v1, :cond_1

    .line 812
    invoke-direct {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/apicloud/glide/Priority;

    move-result-object v1

    iput-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    .line 815
    :cond_1
    iget v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    iget v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-static {v0, v1}, Lcom/apicloud/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    iget v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    iget v0, v0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    .line 816
    invoke-static {v1, v0}, Lcom/apicloud/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    iget v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    iget v2, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/apicloud/glide/GenericRequestBuilder;->override(II)Lcom/apicloud/glide/GenericRequestBuilder;

    .line 821
    :cond_2
    new-instance v0, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/apicloud/glide/request/RequestCoordinator;)V

    .line 822
    iget-object p2, p0, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->obtainRequest(Lcom/apicloud/glide/request/target/Target;FLcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/RequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p2

    const/4 v1, 0x1

    .line 824
    iput-boolean v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 826
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    invoke-direct {v1, p1, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->buildRequestRecursive(Lcom/apicloud/glide/request/target/Target;Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p1

    const/4 v1, 0x0

    .line 827
    iput-boolean v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isThumbnailBuilt:Z

    .line 828
    invoke-virtual {v0, p2, p1}, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/apicloud/glide/request/Request;Lcom/apicloud/glide/request/Request;)V

    return-object v0

    .line 803
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 830
    :cond_4
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    if-eqz v0, :cond_5

    .line 832
    new-instance v0, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;

    invoke-direct {v0, p2}, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;-><init>(Lcom/apicloud/glide/request/RequestCoordinator;)V

    .line 833
    iget-object p2, p0, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    invoke-direct {p0, p1, p2, v1, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->obtainRequest(Lcom/apicloud/glide/request/target/Target;FLcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/RequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p2

    .line 834
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-direct {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->getThumbnailPriority()Lcom/apicloud/glide/Priority;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->obtainRequest(Lcom/apicloud/glide/request/target/Target;FLcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/RequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p1

    .line 835
    invoke-virtual {v0, p2, p1}, Lcom/apicloud/glide/request/ThumbnailRequestCoordinator;->setRequests(Lcom/apicloud/glide/request/Request;Lcom/apicloud/glide/request/Request;)V

    return-object v0

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/apicloud/glide/GenericRequestBuilder;->obtainRequest(Lcom/apicloud/glide/request/target/Target;FLcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/RequestCoordinator;)Lcom/apicloud/glide/request/Request;

    move-result-object p1

    return-object p1
.end method

.method private getThumbnailPriority()Lcom/apicloud/glide/Priority;
    .locals 2

    .line 783
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    sget-object v1, Lcom/apicloud/glide/Priority;->LOW:Lcom/apicloud/glide/Priority;

    if-ne v0, v1, :cond_0

    .line 784
    sget-object v0, Lcom/apicloud/glide/Priority;->NORMAL:Lcom/apicloud/glide/Priority;

    goto :goto_0

    .line 785
    :cond_0
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    sget-object v1, Lcom/apicloud/glide/Priority;->NORMAL:Lcom/apicloud/glide/Priority;

    if-ne v0, v1, :cond_1

    .line 786
    sget-object v0, Lcom/apicloud/glide/Priority;->HIGH:Lcom/apicloud/glide/Priority;

    goto :goto_0

    .line 788
    :cond_1
    sget-object v0, Lcom/apicloud/glide/Priority;->IMMEDIATE:Lcom/apicloud/glide/Priority;

    :goto_0
    return-object v0
.end method

.method private obtainRequest(Lcom/apicloud/glide/request/target/Target;FLcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/RequestCoordinator;)Lcom/apicloud/glide/request/Request;
    .locals 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;F",
            "Lcom/apicloud/glide/Priority;",
            "Lcom/apicloud/glide/request/RequestCoordinator;",
            ")",
            "Lcom/apicloud/glide/request/Request;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p1

    move/from16 v7, p2

    move-object/from16 v5, p3

    move-object/from16 v15, p4

    .line 845
    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    iget-object v2, v0, Lcom/apicloud/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    iget-object v3, v0, Lcom/apicloud/glide/GenericRequestBuilder;->signature:Lcom/apicloud/glide/load/Key;

    iget-object v4, v0, Lcom/apicloud/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    iget-object v8, v0, Lcom/apicloud/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    iget v9, v0, Lcom/apicloud/glide/GenericRequestBuilder;->placeholderId:I

    iget-object v10, v0, Lcom/apicloud/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    iget v11, v0, Lcom/apicloud/glide/GenericRequestBuilder;->errorId:I

    iget-object v12, v0, Lcom/apicloud/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    iget v13, v0, Lcom/apicloud/glide/GenericRequestBuilder;->fallbackResource:I

    iget-object v14, v0, Lcom/apicloud/glide/GenericRequestBuilder;->requestListener:Lcom/apicloud/glide/request/RequestListener;

    move-object/from16 p1, v1

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    .line 861
    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getEngine()Lcom/apicloud/glide/load/engine/Engine;

    move-result-object v16

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->transformation:Lcom/apicloud/glide/load/Transformation;

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    move-object/from16 v18, v1

    iget-boolean v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->isCacheable:Z

    move/from16 v19, v1

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    move-object/from16 v20, v1

    iget v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    move/from16 v21, v1

    iget v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    move/from16 v22, v1

    iget-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    move-object/from16 v23, v1

    move-object/from16 v1, p1

    .line 845
    invoke-static/range {v1 .. v23}, Lcom/apicloud/glide/request/GenericRequest;->obtain(Lcom/apicloud/glide/provider/LoadProvider;Ljava/lang/Object;Lcom/apicloud/glide/load/Key;Landroid/content/Context;Lcom/apicloud/glide/Priority;Lcom/apicloud/glide/request/target/Target;FLandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILandroid/graphics/drawable/Drawable;ILcom/apicloud/glide/request/RequestListener;Lcom/apicloud/glide/request/RequestCoordinator;Lcom/apicloud/glide/load/engine/Engine;Lcom/apicloud/glide/load/Transformation;Ljava/lang/Class;ZLcom/apicloud/glide/request/animation/GlideAnimationFactory;IILcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/request/GenericRequest;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public animate(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 379
    new-instance v0, Lcom/apicloud/glide/request/animation/ViewAnimationFactory;

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->context:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/apicloud/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public animate(Landroid/view/animation/Animation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/animation/Animation;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 399
    new-instance v0, Lcom/apicloud/glide/request/animation/ViewAnimationFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/ViewAnimationFactory;-><init>(Landroid/view/animation/Animation;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method public animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/GlideAnimationFactory<",
            "TTranscodeType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 427
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->animationFactory:Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    return-object p0

    .line 425
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Animation factory must not be null!"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public animate(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 412
    new-instance v0, Lcom/apicloud/glide/request/animation/ViewPropertyAnimationFactory;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/request/animation/ViewPropertyAnimationFactory;-><init>(Lcom/apicloud/glide/request/animation/ViewPropertyAnimation$Animator;)V

    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object p1

    return-object p1
.end method

.method applyCenterCrop()V
    .locals 0

    return-void
.end method

.method applyFitCenter()V
    .locals 0

    return-void
.end method

.method public cacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "Ljava/io/File;",
            "TResourceType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 229
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->setCacheDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)V

    :cond_0
    return-object p0
.end method

.method public clone()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 632
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/apicloud/glide/GenericRequestBuilder;

    .line 633
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    invoke-virtual {v1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->clone()Lcom/apicloud/glide/provider/ChildLoadProvider;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-object v1, v0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 636
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->clone()Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public decoder(Lcom/apicloud/glide/load/ResourceDecoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceDecoder<",
            "TDataType;TResourceType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 207
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 208
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->setSourceDecoder(Lcom/apicloud/glide/load/ResourceDecoder;)V

    :cond_0
    return-object p0
.end method

.method public diskCacheStrategy(Lcom/apicloud/glide/load/engine/DiskCacheStrategy;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/engine/DiskCacheStrategy;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 271
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->diskCacheStrategy:Lcom/apicloud/glide/load/engine/DiskCacheStrategy;

    return-object p0
.end method

.method public dontAnimate()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 367
    invoke-static {}, Lcom/apicloud/glide/request/animation/NoAnimation;->getFactory()Lcom/apicloud/glide/request/animation/GlideAnimationFactory;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->animate(Lcom/apicloud/glide/request/animation/GlideAnimationFactory;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public dontTransform()Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 339
    invoke-static {}, Lcom/apicloud/glide/load/resource/UnitTransformation;->get()Lcom/apicloud/glide/load/resource/UnitTransformation;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/apicloud/glide/load/Transformation;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    .line 340
    invoke-virtual {p0, v1}, Lcom/apicloud/glide/GenericRequestBuilder;->transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;

    move-result-object v0

    return-object v0
.end method

.method public encoder(Lcom/apicloud/glide/load/ResourceEncoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/ResourceEncoder<",
            "TResourceType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 293
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 294
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->setEncoder(Lcom/apicloud/glide/load/ResourceEncoder;)V

    :cond_0
    return-object p0
.end method

.method public error(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 510
    iput p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->errorId:I

    return-object p0
.end method

.method public error(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 523
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->errorPlaceholder:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public fallback(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 497
    iput p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->fallbackResource:I

    return-object p0
.end method

.method public fallback(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 476
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->fallbackDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public into(II)Lcom/apicloud/glide/request/FutureTarget;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/request/FutureTarget<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 721
    new-instance v0, Lcom/apicloud/glide/request/RequestFutureTarget;

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    .line 722
    invoke-virtual {v1}, Lcom/apicloud/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/apicloud/glide/request/RequestFutureTarget;-><init>(Landroid/os/Handler;II)V

    .line 725
    iget-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    invoke-virtual {p1}, Lcom/apicloud/glide/Glide;->getMainHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/apicloud/glide/GenericRequestBuilder$1;

    invoke-direct {p2, p0, v0}, Lcom/apicloud/glide/GenericRequestBuilder$1;-><init>(Lcom/apicloud/glide/GenericRequestBuilder;Lcom/apicloud/glide/request/RequestFutureTarget;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public into(Landroid/widget/ImageView;)Lcom/apicloud/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ImageView;",
            ")",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 683
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    if-eqz p1, :cond_3

    .line 688
    iget-boolean v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isTransformationSet:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 689
    sget-object v0, Lcom/apicloud/glide/GenericRequestBuilder$2;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p1}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->applyFitCenter()V

    goto :goto_0

    .line 691
    :cond_1
    invoke-virtual {p0}, Lcom/apicloud/glide/GenericRequestBuilder;->applyCenterCrop()V

    .line 704
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->glide:Lcom/apicloud/glide/Glide;

    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->transcodeClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/apicloud/glide/Glide;->buildImageViewTarget(Landroid/widget/ImageView;Ljava/lang/Class;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    return-object p1

    .line 685
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null View"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Y::",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;>(TY;)TY;"
        }
    .end annotation

    .line 649
    invoke-static {}, Lcom/apicloud/glide/util/Util;->assertMainThread()V

    if-eqz p1, :cond_2

    .line 653
    iget-boolean v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isModelSet:Z

    if-eqz v0, :cond_1

    .line 657
    invoke-interface {p1}, Lcom/apicloud/glide/request/target/Target;->getRequest()Lcom/apicloud/glide/request/Request;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 660
    invoke-interface {v0}, Lcom/apicloud/glide/request/Request;->clear()V

    .line 661
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/apicloud/glide/manager/RequestTracker;->removeRequest(Lcom/apicloud/glide/request/Request;)V

    .line 662
    invoke-interface {v0}, Lcom/apicloud/glide/request/Request;->recycle()V

    .line 665
    :cond_0
    invoke-direct {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->buildRequest(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/Request;

    move-result-object v0

    .line 666
    invoke-interface {p1, v0}, Lcom/apicloud/glide/request/target/Target;->setRequest(Lcom/apicloud/glide/request/Request;)V

    .line 667
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->lifecycle:Lcom/apicloud/glide/manager/Lifecycle;

    invoke-interface {v1, p1}, Lcom/apicloud/glide/manager/Lifecycle;->addListener(Lcom/apicloud/glide/manager/LifecycleListener;)V

    .line 668
    iget-object v1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->requestTracker:Lcom/apicloud/glide/manager/RequestTracker;

    invoke-virtual {v1, v0}, Lcom/apicloud/glide/manager/RequestTracker;->runRequest(Lcom/apicloud/glide/request/Request;)V

    return-object p1

    .line 654
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must first set a model (try #load())"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 651
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You must pass in a non null Target"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public listener(Lcom/apicloud/glide/request/RequestListener;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/request/RequestListener<",
            "-TModelType;TTranscodeType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 538
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->requestListener:Lcom/apicloud/glide/request/RequestListener;

    return-object p0
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModelType;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 613
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->model:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 614
    iput-boolean p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isModelSet:Z

    return-object p0
.end method

.method public override(II)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 570
    invoke-static {p1, p2}, Lcom/apicloud/glide/util/Util;->isValidDimensions(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iput p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideWidth:I

    .line 574
    iput p2, p0, Lcom/apicloud/glide/GenericRequestBuilder;->overrideHeight:I

    return-object p0

    .line 571
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Width and height must be Target#SIZE_ORIGINAL or > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public placeholder(I)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 441
    iput p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->placeholderId:I

    return-object p0
.end method

.method public placeholder(Landroid/graphics/drawable/Drawable;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 454
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->placeholderDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public preload()Lcom/apicloud/glide/request/target/Target;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    .line 770
    invoke-virtual {p0, v0, v0}, Lcom/apicloud/glide/GenericRequestBuilder;->preload(II)Lcom/apicloud/glide/request/target/Target;

    move-result-object v0

    return-object v0
.end method

.method public preload(II)Lcom/apicloud/glide/request/target/Target;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/apicloud/glide/request/target/Target<",
            "TTranscodeType;>;"
        }
    .end annotation

    .line 756
    invoke-static {p1, p2}, Lcom/apicloud/glide/request/target/PreloadTarget;->obtain(II)Lcom/apicloud/glide/request/target/PreloadTarget;

    move-result-object p1

    .line 757
    invoke-virtual {p0, p1}, Lcom/apicloud/glide/GenericRequestBuilder;->into(Lcom/apicloud/glide/request/target/Target;)Lcom/apicloud/glide/request/target/Target;

    move-result-object p1

    return-object p1
.end method

.method public priority(Lcom/apicloud/glide/Priority;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/Priority;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 308
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->priority:Lcom/apicloud/glide/Priority;

    return-object p0
.end method

.method public signature(Lcom/apicloud/glide/load/Key;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Key;",
            ")",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 597
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->signature:Lcom/apicloud/glide/load/Key;

    return-object p0

    .line 595
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Signature must not be null"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public sizeMultiplier(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 188
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->sizeMultiplier:Ljava/lang/Float;

    return-object p0

    .line 186
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public skipMemoryCache(Z)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    xor-int/lit8 p1, p1, 0x1

    .line 555
    iput-boolean p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isCacheable:Z

    return-object p0
.end method

.method public sourceEncoder(Lcom/apicloud/glide/load/Encoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/Encoder<",
            "TDataType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->setSourceEncoder(Lcom/apicloud/glide/load/Encoder;)V

    :cond_0
    return-object p0
.end method

.method public thumbnail(F)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_0

    .line 170
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbSizeMultiplier:Ljava/lang/Float;

    return-object p0

    .line 168
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "sizeMultiplier must be between 0 and 1"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public thumbnail(Lcom/apicloud/glide/GenericRequestBuilder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "***TTranscodeType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->thumbnailRequestBuilder:Lcom/apicloud/glide/GenericRequestBuilder;

    return-object p0

    .line 132
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "You cannot set a request as a thumbnail for itself. Consider using clone() on the request you are passing to thumbnail()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public transcoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder<",
            "TResourceType;TTranscodeType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->loadProvider:Lcom/apicloud/glide/provider/ChildLoadProvider;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/provider/ChildLoadProvider;->setTranscoder(Lcom/apicloud/glide/load/resource/transcode/ResourceTranscoder;)V

    :cond_0
    return-object p0
.end method

.method public varargs transform([Lcom/apicloud/glide/load/Transformation;)Lcom/apicloud/glide/GenericRequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/apicloud/glide/load/Transformation<",
            "TResourceType;>;)",
            "Lcom/apicloud/glide/GenericRequestBuilder<",
            "TModelType;TDataType;TResourceType;TTranscodeType;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 322
    iput-boolean v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->isTransformationSet:Z

    .line 323
    array-length v1, p1

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    .line 324
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/apicloud/glide/GenericRequestBuilder;->transformation:Lcom/apicloud/glide/load/Transformation;

    goto :goto_0

    .line 326
    :cond_0
    new-instance v0, Lcom/apicloud/glide/load/MultiTransformation;

    invoke-direct {v0, p1}, Lcom/apicloud/glide/load/MultiTransformation;-><init>([Lcom/apicloud/glide/load/Transformation;)V

    iput-object v0, p0, Lcom/apicloud/glide/GenericRequestBuilder;->transformation:Lcom/apicloud/glide/load/Transformation;

    :goto_0
    return-object p0
.end method
