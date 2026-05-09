.class Ldoodle/DoodleActivity$10;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleActivity;


# direct methods
.method constructor <init>(Ldoodle/DoodleActivity;)V
    .locals 0

    .line 456
    iput-object p1, p0, Ldoodle/DoodleActivity$10;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 458
    iget-object v0, p0, Ldoodle/DoodleActivity$10;->this$0:Ldoodle/DoodleActivity;

    invoke-static {v0}, Ldoodle/DoodleActivity;->access$1100(Ldoodle/DoodleActivity;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Ldoodle/DoodleActivity;->access$1400(Ldoodle/DoodleActivity;Landroid/view/View;)V

    return-void
.end method
