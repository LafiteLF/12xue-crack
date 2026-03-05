.class Lcom/deepe/sdk/ModalHelper$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/deepe/sdk/ModalHelper;->uiPrompt(Lcom/deepe/sdk/ModalHelper$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$opt:Lcom/deepe/sdk/ModalHelper$Builder;


# direct methods
.method constructor <init>(Lcom/deepe/sdk/ModalHelper$Builder;)V
    .locals 0

    iput-object p1, p0, Lcom/deepe/sdk/ModalHelper$2;->val$opt:Lcom/deepe/sdk/ModalHelper$Builder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcom/deepe/sdk/ModalHelper$2;->val$opt:Lcom/deepe/sdk/ModalHelper$Builder;

    invoke-static {v0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$7(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/deepe/sdk/ModalHelper$2;->val$opt:Lcom/deepe/sdk/ModalHelper$Builder;

    invoke-static {v0}, Lcom/deepe/sdk/ModalHelper$Builder;->access$7(Lcom/deepe/sdk/ModalHelper$Builder;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    :cond_0
    return-void
.end method
