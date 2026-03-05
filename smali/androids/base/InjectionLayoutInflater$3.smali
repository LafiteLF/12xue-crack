.class final Landroids/base/InjectionLayoutInflater$3;
.super Ljava/lang/Object;
.source "InjectionLayoutInflater.java"

# interfaces
.implements Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroids/base/InjectionLayoutInflater;->merge([Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listeners:[Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# direct methods
.method constructor <init>([Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)V
    .locals 0

    .line 238
    iput-object p1, p0, Landroids/base/InjectionLayoutInflater$3;->val$listeners:[Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 4

    .line 241
    iget-object v0, p0, Landroids/base/InjectionLayoutInflater$3;->val$listeners:[Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 242
    invoke-interface {v3, p1, p2, p3, p4}, Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object p3
.end method
