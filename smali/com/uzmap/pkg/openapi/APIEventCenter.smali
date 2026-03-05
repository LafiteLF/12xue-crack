.class public final Lcom/uzmap/pkg/openapi/APIEventCenter;
.super Ljava/lang/Object;


# static fields
.field private static b:Lcom/uzmap/pkg/openapi/APIEventCenter;


# instance fields
.field a:Landroid/content/Context;

.field private c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/Html5EventListener;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/uzmap/pkg/openapi/APIEventCenter;->c:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/uzmap/pkg/openapi/APIEventCenter;->a:Landroid/content/Context;

    return-void
.end method

.method private final addH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->eventListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private eventListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/Html5EventListener;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->toStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/uzmap/pkg/openapi/APIEventCenter;->c:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/uzmap/pkg/openapi/APIEventCenter;->c:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static get()Lcom/uzmap/pkg/openapi/APIEventCenter;
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/openapi/APIEventCenter;->b:Lcom/uzmap/pkg/openapi/APIEventCenter;

    return-object v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 1

    sget-object v0, Lcom/uzmap/pkg/openapi/APIEventCenter;->b:Lcom/uzmap/pkg/openapi/APIEventCenter;

    if-nez v0, :cond_0

    new-instance v0, Lcom/uzmap/pkg/openapi/APIEventCenter;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/uzmap/pkg/openapi/APIEventCenter;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/uzmap/pkg/openapi/APIEventCenter;->b:Lcom/uzmap/pkg/openapi/APIEventCenter;

    :cond_0
    return-void
.end method

.method private final removeH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->toStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/openapi/APIEventCenter;->c:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->eventListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method private final sendEventToH5(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "APIEventCenter sendEventToH5 activity is null\uff01"

    invoke-static {p1}, Lcom/deepe/d/a;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e;->b(Landroid/content/Context;)Lcom/uzmap/pkg/uzcore/e;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p2, Lcom/uzmap/pkg/openapi/EventEntity;->name:Ljava/lang/String;

    iget-object p2, p2, Lcom/uzmap/pkg/openapi/EventEntity;->extra:Lorg/json/JSONObject;

    invoke-virtual {p1, v0, p2}, Lcom/uzmap/pkg/uzcore/e;->a(Ljava/lang/String;Lorg/json/JSONObject;)V

    :cond_1
    return-void
.end method

.method private toStr(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->activityToStr(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final addHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/openapi/APIEventCenter;->addH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    :cond_0
    return-void
.end method

.method public final addHtml5EventListener(Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->addH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    :cond_0
    return-void
.end method

.method public getEventListeners(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/uzmap/pkg/openapi/Html5EventListener;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/uzmap/pkg/openapi/APIEventCenter;->eventListeners(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public final removeAllHtml5EventListener(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final removeHtml5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/openapi/APIEventCenter;->removeH5EventListener(Landroid/content/Context;Lcom/uzmap/pkg/openapi/Html5EventListener;)V

    return-void
.end method

.method public final sendEvent(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/uzmap/pkg/openapi/APIEventCenter;->sendEventToHtml5(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V

    return-void
.end method

.method public final sendEventToHtml5(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/uzmap/pkg/openapi/APIEventCenter;->sendEventToH5(Landroid/content/Context;Lcom/uzmap/pkg/openapi/EventEntity;)V

    return-void
.end method
