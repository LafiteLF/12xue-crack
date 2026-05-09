.class Ldoodle/imagepicker/ImageSelectorView$1;
.super Landroid/os/Handler;
.source "ImageSelectorView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ldoodle/imagepicker/ImageSelectorView;-><init>(Landroid/content/Context;ZILjava/util/List;Ldoodle/imagepicker/ImageSelectorView$ImageSelectorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ldoodle/imagepicker/ImageSelectorView;

.field final synthetic val$pathList:Ljava/util/List;


# direct methods
.method constructor <init>(Ldoodle/imagepicker/ImageSelectorView;Ljava/util/List;)V
    .locals 0

    .line 72
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    iput-object p2, p0, Ldoodle/imagepicker/ImageSelectorView$1;->val$pathList:Ljava/util/List;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 75
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 77
    :cond_0
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p1

    if-nez p1, :cond_2

    .line 78
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    new-instance v0, Ldoodle/imagepicker/ImageSelectorAdapter;

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-virtual {v1}, Ldoodle/imagepicker/ImageSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v2}, Ldoodle/imagepicker/ImageSelectorView;->access$100(Ldoodle/imagepicker/ImageSelectorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldoodle/imagepicker/ImageSelectorAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-static {p1, v0}, Ldoodle/imagepicker/ImageSelectorView;->access$002(Ldoodle/imagepicker/ImageSelectorView;Ldoodle/imagepicker/ImageSelectorAdapter;)Ldoodle/imagepicker/ImageSelectorAdapter;

    .line 79
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->val$pathList:Ljava/util/List;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 81
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$200(Ldoodle/imagepicker/ImageSelectorView;)I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 82
    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ldoodle/imagepicker/ImageSelectorAdapter;->addSelected(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 85
    :cond_1
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$300(Ldoodle/imagepicker/ImageSelectorView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-virtual {v1}, Ldoodle/imagepicker/ImageSelectorView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/kukugtu/moduleplotting/R$string;->doodle_enter:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object v1

    invoke-virtual {v1}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$400(Ldoodle/imagepicker/ImageSelectorView;)Landroid/widget/GridView;

    move-result-object p1

    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v0}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p1

    iget-object v0, p0, Ldoodle/imagepicker/ImageSelectorView$1;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v0}, Ldoodle/imagepicker/ImageSelectorView;->access$100(Ldoodle/imagepicker/ImageSelectorView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1, v0}, Ldoodle/imagepicker/ImageSelectorAdapter;->refreshPathList(Ljava/util/ArrayList;)V

    :goto_1
    return-void
.end method
