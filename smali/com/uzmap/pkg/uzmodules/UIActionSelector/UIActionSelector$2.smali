.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->setOnclick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;)V
    .locals 0

    .line 387
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 390
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2802(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z

    .line 391
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->access$2902(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;Z)Z

    .line 392
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$2;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const-string v0, "ok"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->hiddenView(Ljava/lang/String;)V

    return-void
.end method
