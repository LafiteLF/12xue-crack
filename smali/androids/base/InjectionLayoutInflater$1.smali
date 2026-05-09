.class final Landroids/base/InjectionLayoutInflater$1;
.super Ljava/lang/Object;
.source "InjectionLayoutInflater.java"

# interfaces
.implements Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/base/InjectionLayoutInflater;->getViewOnClickListenerInjector(Landroid/view/View$OnClickListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$clickListener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 203
    iput-object p1, p0, Landroids/base/InjectionLayoutInflater$1;->val$clickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 206
    sget-object p2, Lcom/kukugtu/moduleplotting/R$styleable;->View:[I

    invoke-virtual {p1, p4, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 207
    sget p2, Lcom/kukugtu/moduleplotting/R$styleable;->View_injectListener:I

    const/4 p4, 0x0

    invoke-virtual {p1, p2, p4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 208
    iget-object p2, p0, Landroids/base/InjectionLayoutInflater$1;->val$clickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-object p3
.end method
