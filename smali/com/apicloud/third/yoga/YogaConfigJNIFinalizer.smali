.class public Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;
.super Lcom/apicloud/third/yoga/YogaConfigJNIBase;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/apicloud/third/yoga/YogaConfigJNIBase;-><init>()V

    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;->freeNatives()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public freeNatives()V
    .locals 4

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;->mNativePointer:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;->mNativePointer:J

    iput-wide v2, p0, Lcom/apicloud/third/yoga/YogaConfigJNIFinalizer;->mNativePointer:J

    invoke-static {v0, v1}, Lcom/apicloud/third/yoga/YogaNative;->jni_YGConfigFreeJNI(J)V

    :cond_0
    return-void
.end method
