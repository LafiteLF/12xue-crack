.class final Landroids/base/InjectionLayoutInflater$2;
.super Ljava/lang/Object;
.source "InjectionLayoutInflater.java"

# interfaces
.implements Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/base/InjectionLayoutInflater;->getViewInjector(Ljava/lang/Object;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$object:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 225
    iput-object p1, p0, Landroids/base/InjectionLayoutInflater$2;->val$object:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 228
    iget-object p1, p0, Landroids/base/InjectionLayoutInflater$2;->val$object:Ljava/lang/Object;

    invoke-static {p1, p3}, Landroids/annotation/ViewInjectProcessor;->process(Ljava/lang/Object;Landroid/view/View;)V

    return-object p3
.end method
