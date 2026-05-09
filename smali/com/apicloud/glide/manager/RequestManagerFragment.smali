.class public Lcom/apicloud/glide/manager/RequestManagerFragment;
.super Landroid/app/Fragment;
.source "RequestManagerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apicloud/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RMFragment"


# instance fields
.field private final childRequestManagerFragments:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/apicloud/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation
.end field

.field private final lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

.field private requestManager:Lcom/apicloud/glide/RequestManager;

.field private final requestManagerTreeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

.field private rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    new-instance v0, Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    invoke-direct {v0}, Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;-><init>()V

    invoke-direct {p0, v0}, Lcom/apicloud/glide/manager/RequestManagerFragment;-><init>(Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;)V

    return-void
.end method

.method constructor <init>(Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 31
    new-instance v0, Lcom/apicloud/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/apicloud/glide/manager/RequestManagerFragment$FragmentRequestManagerTreeNode;-><init>(Lcom/apicloud/glide/manager/RequestManagerFragment;Lcom/apicloud/glide/manager/RequestManagerFragment$1;)V

    iput-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

    .line 33
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    .line 44
    iput-object p1, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    return-void
.end method

.method private addChildRequestManagerFragment(Lcom/apicloud/glide/manager/RequestManagerFragment;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private isDescendant(Landroid/app/Fragment;)Z
    .locals 2

    .line 108
    invoke-virtual {p0}, Lcom/apicloud/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    .line 109
    :goto_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 110
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v1

    if-ne v1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 113
    :cond_0
    invoke-virtual {p1}, Landroid/app/Fragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private removeChildRequestManagerFragment(Lcom/apicloud/glide/manager/RequestManagerFragment;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public getDescendantRequestManagerFragments()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/apicloud/glide/manager/RequestManagerFragment;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;

    if-ne v0, p0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->childRequestManagerFragments:Ljava/util/HashSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    if-eqz v0, :cond_4

    .line 87
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    goto :goto_1

    .line 92
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 94
    iget-object v1, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;

    invoke-virtual {v1}, Lcom/apicloud/glide/manager/RequestManagerFragment;->getDescendantRequestManagerFragments()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/apicloud/glide/manager/RequestManagerFragment;

    .line 95
    invoke-virtual {v2}, Lcom/apicloud/glide/manager/RequestManagerFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/apicloud/glide/manager/RequestManagerFragment;->isDescendant(Landroid/app/Fragment;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 96
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 99
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 90
    :cond_4
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method getLifecycle()Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    return-object v0
.end method

.method public getRequestManager()Lcom/apicloud/glide/RequestManager;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManager:Lcom/apicloud/glide/RequestManager;

    return-object v0
.end method

.method public getRequestManagerTreeNode()Lcom/apicloud/glide/manager/RequestManagerTreeNode;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManagerTreeNode:Lcom/apicloud/glide/manager/RequestManagerTreeNode;

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 122
    :try_start_0
    invoke-static {}, Lcom/apicloud/glide/manager/RequestManagerRetriever;->get()Lcom/apicloud/glide/manager/RequestManagerRetriever;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/apicloud/glide/manager/RequestManagerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/apicloud/glide/manager/RequestManagerRetriever;->getRequestManagerFragment(Landroid/app/FragmentManager;)Lcom/apicloud/glide/manager/RequestManagerFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;

    if-eq p1, p0, :cond_0

    .line 125
    invoke-direct {p1, p0}, Lcom/apicloud/glide/manager/RequestManagerFragment;->addChildRequestManagerFragment(Lcom/apicloud/glide/manager/RequestManagerFragment;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x5

    const-string v1, "RMFragment"

    .line 129
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Unable to register fragment with root"

    .line 130
    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 159
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 160
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 138
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 139
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {v0, p0}, Lcom/apicloud/glide/manager/RequestManagerFragment;->removeChildRequestManagerFragment(Lcom/apicloud/glide/manager/RequestManagerFragment;)V

    const/4 v0, 0x0

    .line 141
    iput-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->rootRequestManagerFragment:Lcom/apicloud/glide/manager/RequestManagerFragment;

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManager:Lcom/apicloud/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {v0}, Lcom/apicloud/glide/RequestManager;->onLowMemory()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 148
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 153
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 154
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->lifecycle:Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;

    invoke-virtual {v0}, Lcom/apicloud/glide/manager/ActivityFragmentLifecycle;->onStop()V

    return-void
.end method

.method public onTrimMemory(I)V
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManager:Lcom/apicloud/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 168
    invoke-virtual {v0, p1}, Lcom/apicloud/glide/RequestManager;->onTrimMemory(I)V

    :cond_0
    return-void
.end method

.method public setRequestManager(Lcom/apicloud/glide/RequestManager;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/apicloud/glide/manager/RequestManagerFragment;->requestManager:Lcom/apicloud/glide/RequestManager;

    return-void
.end method
