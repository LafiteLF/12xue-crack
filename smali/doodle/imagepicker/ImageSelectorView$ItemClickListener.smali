.class Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;
.super Ljava/lang/Object;
.source "ImageSelectorView.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ldoodle/imagepicker/ImageSelectorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClickListener"
.end annotation


# instance fields
.field private mLastSelected:Landroid/view/View;

.field final synthetic this$0:Ldoodle/imagepicker/ImageSelectorView;


# direct methods
.method private constructor <init>(Ldoodle/imagepicker/ImageSelectorView;)V
    .locals 0

    .line 197
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ldoodle/imagepicker/ImageSelectorView;Ldoodle/imagepicker/ImageSelectorView$1;)V
    .locals 0

    .line 197
    invoke-direct {p0, p1}, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;-><init>(Ldoodle/imagepicker/ImageSelectorView;)V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 p1, -0x7e0

    .line 203
    invoke-virtual {p2, p1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 204
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$1100(Ldoodle/imagepicker/ImageSelectorView;)Z

    move-result p3

    const/4 p4, 0x0

    const/16 p5, -0x4ec1

    const/16 v0, 0x8

    if-eqz p3, :cond_2

    .line 205
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    iget-object v1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {v1}, Ldoodle/imagepicker/ImageSelectorView;->access$200(Ldoodle/imagepicker/ImageSelectorView;)I

    move-result v1

    if-lt p3, v1, :cond_0

    .line 206
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u6700\u591a\u53ea\u80fd\u9009\u62e9"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$200(Ldoodle/imagepicker/ImageSelectorView;)I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "\u9879"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Ldoodle/imagepicker/ImageSelectorView;->access$1200(Ldoodle/imagepicker/ImageSelectorView;Ljava/lang/String;)V

    return-void

    .line 209
    :cond_0
    invoke-virtual {p2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 210
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 211
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->removeSelected(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 214
    :cond_1
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->addSelected(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 218
    :cond_2
    invoke-virtual {p2, p5}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/View;

    .line 219
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 220
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->removeSelected(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 221
    iput-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->mLastSelected:Landroid/view/View;

    .line 222
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 224
    :cond_3
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->clear()V

    .line 225
    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3, p1}, Ldoodle/imagepicker/ImageSelectorAdapter;->addSelected(Ljava/lang/String;)V

    .line 226
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->mLastSelected:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 227
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 229
    :cond_4
    invoke-virtual {p2, p4}, Landroid/view/View;->setVisibility(I)V

    .line 230
    iput-object p2, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->mLastSelected:Landroid/view/View;

    .line 233
    :goto_0
    iget-object p1, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p1}, Ldoodle/imagepicker/ImageSelectorView;->access$300(Ldoodle/imagepicker/ImageSelectorView;)Landroid/widget/TextView;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorView;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/kukugtu/moduleplotting/R$string;->doodle_enter:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Ldoodle/imagepicker/ImageSelectorView$ItemClickListener;->this$0:Ldoodle/imagepicker/ImageSelectorView;

    invoke-static {p3}, Ldoodle/imagepicker/ImageSelectorView;->access$000(Ldoodle/imagepicker/ImageSelectorView;)Ldoodle/imagepicker/ImageSelectorAdapter;

    move-result-object p3

    invoke-virtual {p3}, Ldoodle/imagepicker/ImageSelectorAdapter;->getSelectedSet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ")"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
