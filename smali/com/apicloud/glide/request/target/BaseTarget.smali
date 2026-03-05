.class public abstract Lcom/apicloud/glide/request/target/BaseTarget;
.super Ljava/lang/Object;
.source "BaseTarget.java"

# interfaces
.implements Lcom/apicloud/glide/request/target/Target;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/apicloud/glide/request/target/Target<",
        "TZ;>;"
    }
.end annotation


# instance fields
.field private request:Lcom/apicloud/glide/request/Request;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequest()Lcom/apicloud/glide/request/Request;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/apicloud/glide/request/target/BaseTarget;->request:Lcom/apicloud/glide/request/Request;

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onLoadCleared(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onLoadStarted(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public setRequest(Lcom/apicloud/glide/request/Request;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/apicloud/glide/request/target/BaseTarget;->request:Lcom/apicloud/glide/request/Request;

    return-void
.end method
