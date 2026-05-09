.class public Lcom/apicloud/c/b/d;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/c/b/d$a;
    }
.end annotation


# static fields
.field static a:Lcom/apicloud/third/yoga/YogaConfig;

.field static b:Lcom/apicloud/third/yoga/YogaLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/apicloud/third/yoga/YogaConfigFactory;->create()Lcom/apicloud/third/yoga/YogaConfig;

    move-result-object v0

    sput-object v0, Lcom/apicloud/c/b/d;->a:Lcom/apicloud/third/yoga/YogaConfig;

    new-instance v0, Lcom/apicloud/c/b/d$a;

    invoke-direct {v0}, Lcom/apicloud/c/b/d$a;-><init>()V

    sput-object v0, Lcom/apicloud/c/b/d;->b:Lcom/apicloud/third/yoga/YogaLogger;

    sget-object v1, Lcom/apicloud/c/b/d;->a:Lcom/apicloud/third/yoga/YogaConfig;

    invoke-virtual {v1, v0}, Lcom/apicloud/third/yoga/YogaConfig;->setLogger(Lcom/apicloud/third/yoga/YogaLogger;)V

    sget-object v0, Lcom/apicloud/c/b/d;->a:Lcom/apicloud/third/yoga/YogaConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaConfig;->setUseWebDefaults(Z)V

    sget-object v0, Lcom/apicloud/c/b/d;->a:Lcom/apicloud/third/yoga/YogaConfig;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v0, v1}, Lcom/apicloud/third/yoga/YogaConfig;->setPointScaleFactor(F)V

    return-void
.end method

.method public static a()Lcom/apicloud/third/yoga/YogaNode;
    .locals 1

    sget-object v0, Lcom/apicloud/c/b/d;->a:Lcom/apicloud/third/yoga/YogaConfig;

    invoke-static {v0}, Lcom/apicloud/third/yoga/YogaNodeFactory;->create(Lcom/apicloud/third/yoga/YogaConfig;)Lcom/apicloud/third/yoga/YogaNode;

    move-result-object v0

    return-object v0
.end method
