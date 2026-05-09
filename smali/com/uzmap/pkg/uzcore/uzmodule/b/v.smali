.class public Lcom/uzmap/pkg/uzcore/uzmodule/b/v;
.super Lcom/uzmap/pkg/uzcore/uzmodule/b/b;


# static fields
.field static ad:I

.field public static final v:I


# instance fields
.field public A:Z

.field public B:Z

.field public C:Z

.field public D:Z

.field public E:Z

.field public F:Z

.field public G:Ljava/lang/String;

.field public H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

.field public I:Z

.field public J:Z

.field public K:Z

.field public L:Z

.field public M:I

.field public N:Ljava/lang/String;

.field public O:Ljava/lang/String;

.field public P:Lcom/uzmap/pkg/uzcore/ad;

.field public Q:Lcom/deepe/c/i/t;

.field public R:I

.field public S:I

.field public T:Z

.field public U:Z

.field public V:Z

.field public W:Ljava/lang/String;

.field public X:Ljava/lang/String;

.field public Y:Z

.field public Z:Ljava/lang/Integer;

.field public aa:Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

.field public ab:Z

.field public ac:Z

.field public w:Ljava/lang/String;

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v1, 0x30

    const/16 v2, 0x18

    if-lt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v2, 0x15

    if-lt v0, v2, :cond_1

    const/16 v1, 0x64

    goto :goto_0

    :cond_1
    sget v0, Lcom/uzmap/pkg/b/a/b;->a:I

    const/16 v2, 0xe

    if-lt v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    :goto_0
    sput v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->v:I

    const/4 v0, 0x0

    sput v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ad:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/b;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->K:Z

    const/4 p1, 0x2

    iput p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->S:I

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Y:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ab:Z

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/uzmap/pkg/uzcore/a/d;Z)V
    .locals 0

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->parse(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;Lcom/uzmap/pkg/uzcore/a/d;Z)V

    return-void
.end method

.method private a()V
    .locals 5

    invoke-virtual {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->empty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->w:Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "url"

    invoke-virtual {p0, v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    const-string v1, "data"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->y:Ljava/lang/String;

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/f;

    const-string v2, "pageParam"

    invoke-virtual {p0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/f;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    const/4 v1, 0x0

    const-string v2, "bounces"

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->A:Z

    const/4 v2, 0x1

    const-string v3, "opaque"

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->B:Z

    const-string v3, "hidden"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->z:Z

    const-string v3, "forceShow"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->U:Z

    const-string v3, "traceing"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->V:Z

    const-string v3, "navigateToOpen"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ab:Z

    const-string v3, "reload"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->L:Z

    const-string v3, "scaleEnabled"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->C:Z

    const-string v3, "allowAccessFromFile"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->D:Z

    sget v3, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->v:I

    const-string v4, "delay"

    invoke-virtual {p0, v4, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->M:I

    const-string v3, "tablayout"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    const-string v3, "avm"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Y:Z

    const-string v3, "singleInstance"

    invoke-virtual {p0, v3, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->T:Z

    const-string v3, "softInputMode"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/deepe/c/a/i;->a(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->R:I

    const-string v3, "bgColor"

    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, "bg"

    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    :cond_1
    const-string v3, "colorEdgeEffect"

    invoke-virtual {p0, v3, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {v3}, Lcom/deepe/c/i/e;->e(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput-object v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Z:Ljava/lang/Integer;

    :cond_2
    const-string v3, "overScrollMode"

    invoke-virtual {p0, v3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Lcom/uzmap/pkg/uzcore/uzmodule/a/b;->a(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->S:I

    const-string v3, "vScrollBarEnabled"

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    const-string v3, "hScrollBarEnabled"

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    const-string v3, "statusBarAppearance"

    invoke-virtual {p0, v3, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->K:Z

    const-string v2, "allowEdit"

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->E:Z

    const-string v2, "scrollToTop"

    invoke-virtual {p0, v2, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->F:Z

    const-string v2, "customRefreshHeader"

    invoke-virtual {p0, v2, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->N:Ljava/lang/String;

    const-string v0, "defaultRefreshHeader"

    const-string v2, "pull"

    invoke-virtual {p0, v0, v2}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->O:Ljava/lang/String;

    const-string v0, "showProgress"

    invoke-virtual {p0, v0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "progress"

    invoke-virtual {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uzmap/pkg/uzcore/ad;->a(ZLcom/uzmap/pkg/uzcore/uzmodule/b;)Lcom/uzmap/pkg/uzcore/ad;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->P:Lcom/uzmap/pkg/uzcore/ad;

    const-string v0, "headers"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/deepe/c/i/j;->a(Lorg/json/JSONObject;)Lcom/deepe/c/i/t;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Q:Lcom/deepe/c/i/t;

    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->optJSONContext(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/b;

    move-result-object v0

    if-eqz v0, :cond_3

    new-instance v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    invoke-direct {v1, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/g;-><init>(Lcom/uzmap/pkg/uzcore/uzmodule/b;)V

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->aa:Lcom/uzmap/pkg/uzcore/uzmodule/b/g;

    :cond_3
    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "?"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->b(Ljava/lang/String;)Lcom/uzmap/pkg/uzcore/uzmodule/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    :cond_0
    return-void
.end method

.method private b()V
    .locals 3

    const-string v0, ".js"

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->a(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/deepe/c/i/x;->s(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file://"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    :cond_1
    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->extension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/e/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/uzmap/pkg/uzcore/UZCoreUtil;->exists(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method

.method public static l()Ljava/lang/String;
    .locals 2

    sget v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ad:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ad:I

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "emptyNameWin_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/uzmap/pkg/uzcore/b/d;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/c/i/e;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/uzmap/pkg/b/c/c;->b(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->makeRealPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/uzmap/pkg/b/c/c;->a(Ljava/lang/String;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1

    :cond_1
    invoke-static {v0}, Lcom/uzmap/pkg/b/c/c;->a(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method public final a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/f;->a(Lcom/uzmap/pkg/uzcore/uzmodule/f;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->H:Lcom/uzmap/pkg/uzcore/uzmodule/f;

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/uzmap/pkg/uzcore/ad;->b()Lcom/uzmap/pkg/uzcore/ad;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/uzmap/pkg/uzcore/ad;->c()Lcom/uzmap/pkg/uzcore/ad;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->P:Lcom/uzmap/pkg/uzcore/ad;

    return-void
.end method

.method public a(ZLjava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/x;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/n;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    const-string v1, "url"

    if-nez p1, :cond_1

    invoke-virtual {p0, v0, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-direct {p0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->b()V

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-static {}, Lcom/uzmap/pkg/uzcore/e/d;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    :try_start_0
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void

    :cond_3
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-virtual {p0, p1, p3}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->makeRealPath(Ljava/lang/String;Lcom/uzmap/pkg/uzkit/data/UZWidgetInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {p1}, Lcom/uzmap/pkg/uzcore/e/d;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->N:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->N:Ljava/lang/String;

    return-object p1

    :cond_0
    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->O:Ljava/lang/String;

    invoke-static {p1}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->O:Ljava/lang/String;

    const-string v0, "swipe"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "api-swipe"

    iput-object p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->O:Ljava/lang/String;

    return-object p1

    :cond_2
    const-string p1, "pull"

    return-object p1
.end method

.method public b(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->ac:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v0, "tablayout"

    invoke-virtual {p0, v0, p1}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->set(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)Z
    .locals 1

    const-string v0, "avm"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->Y:Z

    :cond_0
    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/n;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_2

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method

.method public d(Z)Z
    .locals 1

    const-string v0, "hScrollBarEnabled"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->J:Z

    :cond_0
    return p1
.end method

.method public e(Z)Z
    .locals 1

    const-string v0, "vScrollBarEnabled"

    invoke-virtual {p0, v0}, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean p1, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->I:Z

    :cond_0
    return p1
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->x:Ljava/lang/String;

    return-object v0
.end method

.method public j()Z
    .locals 1

    iget v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->R:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public k()Z
    .locals 1

    iget-object v0, p0, Lcom/uzmap/pkg/uzcore/uzmodule/b/v;->G:Ljava/lang/String;

    invoke-static {v0}, Lcom/deepe/c/i/e;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
