.class public abstract Lcom/deepe/b/d$a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/deepe/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public abstract isFromNativeSDK()Z
.end method

.method public abstract onSmartUpdateFinish(ZLcom/deepe/b/b/c;)V
.end method

.method public abstract requestFinishApp(Z)Z
.end method

.method public abstract requestRebootApp()Z
.end method
