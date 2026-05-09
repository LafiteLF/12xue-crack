.class public abstract Lcom/apicloud/third/yoga/YogaConfigFactory;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create()Lcom/apicloud/third/yoga/YogaConfig;
    .locals 1

    new-instance v0, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;

    invoke-direct {v0}, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;-><init>()V

    return-object v0
.end method
