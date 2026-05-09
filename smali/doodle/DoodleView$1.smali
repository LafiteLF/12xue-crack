.class Ldoodle/DoodleView$1;
.super Ljava/lang/Object;
.source "DoodleView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleView;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/DoodleView;


# direct methods
.method constructor <init>(Ldoodle/DoodleView;)V
    .locals 0

    .line 607
    iput-object p1, p0, Ldoodle/DoodleView$1;->this$0:Ldoodle/DoodleView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 611
    iget-object v0, p0, Ldoodle/DoodleView$1;->this$0:Ldoodle/DoodleView;

    invoke-static {v0}, Ldoodle/DoodleView;->access$100(Ldoodle/DoodleView;)V

    .line 612
    iget-object v0, p0, Ldoodle/DoodleView$1;->this$0:Ldoodle/DoodleView;

    invoke-virtual {v0}, Ldoodle/DoodleView;->refresh()V

    return-void
.end method
