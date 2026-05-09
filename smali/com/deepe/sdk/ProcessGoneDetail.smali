.class public Lcom/deepe/sdk/ProcessGoneDetail;
.super Ljava/lang/Object;


# instance fields
.field private final mRenderProcessGoneDetail:Landroid/webkit/RenderProcessGoneDetail;


# direct methods
.method public constructor <init>(Landroid/webkit/RenderProcessGoneDetail;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/deepe/sdk/ProcessGoneDetail;->mRenderProcessGoneDetail:Landroid/webkit/RenderProcessGoneDetail;

    return-void
.end method


# virtual methods
.method public didCrash()Z
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ProcessGoneDetail;->mRenderProcessGoneDetail:Landroid/webkit/RenderProcessGoneDetail;

    invoke-virtual {v0}, Landroid/webkit/RenderProcessGoneDetail;->didCrash()Z

    move-result v0

    return v0
.end method

.method public rendererPriorityAtExit()I
    .locals 1

    iget-object v0, p0, Lcom/deepe/sdk/ProcessGoneDetail;->mRenderProcessGoneDetail:Landroid/webkit/RenderProcessGoneDetail;

    invoke-virtual {v0}, Landroid/webkit/RenderProcessGoneDetail;->rendererPriorityAtExit()I

    move-result v0

    return v0
.end method
