.class Ldoodle/DoodleActivity$5$1;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity$5;->onLongClick(Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ldoodle/DoodleActivity$5;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity$5;)V
    .locals 0

    .line 353
    iput-object p1, p0, Ldoodle/DoodleActivity$5$1;->this$1:Ldoodle/DoodleActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 356
    iget-object p1, p0, Ldoodle/DoodleActivity$5$1;->this$1:Ldoodle/DoodleActivity$5;

    iget-object p1, p1, Ldoodle/DoodleActivity$5;->this$0:Ldoodle/DoodleActivity;

    invoke-static {p1}, Ldoodle/DoodleActivity;->access$300(Ldoodle/DoodleActivity;)Ldoodle/core/IDoodle;

    move-result-object p1

    invoke-interface {p1}, Ldoodle/core/IDoodle;->clear()V

    return-void
.end method
