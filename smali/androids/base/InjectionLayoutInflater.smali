.class public Landroids/base/InjectionLayoutInflater;
.super Landroid/view/LayoutInflater;
.source "InjectionLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
    }
.end annotation


# static fields
.field private static final WEAK_HASH_MAP:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/content/Context;",
            "Landroids/base/InjectionLayoutInflater;",
            ">;"
        }
    .end annotation
.end field

.field private static final sClassPrefixList:[Ljava/lang/String;


# instance fields
.field private mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "android.widget."

    const-string v1, "android.webkit."

    const-string v2, "android.app."

    .line 25
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroids/base/InjectionLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    .line 31
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Landroids/base/InjectionLayoutInflater;->WEAK_HASH_MAP:Ljava/util/WeakHashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Landroid/view/LayoutInflater;-><init>(Landroid/content/Context;)V

    .line 37
    invoke-virtual {p0, p0}, Landroids/base/InjectionLayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void
.end method

.method protected constructor <init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Landroid/view/LayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 42
    invoke-virtual {p0, p0}, Landroids/base/InjectionLayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void
.end method

.method public static from(Landroid/content/Context;)Landroids/base/InjectionLayoutInflater;
    .locals 2

    .line 46
    sget-object v0, Landroids/base/InjectionLayoutInflater;->WEAK_HASH_MAP:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroids/base/InjectionLayoutInflater;

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroids/base/InjectionLayoutInflater;

    invoke-direct {v0, p0}, Landroids/base/InjectionLayoutInflater;-><init>(Landroid/content/Context;)V

    .line 49
    sget-object v1, Landroids/base/InjectionLayoutInflater;->WEAK_HASH_MAP:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static from(Landroid/content/Context;Landroid/view/LayoutInflater;)Landroids/base/InjectionLayoutInflater;
    .locals 1

    .line 55
    sget-object v0, Landroids/base/InjectionLayoutInflater;->WEAK_HASH_MAP:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroids/base/InjectionLayoutInflater;

    if-nez v0, :cond_0

    .line 57
    new-instance v0, Landroids/base/InjectionLayoutInflater;

    invoke-direct {v0, p1, p0}, Landroids/base/InjectionLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    .line 58
    sget-object p1, Landroids/base/InjectionLayoutInflater;->WEAK_HASH_MAP:Ljava/util/WeakHashMap;

    invoke-virtual {p1, p0, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getViewInjector(Ljava/lang/Object;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_0
    new-instance v0, Landroids/base/InjectionLayoutInflater$2;

    invoke-direct {v0, p0}, Landroids/base/InjectionLayoutInflater$2;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static getViewOnClickListenerInjector(Landroid/view/View$OnClickListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 203
    :cond_0
    new-instance v0, Landroids/base/InjectionLayoutInflater$1;

    invoke-direct {v0, p0}, Landroids/base/InjectionLayoutInflater$1;-><init>(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public static varargs merge([Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_0
    new-instance v0, Landroids/base/InjectionLayoutInflater$3;

    invoke-direct {v0, p0}, Landroids/base/InjectionLayoutInflater$3;-><init>([Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)V

    return-object v0
.end method


# virtual methods
.method public cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;
    .locals 1

    .line 66
    new-instance v0, Landroids/base/InjectionLayoutInflater;

    invoke-direct {v0, p0, p1}, Landroids/base/InjectionLayoutInflater;-><init>(Landroid/view/LayoutInflater;Landroid/content/Context;)V

    return-object v0
.end method

.method public inflate(ILandroid/view/ViewGroup;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0

    .line 84
    iput-object p3, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 85
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 86
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method public inflate(ILandroid/view/ViewGroup;ZLandroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0

    .line 91
    iput-object p4, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 92
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 93
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0

    .line 77
    iput-object p3, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 78
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 79
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method public inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;ZLandroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0

    .line 70
    iput-object p4, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 71
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 72
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    invoke-super {p0, p1, p2, p3}, Landroid/view/LayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    .line 135
    iget-object v0, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Landroids/base/InjectionLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2, p3}, Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    return-object p2
.end method

.method protected onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 119
    iput-object p4, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 120
    invoke-virtual {p0, p1, p2, p3}, Landroids/base/InjectionLayoutInflater;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 121
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .line 181
    :try_start_0
    invoke-virtual {p0, p1, p3}, Landroids/base/InjectionLayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    .line 183
    new-instance v0, Landroid/view/InflateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p3}, Landroid/util/AttributeSet;->getPositionDescription()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": Error inflating class "

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-virtual {v0, p2}, Landroid/view/InflateException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 186
    throw v0
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    const/16 v0, 0x2e

    .line 145
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v2, v0, :cond_1

    .line 146
    sget-object v0, Landroids/base/InjectionLayoutInflater;->sClassPrefixList:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move-object v4, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 148
    :try_start_0
    invoke-virtual {p0, p1, v5, p2}, Landroids/base/InjectionLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_0

    goto :goto_1

    :catch_0
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p0, p1, v1, p2}, Landroids/base/InjectionLayoutInflater;->createView(Ljava/lang/String;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    :cond_2
    :goto_1
    if-nez v4, :cond_3

    .line 160
    invoke-super {p0, p1, p2}, Landroid/view/LayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    .line 162
    :cond_3
    iget-object p1, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    if-eqz p1, :cond_4

    .line 163
    invoke-virtual {p0}, Landroids/base/InjectionLayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-interface {p1, v0, v1, v4, p2}, Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;->onViewCreated(Landroid/content/Context;Landroid/view/View;Landroid/view/View;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_4
    return-object v4
.end method

.method protected onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 126
    iput-object p3, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    .line 127
    invoke-virtual {p0, p1, p2}, Landroids/base/InjectionLayoutInflater;->onCreateView(Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    const/4 p2, 0x0

    .line 128
    iput-object p2, p0, Landroids/base/InjectionLayoutInflater;->mOnViewCreatedListener:Landroids/base/InjectionLayoutInflater$OnViewCreatedListener;

    return-object p1
.end method

.method public setFactory(Landroid/view/LayoutInflater$Factory;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory(Landroid/view/LayoutInflater$Factory;)V

    return-void
.end method

.method public setFactory2(Landroid/view/LayoutInflater$Factory2;)V
    .locals 0

    .line 170
    invoke-super {p0, p1}, Landroid/view/LayoutInflater;->setFactory2(Landroid/view/LayoutInflater$Factory2;)V

    return-void
.end method
