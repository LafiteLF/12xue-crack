.class Lcom/kukugtu/moduleutils/api/APIScaleImage$2;
.super Ljava/lang/Object;
.source "APIScaleImage.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kukugtu/moduleutils/api/APIScaleImage;->jsmethod_showImage(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

.field final synthetic val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;


# direct methods
.method constructor <init>(Lcom/kukugtu/moduleutils/api/APIScaleImage;Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$2;->this$0:Lcom/kukugtu/moduleutils/api/APIScaleImage;

    iput-object p2, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 96
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "clickID"

    const-string v1, "clickID_close"

    .line 97
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v0, p0, Lcom/kukugtu/moduleutils/api/APIScaleImage$2;->val$moduleContext:Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lcom/kukugtu/moduleutils/apiutils/ReturnUtils;->successMsg(Lcom/uzmap/pkg/uzcore/uzmodule/UZModuleContext;Ljava/util/Map;Z)V

    return-void
.end method
