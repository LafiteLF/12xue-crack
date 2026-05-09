.class public abstract Lcom/apicloud/third/yoga/YogaNodeFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    new-instance v0, Lcom/apicloud/third/yoga/YogaNodeJNIFinalizer;

    invoke-direct {v0}, Lcom/apicloud/third/yoga/YogaNodeJNIFinalizer;-><init>()V

    return-object v0
.end method

.method public static create(Lcom/apicloud/third/yoga/YogaConfig;)Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    new-instance v0, Lcom/apicloud/third/yoga/YogaNodeJNIFinalizer;

    invoke-direct {v0, p0}, Lcom/apicloud/third/yoga/YogaNodeJNIFinalizer;-><init>(Lcom/apicloud/third/yoga/YogaConfig;)V

    return-object v0
.end method
