.class public Landroids/base/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# instance fields
.field private mCanViewInjected:Z

.field protected mPrefer:Landroid/content/SharedPreferences;

.field private mViewClickListenerInjector:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x1

    .line 21
    iput-boolean v0, p0, Landroids/base/BaseActivity;->mCanViewInjected:Z

    return-void
.end method


# virtual methods
.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .line 95
    iget-object v0, p0, Landroids/base/BaseActivity;->mPrefer:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method public isCanViewInjected()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Landroids/base/BaseActivity;->mCanViewInjected:Z

    return v0
.end method

.method public isRestricted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 43
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 37
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1

    .line 73
    iget-boolean v0, p0, Landroids/base/BaseActivity;->mCanViewInjected:Z

    if-nez v0, :cond_0

    return-object p3

    .line 76
    :cond_0
    iget-object v0, p0, Landroids/base/BaseActivity;->mViewClickListenerInjector:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    invoke-interface {v0, p1, p2, p3, p4}, Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public saveBoolean(Ljava/lang/String;Z)V
    .locals 1

    .line 107
    iget-object v0, p0, Landroids/base/BaseActivity;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 108
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 109
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveLong(Ljava/lang/String;J)V
    .locals 1

    .line 119
    iget-object v0, p0, Landroids/base/BaseActivity;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 120
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 121
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 113
    iget-object v0, p0, Landroids/base/BaseActivity;->mPrefer:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 114
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setCanViewInjected(Z)V
    .locals 1

    const v0, 0x1020002

    .line 80
    invoke-virtual {p0, v0}, Landroids/base/BaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 83
    iput-boolean p1, p0, Landroids/base/BaseActivity;->mCanViewInjected:Z

    return-void

    .line 81
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u5fc5\u987b\u5728setContentView\u4e4b\u524d\u8c03\u7528"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setContentView(I)V
    .locals 2

    .line 64
    iget-object v0, p0, Landroids/base/BaseActivity;->mViewClickListenerInjector:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    if-nez v0, :cond_0

    .line 65
    invoke-static {p0}, Landroids/base/InjectionLayoutInflater;->getViewOnClickListenerInjector(Landroid/view/View$OnClickListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    move-result-object v0

    iput-object v0, p0, Landroids/base/BaseActivity;->mViewClickListenerInjector:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 67
    :cond_0
    invoke-static {p0}, Landroids/base/InjectionLayoutInflater;->from(Landroid/content/Context;)Landroids/base/InjectionLayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroids/base/InjectionLayoutInflater;->inflate(ILandroid/view/ViewGroup;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;

    move-result-object p1

    .line 68
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setFullScreen(Z)V
    .locals 1

    const/16 v0, 0x400

    if-eqz p1, :cond_0

    .line 135
    invoke-virtual {p0}, Landroids/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroids/base/BaseActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :goto_0
    return-void
.end method

.method public setSharedPreferences(Landroid/content/SharedPreferences;)V
    .locals 0

    .line 91
    iput-object p1, p0, Landroids/base/BaseActivity;->mPrefer:Landroid/content/SharedPreferences;

    return-void
.end method

.method public showToast(I)V
    .locals 1

    const/4 v0, 0x0

    .line 103
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 99
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public startActivity(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroids/base/BaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroids/base/BaseActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
