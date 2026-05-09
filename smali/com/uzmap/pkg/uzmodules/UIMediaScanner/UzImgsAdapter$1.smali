.class Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;
.super Ljava/lang/Object;
.source "UzImgsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

.field private final synthetic val$arg0:I


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iput p2, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;->val$arg0:I

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->mActivity:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;

    iget v0, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;->val$arg0:I

    iget-object v1, p0, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter$1;->this$0:Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;

    invoke-static {v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;->access$3(Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsAdapter;)Lcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/uzmap/pkg/uzmodules/UIMediaScanner/UzImgsActivity;->onItemClickEvent(ILcom/uzmap/pkg/uzmodules/UIMediaScanner/Holder;)V

    return-void
.end method
