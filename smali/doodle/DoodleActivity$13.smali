.class Ldoodle/DoodleActivity$13;
.super Ljava/lang/Object;
.source "DoodleActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/DoodleActivity;->onClick(Landroid/view/View;)V
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

    .line 555
    iput-object p1, p0, Ldoodle/DoodleActivity$13;->this$0:Ldoodle/DoodleActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 558
    iget-object p1, p0, Ldoodle/DoodleActivity$13;->this$0:Ldoodle/DoodleActivity;

    invoke-virtual {p1}, Ldoodle/DoodleActivity;->finish()V

    return-void
.end method
