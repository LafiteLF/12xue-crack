.class Landroids/utils/ThreadUtil$1;
.super Ljava/lang/Object;
.source "ThreadUtil.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/utils/ThreadUtil;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroids/utils/ThreadUtil;


# direct methods
.method constructor <init>(Landroids/utils/ThreadUtil;)V
    .locals 0

    .line 50
    iput-object p1, p0, Landroids/utils/ThreadUtil$1;->this$0:Landroids/utils/ThreadUtil;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    iget-object v0, p0, Landroids/utils/ThreadUtil$1;->this$0:Landroids/utils/ThreadUtil;

    invoke-static {}, Landroid/os/Looper;->myQueue()Landroid/os/MessageQueue;

    move-result-object v1

    invoke-static {v0, v1}, Landroids/utils/ThreadUtil;->access$002(Landroids/utils/ThreadUtil;Landroid/os/MessageQueue;)Landroid/os/MessageQueue;

    return-void
.end method
