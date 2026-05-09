.class public final Lcom/apicloud/glide/RequestManager$GenericModelRequest;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apicloud/glide/RequestManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "GenericModelRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final dataClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/apicloud/glide/RequestManager;


# direct methods
.method constructor <init>(Lcom/apicloud/glide/RequestManager;Lcom/apicloud/glide/load/model/ModelLoader;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/apicloud/glide/load/model/ModelLoader<",
            "TA;TT;>;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 713
    iput-object p1, p0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->this$0:Lcom/apicloud/glide/RequestManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 714
    iput-object p2, p0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    .line 715
    iput-object p3, p0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    return-void
.end method

.method static synthetic access$600(Lcom/apicloud/glide/RequestManager$GenericModelRequest;)Lcom/apicloud/glide/load/model/ModelLoader;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->modelLoader:Lcom/apicloud/glide/load/model/ModelLoader;

    return-object p0
.end method

.method static synthetic access$700(Lcom/apicloud/glide/RequestManager$GenericModelRequest;)Ljava/lang/Class;
    .locals 0

    .line 709
    iget-object p0, p0, Lcom/apicloud/glide/RequestManager$GenericModelRequest;->dataClass:Ljava/lang/Class;

    return-object p0
.end method


# virtual methods
.method public from(Ljava/lang/Class;)Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TA;>;)",
            "Lcom/apicloud/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .line 725
    new-instance v0, Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/apicloud/glide/RequestManager$GenericModelRequest;Ljava/lang/Class;)V

    return-object v0
.end method

.method public load(Ljava/lang/Object;)Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)",
            "Lcom/apicloud/glide/RequestManager$GenericModelRequest<",
            "TA;TT;>.GenericTypeRequest;"
        }
    .end annotation

    .line 735
    new-instance v0, Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;

    invoke-direct {v0, p0, p1}, Lcom/apicloud/glide/RequestManager$GenericModelRequest$GenericTypeRequest;-><init>(Lcom/apicloud/glide/RequestManager$GenericModelRequest;Ljava/lang/Object;)V

    return-object v0
.end method
