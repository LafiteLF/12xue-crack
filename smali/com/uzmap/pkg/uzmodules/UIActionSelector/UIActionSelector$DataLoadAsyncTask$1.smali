.class Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$1;
.super Ljava/lang/Object;
.source "UIActionSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;


# direct methods
.method constructor <init>(Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;)V
    .locals 0

    .line 220
    iput-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 223
    iget-object p1, p0, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask$1;->this$1:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;

    iget-object p1, p1, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector$DataLoadAsyncTask;->this$0:Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;

    const-string v0, "hide"

    invoke-virtual {p1, v0}, Lcom/uzmap/pkg/uzmodules/UIActionSelector/UIActionSelector;->hiddenView(Ljava/lang/String;)V

    const-string p1, "LYH"

    const-string v0, "==== cancel ===="

    .line 224
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
