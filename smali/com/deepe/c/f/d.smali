.class public abstract Lcom/deepe/c/f/d;
.super Ljava/lang/Object;


# instance fields
.field private mLastResults:Lcom/deepe/c/f/q;

.field private final mRequestConstants:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/c/f/d;->mRequestConstants:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public abstract getActivity()Landroid/app/Activity;
.end method

.method public getHtml5Results()Lcom/deepe/c/f/q;
    .locals 1

    iget-object v0, p0, Lcom/deepe/c/f/d;->mLastResults:Lcom/deepe/c/f/q;

    return-object v0
.end method

.method public getRequestConstants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/deepe/c/f/d;->mRequestConstants:Ljava/util/List;

    return-object v0
.end method

.method public abstract needPermissionSetting()Z
.end method

.method public abstract onPermission(ILcom/deepe/c/f/q;)V
.end method

.method public setHtml5Results(Lcom/deepe/c/f/q;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/c/f/d;->mLastResults:Lcom/deepe/c/f/q;

    return-void
.end method
